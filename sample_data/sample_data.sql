-- Sample data for country table
INSERT INTO `mydb`.`country` (`country_name`, `country_code`) VALUES
('United States', 1),
('United Kingdom', 44),
('Canada', 1),
('Australia', 61);

-- Sample data for state table
INSERT INTO `mydb`.`state` (`name`) VALUES
('California'),
('New York'),
('Texas'),
('Florida');

-- Sample data for city table
INSERT INTO `mydb`.`city` (`name`, `state`) VALUES
('Los Angeles', 1),
('New York City', 2),
('Houston', 3),
('Miami', 4);

-- Sample data for neighborhood table
INSERT INTO `mydb`.`neighborhood` (`name`, `city`, `geographicalBoundaries`) VALUES
('Hollywood', 1, 'Coordinates...'),
('Manhattan', 2, 'Coordinates...'),
('Downtown', 3, 'Coordinates...'),
('South Beach', 4, 'Coordinates...');

-- Sample data for address table
INSERT INTO `mydb`.`address` (`street`, `country`, `zip`, `neighborhood`) VALUES
('123 Main St', 1, 90001, 1),
('456 Elm St', 2, 10001, 2),
('789 Oak St', 3, 77001, 3),
('101 Pine St', 4, 33139, 4);

-- Sample data for districtDesignationLookup table
INSERT INTO `mydb`.`districtDesignationLookup` (`name`) VALUES
('Urban'),
('Suburban'),
('Rural');

-- Sample data for district table
INSERT INTO `mydb`.`district` (`district_number`, `neighborhood`, `designation_id`, `population`, `total_reg_voters`, `geographical_boundary_id`) VALUES
(1, 1, 1, 10000, 7000, 1),
(2, 2, 2, 15000, 10000, 2),
(3, 3, 3, 8000, 5000, 3),
(4, 4, 1, 12000, 8000, 4);

-- Sample data for election_type table
INSERT INTO `mydb`.`election_type` (`name`) VALUES
('Presidential'),
('Congressional'),
('Mayoral'),
('Local Council');

-- Sample data for election table
INSERT INTO `mydb`.`election` (`dateOfElection`, `type`) VALUES
('2024-11-03', 1),
('2024-11-03', 2),
('2025-05-05', 3),
('2025-05-05', 4);

-- Sample data for voter table
INSERT INTO `mydb`.`voter` (`idvoter`, `registrationID`, `registrationDate`) VALUES
(1, 'REG001', '2023-01-15'),
(2, 'REG002', '2023-02-20'),
(3, 'REG003', '2023-03-25'),
(4, 'REG004', '2023-04-30');

-- Sample data for voterRegistered table
-- Assuming we have 4 voters with IDs 1 to 4
-- Sample data for when voters were registered
INSERT INTO `mydb`.`voterRegistered` (`voter`, `date`) VALUES
(1, '2023-01-15'),
(2, '2023-02-20'),
(3, '2023-03-25'),
(4, '2023-04-30');

-- Sample data for deviceMake table
INSERT INTO `mydb`.`deviceMake` (`name`) VALUES
('Apple'),
('Samsung'),
('Google'),
('Microsoft');

-- Sample data for deviceModel table
INSERT INTO `mydb`.`deviceModel` (`name`, `deviceMake`) VALUES
('iPhone 12', 1),
('Galaxy S20', 2),
('Pixel 5', 3),
('Surface Pro 7', 4);

-- Sample data for device table
INSERT INTO `mydb`.`device` (`deviceModel`, `ipaddress`) VALUES
(1, '192.168.1.100'),
(2, '192.168.1.101'),
(3, '192.168.1.102'),
(4, '192.168.1.103');

-- Sample data for device_event_log table
-- Assuming we have 4 devices with IDs 1 to 4 and 4 event types with IDs 1 to 4
-- Sample data for device event logs
INSERT INTO `mydb`.`device_event_log` (`device_id`, `event_time`, `ip_address_id`, `event_type_id`) VALUES
(1, '2024-03-12 09:00:00', 1, 1),
(2, '2024-03-12 10:00:00', 2, 2),
(3, '2024-03-12 11:00:00', 3, 3),
(4, '2024-03-12 12:00:00', 4, 4);

-- Sample data for ballot table
INSERT INTO `mydb`.`ballot` (`election`, `district`) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4);

-- Sample data for voterBallot table
INSERT INTO `mydb`.`voterBallot` (`ballot`, `voter`, `submissionDate`, `status`, `device`) VALUES
(1, 1, '2024-11-03 10:00:00', 'Accepted', 1),
(1, 2, '2024-11-03 10:05:00', 'Rejected', 2),
(2, 3, '2024-11-03 10:10:00', 'Unsubmitted', 3),
(2, 4, '2024-11-03 10:15:00', 'Accepted', 4);

-- Sample data for ballotSubmitted table
-- Assuming we have 2 ballots with IDs 1 and 2
-- Sample data for when ballots were submitted
INSERT INTO `mydb`.`ballotSubmitted` (`voterBallot`, `date`) VALUES
(1, '2024-11-03 10:30:00'),
(2, '2024-11-03 10:35:00');

-- Sample data for contest table
INSERT INTO `mydb`.`contest` (`ballot`) VALUES
(1),
(2);

-- Sample data for measure table
INSERT INTO `mydb`.`measure` (`idballot`) VALUES
(1),
(2);

-- Sample data for ballotMeasureOption table
-- Assuming we have three measure options for a particular measure
INSERT INTO `mydb`.`ballotMeasureOption` (`option_value`, `measure_id`, `total_votes`) VALUES
('Yes', 1, 100),
('No', 1, 150),
('Rejected', 2, 150),
('Approved', 2, 200);

-- Sample data for candidate table
INSERT INTO `mydb`.`candidate` (`person`, `district`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);

-- Sample data for position table
INSERT INTO `mydb`.`position` (`position_name`, `term_limit`) VALUES
('President', 4),
('Senator', 6),
('Governor', 4);

-- Sample data for contestCandidate table
-- Assuming we have three contests and three positions
INSERT INTO `mydb`.`contestCandidate` (`contest_id`, `position_id`, `total_votes`) VALUES
(1, 1, 500),
(2, 2, 700),
(3, 3, 900);

-- Sample data for officeHeld table
-- Assuming we have three positions, three candidates, three parties, three districts, and start/end dates
INSERT INTO `mydb`.`officeHeld` (`position_id`, `candidate_id`, `party_id`, `start_date`, `end_date`, `district_id`) VALUES
(1, 1, 1, '2020-01-01', '2024-01-01', 1),
(2, 2, 2, '2020-01-01', '2026-01-01', 2),
(3, 3, 3, '2020-01-01', '2024-01-01', 3);

-- Sample data for party table
INSERT INTO `mydb`.`party` (`name`) VALUES
('Democratic Party'),
('Republican Party'),
('Green Party'),
('Libertarian Party');

-- Sample data for person table
INSERT INTO `mydb`.`person` (`firstName`, `lastName`, `DOB`, `occupation_status`, `voter_id`) VALUES
('John', 'Doe', '1990-05-15', 1, 123456),
('Jane', 'Smith', '1985-08-20', 2, 789012),
('Michael', 'Johnson', '2000-03-10', 3, NULL),
('Emily', 'Brown', '1975-11-25', 4, 345678);

-- Sample data for occupation table
-- Assuming we have 4 persons with IDs 1 to 4 and 4 occupation statuses with IDs 1 to 4
-- Sample data for occupations
INSERT INTO `mydb`.`occupation` (`person_id`, `occupation_name`, `occupation_status_id`) VALUES
(1, 'Engineer', 1),
(2, 'Teacher', 2),
(3, 'Doctor', 3),
(4, 'Lawyer', 4);

-- Sample data for gender table
INSERT INTO `mydb`.`gender` (`name`) VALUES
('Male'),
('Female'),
('Non-Binary'),
('Trans Male'),
('Trans Female'),
('Other');

-- Sample data for personGender table
-- Assuming we have 4 persons with IDs 1 to 4, and 3 genders with IDs 1 to 3
-- Sample data to associate genders with persons
INSERT INTO `mydb`.`personGender` (`person`, `gender`) VALUES
(1, 1), -- John Doe is Male
(2, 2), -- Jane Smith is Female
(3, 3), -- Michael Johnson is Non-binary
(5, 2); -- Emily Brown is Trans Female

-- Sample data for degree table
INSERT INTO `mydb`.`degree` (`degree_name`) VALUES
('Bachelors'),
('Masters'),
('Ph.D.'),
('Associates');

-- Sample data for person_edu_degree table
-- Assuming we have 4 persons with IDs 1 to 4, and 4 degrees with IDs 1 to 4
-- Sample data for education degrees of persons
INSERT INTO `mydb`.`person_edu_degree` (`degree`, `completion_date`, `person_id`) VALUES
(1, '2010-05-30', 1), -- John Doe completed Bachelor's in 2010
(2, '2012-08-25', 2), -- Jane Smith completed Master's in 2012
(3, '2015-12-20', 3), -- Michael Johnson completed Ph.D. in 2015
(4, '2008-04-15', 4); -- Emily Brown completed Associate's in 2008

-- Sample data for gender_lookup table
-- Assuming we have 3 genders with IDs 1 to 3
-- Sample data for gender lookup
INSERT INTO `mydb`.`gender_lookup` (`gender_id`, `gender_abbr`) VALUES
(1, 'M'), -- Male
(2, 'F'), -- Female
(3, 'NB'), -- Non-binary
(4, 'TM'); -- Trans Male
(5, 'TF'); -- Trans Female
(6, 'O'); -- Other

-- Sample data for email table
-- Assuming we have 4 persons with IDs 1 to 4
-- Sample data for email addresses of persons
INSERT INTO `mydb`.`email` (`person_id`, `email_address`) VALUES
(1, 'john.doe@example.com'),
(2, 'jane.smith@example.com'),
(3, 'michael.johnson@example.com'),
(4, 'emily.brown@example.com');

-- Sample data for phone table
-- Assuming we have 4 persons with IDs 1 to 4
-- Sample data for phone numbers associated with persons
INSERT INTO `mydb`.`phone` (`person_id`, `country_code`, `phone_num`) VALUES
(1, 1, 1234567890),
(2, 1, 2345678901),
(3, 1, 3456789012),
(4, 1, 4567890123);

-- Sample data for event_type table
-- TODO: Change to social media events
INSERT INTO `mydb`.`event_type` (`event_name`) VALUES
('Meeting'),
('Conference'),
('Seminar'),
('Workshop');

-- Sample data for location table
-- Assuming we have 4 social accounts with IDs 1 to 4 and 4 cities with IDs 1 to 4
-- Sample data for locations associated with social accounts
-- TODO: figure out what this table is for
INSERT INTO `mydb`.`location` (`location_name`, `social_account_id`, `city_id`) VALUES
('Starbucks', 1, 1),
('Central Park', 2, 2),
('Googleplex', 3, 3),
('Microsoft Campus', 4, 4);

-- Sample data for product table
INSERT INTO `mydb`.`product` (`name`, `price`, `recurring`) VALUES
('Product A', '100', 0),
('Product B', '200', 1),
('Product C', '150', 0),
('Product D', '300', 1);

-- Sample data for purchase table
-- Assuming we have 4 social accounts with IDs 1 to 4
-- Sample data for purchases
INSERT INTO `mydb`.`purchase` (`event_time`, `seller_acc_id`, `buyer_acc_id`) VALUES
('2024-03-12 09:30:00', 1, 2),
('2024-03-12 10:30:00', 2, 3),
('2024-03-12 11:30:00', 3, 4),
('2024-03-12 12:30:00', 4, 1);

-- Sample data for purchase_products table
-- Assuming we have 4 products with IDs 1 to 4 and 4 purchases with IDs 1 to 4
-- Sample data for products purchased in purchases
INSERT INTO `mydb`.`purchase_products` (`qty`, `product_id`, `purchase_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(1, 3, 3),
(2, 4, 4);

-- Sample data for event_nature table
-- TODO: change to social media event
INSERT INTO `mydb`.`event_nature` (`event_nature_name`) VALUES
('Social Gathering'),
('Political Rally'),
('Conference'),
('Protest');

-- Sample data for social_event table
-- Assuming we have 4 social accounts with IDs 1 to 4, 4 event types with IDs 1 to 4, and 4 event natures with IDs 1 to 4
-- Sample data for social events
-- TODO: change to social media events
INSERT INTO `mydb`.`social_event` (`account_id`, `content`, `event_time`, `event_type_id`, `event_nature_id`) VALUES
(1, 'Enjoying the party!', '2024-03-12 18:00:00', 1, 1),
(2, 'Supporting the candidate!', '2024-03-13 10:00:00', 2, 2),
(3, 'Discussing important issues.', '2024-03-14 14:00:00', 3, 3),
(4, 'Protesting against injustice!', '2024-03-15 12:00:00', 4, 4);

-- Sample data for social_platform table
INSERT INTO `mydb`.`social_platform` (`name`) VALUES
('Facebook'),
('Twitter'),
('Instagram'),
('LinkedIn');

-- Sample data for social_account table
-- Assuming we have 4 persons with IDs 1 to 4 and 4 social platforms with IDs 1 to 4
-- Sample data for social accounts
INSERT INTO `mydb`.`social_account` (`username`, `person_id`, `social_platform_id`, `SMUID`) VALUES
('john_doe123', 1, 1, 123),
('jane_smith456', 2, 2, 456),
('michael_johnson789', 3, 3, 789),
('emily_brown012', 4, 4, 012);

-- Sample data for hashtags table
INSERT INTO `mydb`.`hashtags` (`hashtag_name`) VALUES
('#politics'),
('#socialjustice'),
('#environment'),
('#education');

-- Sample data for political_party table
INSERT INTO `mydb`.`political_party` (`party_name`) VALUES
('Democrat'),
('Republican'),
('Independent'),
('Green Party');
-- Sample data for political_affiliation_lookup table
-- Assuming we have 4 political parties with IDs 1 to 4
-- Sample data for political affiliations
INSERT INTO `mydb`.`political_affiliation_lookup` (`political_party_id`) VALUES
(1),
(2),
(3),
(4);

-- Sample data for view_intensity_lookup table
INSERT INTO `mydb`.`view_intensity_lookup` (`intensity_nickname`) VALUES
('Low'),
('Moderate'),
('High'),
('Very High');

-- Sample data for religion table
INSERT INTO `mydb`.`religion` (`religion_name`) VALUES
('Christianity'),
('Islam'),
('Buddhism'),
('Judaism');

-- Sample data for religious_affiliation_lookup table
-- Assuming we have 4 religions with IDs 1 to 4
INSERT INTO `mydb`.`religious_affiliation_lookup` (`religion_id`) VALUES
(1),
(2),
(3),
(4);

-- Sample data for social_issue table
INSERT INTO `mydb`.`social_issue` (`social_issue_name`) VALUES
('Poverty'),
('Climate Change'),
('Education'),
('Healthcare');

-- Sample data for social_issue_lookup table
-- Assuming we have 4 social issues with IDs 1 to 4
INSERT INTO `mydb`.`social_issue_lookup` (`social_issue_id`) VALUES
(1),
(2),
(3),
(4);

-- Sample data for social_mate_preference_lookup table
-- Assuming we have three attributes: Age, Education, and Religion
INSERT INTO `mydb`.`social_mate_preference_lookup` (`person_id`, `smp_attribute`, `preference`) VALUES
(1, 'Age', '25-30'),
(1, 'Education', 'Bachelors Degree'),
(1, 'Religion', 'Christianity');

-- Sample data for advertisement table
INSERT INTO `mydb`.`advertisement` (`advertisement_name`) VALUES
('Ad1'),
('Ad2'),
('Ad3');

-- Sample data for ad_clicked table
-- Assuming we have three social accounts and three advertisements
INSERT INTO `mydb`.`ad_clicked` (`advertisement_id`, `social_account_id`, `event_time`) VALUES
(1, 1, '2024-03-11 08:00:00'),
(2, 2, '2024-03-12 09:00:00'),
(3, 3, '2024-03-13 10:00:00');

-- Sample data for social_action table
-- Assuming we have three social accounts, three social events, and three event types
INSERT INTO `mydb`.`social_action` (`social_account_id`, `social_event_id`, `event_type_id`, `content`, `event_time`) VALUES
(1, 1, 1, 'Content1', '2024-03-11 08:00:00'),
(2, 2, 2, 'Content2', '2024-03-12 09:00:00'),
(3, 3, 3, 'Content3', '2024-03-13 10:00:00');

-- Sample data for event_tag table
-- Assuming we have three social events and three hashtags
INSERT INTO `mydb`.`event_tag` (`social_event_id`, `hashtag_id`) VALUES
(1, 1),
(2, 2),
(3, 3);