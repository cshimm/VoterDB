// Require the MongoDB Node.js driver
import { MongoClient, ObjectId } from 'mongodb'
import dotenv from 'dotenv'
dotenv.config({path:'../.env'})
// MongoDB connection URI
const uri = process.env.MONGO_URI
// Database name
const dbName = process.env.DB_NAME

// Function to migrate embedded objects from one collection to another
async function migrateEmbeddedObjects(sourceCollectionName, destinationCollectionName) {
    // Connect to MongoDB
    const client = new MongoClient(uri);
    try {
        await client.connect();
        const db = client.db(dbName);

        // Get all documents from the source collection
        const cursor = db.collection(sourceCollectionName).find();

        // Convert cursor to array
        const documents = await cursor.toArray();

        // Iterate through each document
        for (const document of documents) {
            // Extract embedded object
            const embeddedObject = document[destinationCollectionName]
            const query = {};
            query[destinationCollectionName + "_id"] = { $exists: true }; // Check if the key exists in the document
            const existingDocument = await db.collection(sourceCollectionName).findOne(query);
            if (existingDocument) continue
            // Insert embedded object into destination collection
            await db.collection(destinationCollectionName).insertOne(embeddedObject);

            // Update document with reference to the inserted object
            const objectId = (await db.collection(destinationCollectionName).findOne(embeddedObject))._id;
            await db.collection(sourceCollectionName).updateOne({ _id: document._id }, { $set: { [destinationCollectionName + "_id"]: objectId } });
        }

        console.log('Migration completed successfully.');
    } catch (error) {
        console.error('Error during migration:', error);
    } finally {
        // Close MongoDB connection
        await client.close();
    }
}

//Create address documents from person object
migrateEmbeddedObjects('person', 'address');
migrateEmbeddedObjects('person', 'voterInfo');

