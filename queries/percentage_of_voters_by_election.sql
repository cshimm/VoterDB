
-- Keiffer Query
-- This query will return the percentage of voters who voted in each election and ordered in ascending order.

WITH previous_query AS (
    SELECT election_id,
        COUNT(voter_info) AS votedCount
    FROM voter_ballot
    WHERE submission_date IS NOT NULL
    GROUP BY election_id
)
SELECT 
    voter_ballot.election_id,
    COUNT(voter_ballot.voter_info) AS 'Total Voters', 
    (COUNT(voter_ballot.voter_info)/votedCount*100) AS 'Percentage of Voters who voted',
    election_id
FROM voter_ballot
JOIN previous_query
    ON voter_ballot.election_id = previous_query.election_id
GROUP BY voter_ballot.election_id, previous_query.votedCount
ORDER BY 'Percentage of Voters who votes';

