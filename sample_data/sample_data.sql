-- Sample data for country table
INSERT INTO
    `voterdb`.`country` (`country_name`, `country_code`)
VALUES
    ('United States', 1),
    ('United Kingdom', 44),
    ('Canada', 1),
    ('Australia', 61);

-- Sample data for state table
INSERT INTO
    `voterdb`.`state` (`state_name`)
VALUES
    ('California'),
    ('New York'),
    ('Texas'),
    ('Florida');

-- Sample data for city table
INSERT INTO
    `voterdb`.`city` (`city_name`, `state_id`)
VALUES
    ('Los Angeles', 1),
    ('New York City', 2),
    ('Houston', 3),
    ('Miami', 4);

-- Sample data for street_type_lookup table
INSERT INTO
    `voterdb`.`street_type_lookup` (`street_type_name`)
VALUES
    ('Street'),
    ('Avenue'),
    ('Road'),
    ('Boulevard');

INSERT INTO
    `voterdb`.`street` (
        `street_id`,
        `geo_boundary_id`,
        `street_name`,
        `street_type_id`,
        `street_number_begin`,
        `street_number_end`,
        `number_is_even`,
        `city_id`
    )
VALUES
    (1, 101, 'Main', 1, '100', '200', 1, 201),
    (2, 102, 'Elm', 2, '201', '300', 0, 201),
    (3, 103, 'Oak', 3, '400', '500', 1, 202),
    (4, 104, 'Maple', 1, '301', '400', 0, 202),
    (5, 105, 'Pine', 2, '501', '600', 1, 203);

INSERT INTO
    `voterdb`.`geographical_boundary` (`geo_boundary_name`, `geographicalBoundaries`)
VALUES
    ('City', 'Urban'),
    ('County', 'Suburban'),
    ('Rural Area', 'Rural');

-- Sample data for address table
INSERT INTO
    `voterdb`.`address` (
        `person_id`,
        `street`,
        `country_id`,
        `zip_code`,
        `city_id`,
        `geo_boundary_id`
    )
VALUES
    (1, '123 Main St', 1, 10001, 1, 1),
    (2, '456 Elm St', 2, 20002, 2, 2),
    (3, '789 Oak St', 3, 30003, 3, 3),
    (4, '101 Pine St', 4, 40004, 4, 4);

-- Sample data for districtDesignationLookup table
INSERT INTO
    `voterdb`.`districtDesignationLookup` (`name`)
VALUES
    ('Urban'),
    ('Suburban'),
    ('Rural');

-- Sample data for district table
INSERT INTO
    `voterdb`.`district` (
        `district_number`,
        `geo_boundary_id`,
        `designation_id`,
        `population`,
        `total_reg_voters`
    )
VALUES
    (1, 1, 1, 10000, 8000),
    (2, 2, 2, 15000, 12000),
    (3, 3, 3, 20000, 16000),
    (4, 4, 4, 25000, 20000);

-- Sample data for election_type table
INSERT INTO
    `voterdb`.`election_type` (`election_type_name`)
VALUES
    ('General Election'),
    ('Primary Election'),
    ('Special Election');

-- Sample data for election table
INSERT INTO
    `voterdb`.`election` (
        `date_of_election`,
        `ballot_due_date`,
        `election_type_id`,
        `district_id`
    )
VALUES
    ('2024-11-03', '2024-10-15 23:59:59', 1, 1),
    ('2024-11-03', '2024-10-15 23:59:59', 1, 2),
    ('2024-11-03', '2024-10-15 23:59:59', 1, 3),
    ('2024-11-03', '2024-10-15 23:59:59', 1, 4);

-- Sample data for voter table
INSERT INTO
    `voterdb`.`voter` (`idvoter`, `registrationID`, `registrationDate`)
VALUES
    (1, 'REG001', '2023-01-15'),
    (2, 'REG002', '2023-02-20'),
    (3, 'REG003', '2023-03-25'),
    (4, 'REG004', '2023-04-30');

-- Sample data for voterRegistered table
-- Assuming we have 4 voters with IDs 1 to 4
-- Sample data for when voters were registered
INSERT INTO
    `voterdb`.`voterRegistered` (`voter`, `date`)
VALUES
    (1, '2023-01-15'),
    (2, '2023-02-20'),
    (3, '2023-03-25'),
    (4, '2023-04-30');

-- Sample data for deviceMake table
INSERT INTO
    `voterdb`.`deviceMake` (`davice_make_name`)
VALUES
    ('Apple'),
    ('Samsung'),
    ('Google'),
    ('Microsoft');

-- Sample data for deviceModel table
INSERT INTO
    `voterdb`.`deviceModel` (`model_name`, `device_make_id`)
VALUES
    ('iPhone 12', 1),
    ('Galaxy S20', 2),
    ('Pixel 5', 3),
    ('Surface Pro 7', 4);

-- Sample data for device table
INSERT INTO
    `voterdb`.`device` (`device_model_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for device_event_log table
-- Assuming we have 4 devices with IDs 1 to 4 and 4 event types with IDs 1 to 4
-- Sample data for device event logs
INSERT INTO
    `voterdb`.`device_event_log` (
        `device_id`,
        `event_time`,
        `ip_address_id`,
        `event_type_id`
    )
VALUES
    (1, '2024-03-12 09:00:00', 1, 1),
    (2, '2024-03-12 10:00:00', 2, 2),
    (3, '2024-03-12 11:00:00', 3, 3),
    (4, '2024-03-12 12:00:00', 4, 4);

-- Sample data for ip_address table
INSERT INTO
    `voterdb`.`ip_address` (`ip_address`, `location_id`)
VALUES
    ('192.168.1.1', 1),
    ('10.0.0.1', 2),
    ('172.16.0.1', 3),
    ('192.0.2.1', 4);

-- Sample data for event_log_type table
INSERT INTO
    `voterdb`.`event_log_type` (`event_log_type_name`)
VALUES
    ('Login'),
    ('Logout'),
    ('Error'),
    ('Info');

-- Sample data for ballot table
INSERT INTO
    `voterdb`.`ballot` (`election_id`, `district_id`)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4);

-- Sample data for voterBallot table
INSERT INTO
    `voterdb`.`voter_ballot` (
        `voter_info`,
        `submission_date`,
        `vb_status_id`,
        `device`,
        `election_id`
    )
VALUES
    (1, 1, '2024-11-03 10:00:00', 'Accepted', 1),
    (1, 2, '2024-11-03 10:05:00', 'Rejected', 2),
    (2, 3, '2024-11-03 10:10:00', 'Unsubmitted', 3),
    (2, 4, '2024-11-03 10:15:00', 'Accepted', 4);

-- Sample data for voter_ballot_status_lookup table
INSERT INTO
    `voterdb`.`voter_ballot_status_lookup` (`vb_status_name`)
VALUES
    ('Submitted'),
    ('Pending'),
    ('Approved'),
    ('Rejected');

-- Sample data for ballotSubmitted table
INSERT INTO
    `voterdb`.`ballotSubmitted` (`ballot`, `date`)
VALUES
    (1, '2024-03-11 17:00:00'),
    (2, '2024-03-11 18:00:00'),
    (3, '2024-03-11 19:00:00'),
    (4, '2024-03-11 20:00:00');

-- Sample data for contest table
INSERT INTO
    `voterdb`.`contest` (`ballot`)
VALUES
    (1),
    (2);

-- Sample data for measure table
INSERT INTO
    `voterdb`.`measure` (`voter_ballot_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for ballot_measure_option table
-- Assuming we have three measure options for a particular measure
INSERT INTO
    `voterdb`.`ballot_measure_option` (`option_value`, `measure_id`, `total_votes`)
VALUES
    ('Yes', 1, 100),
    ('No', 1, 150),
    ('Rejected', 2, 150),
    ('Approved', 2, 200);

-- Sample data for candidate table
INSERT INTO
    `voterdb`.`candidate` (`person_id`, `political_party_id`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

-- Sample data for position table
INSERT INTO
    `voterdb`.`position` (`position_name`, `term_limit_id`)
VALUES
    ('President', 4),
    ('Senator', 6),
    ('Governor', 4);

-- Sample data for term_limits_lookup table
INSERT INTO
    `voterdb`.`term_limits_lookup` (`term_limit_value`, `term_limit_unit`)
VALUES
    (2, 'Years'),
    (4, 'Years'),
    (6, 'Years'),
    (8, 'Years');

-- Sample data for election_candidate table
INSERT INTO
    `voterdb`.`election_candidate` (
        `election_id`,
        `candidate_id`,
        `position_id`,
        `total_votes`
    )
VALUES
    (1, 1, 1, 8000),
    (1, 2, 2, 12000),
    (2, 3, 3, 16000),
    (3, 4, 4, 20000);

-- Sample data for office_held table
INSERT INTO
    `voterdb`.`office_held` (
        `position_id`,
        `candidate_id`,
        `political_party_id`,
        `start_date`,
        `end_date`,
        `election_id`
    )
VALUES
    (1, 1, 1, '2022-01-01', '2026-01-01', 1),
    (2, 2, 2, '2022-01-01', '2026-01-01', 1),
    (3, 3, 3, '2022-01-01', '2026-01-01', 1),
    (4, 4, 4, '2022-01-01', '2026-01-01', 1);

-- Sample data for party table
INSERT INTO
    `voterdb`.`party` (`name`)
VALUES
    ('Democratic Party'),
    ('Republican Party'),
    ('Green Party'),
    ('Libertarian Party');

-- Sample data for person table
INSERT INTO
    `voterdb`.`person` (
        `firstName`,
        `lastName`,
        `DOB`,
        `occupation_status`,
        `voter_id`
    )
VALUES
    ('John', 'Doe', '1990-05-15', 1, 123456),
    ('Jane', 'Smith', '1985-08-20', 2, 789012),
    ('Michael', 'Johnson', '2000-03-10', 3, NULL),
    ('Emily', 'Brown', '1975-11-25', 4, 345678);

-- Sample data for occupation table
-- Assuming we have 4 persons with IDs 1 to 4 and 4 occupation statuses with IDs 1 to 4
-- Sample data for occupations
INSERT INTO
    `voterdb`.`occupation` (
        `person_id`,
        `occupation_name`,
        `occupation_status_id`
    )
VALUES
    (1, 'Engineer', 1),
    (2, 'Teacher', 2),
    (3, 'Doctor', 3),
    (4, 'Lawyer', 4);

-- Sample data for occupation_status table
INSERT INTO
    `voterdb`.`occupation_status` (`occupation_status_name`)
VALUES
    ('Employed'),
    ('Unemployed'),
    ('Retired');

-- Sample data for gender table
INSERT INTO
    `voterdb`.`gender` (`name`)
VALUES
    ('Male'),
    ('Female'),
    ('Non-Binary'),
    ('Trans Male'),
    ('Trans Female'),
    ('Other');

-- Sample data for personGender table
-- Assuming we have 4 persons with IDs 1 to 4, and 3 genders with IDs 1 to 3
-- Sample data to associate genders with persons
INSERT INTO
    `voterdb`.`personGender` (`person`, `gender`)
VALUES
    (1, 1),
    -- John Doe is Male
    (2, 2),
    -- Jane Smith is Female
    (3, 3),
    -- Michael Johnson is Non-binary
    (5, 2);

-- Emily Brown is Trans Female
-- Sample data for degree table
INSERT INTO
    `voterdb`.`degree` (`degree_name`)
VALUES
    ('Bachelors'),
    ('Masters'),
    ('Ph.D.'),
    ('Associates');

-- Sample data for person_edu_degree table
-- Assuming we have 4 persons with IDs 1 to 4, and 4 degrees with IDs 1 to 4
-- Sample data for education degrees of persons
INSERT INTO
    `voterdb`.`person_edu_degree` (`degree`, `completion_date`, `person_id`)
VALUES
    (1, '2010-05-30', 1),
    -- John Doe completed Bachelor's in 2010
    (2, '2012-08-25', 2),
    -- Jane Smith completed Master's in 2012
    (3, '2015-12-20', 3),
    -- Michael Johnson completed Ph.D. in 2015
    (4, '2008-04-15', 4);

-- Emily Brown completed Associate's in 2008
-- Sample data for gender_lookup table
-- Assuming we have 3 genders with IDs 1 to 3
-- Sample data for gender lookup
INSERT INTO
    `voterdb`.`gender_lookup` (`gender_id`, `gender_abbr`)
VALUES
    (1, 'M'),
    -- Male
    (2, 'F'),
    -- Female
    (3, 'NB'),
    -- Non-binary
    (4, 'TM');

-- Trans Male
(5, 'TF');

-- Trans Female
(6, 'O');

-- Other
-- Sample data for email table
-- Assuming we have 4 persons with IDs 1 to 4
-- Sample data for email addresses of persons
INSERT INTO
    `voterdb`.`email` (`person_id`, `email_address`)
VALUES
    (1, 'john.doe@example.com'),
    (2, 'jane.smith@example.com'),
    (3, 'michael.johnson@example.com'),
    (4, 'emily.brown@example.com');

-- Sample data for phone table
-- Assuming we have 4 persons with IDs 1 to 4
-- Sample data for phone numbers associated with persons
INSERT INTO
    `voterdb`.`phone` (`person_id`, `country_code`, `phone_num`)
VALUES
    (1, 1, 1234567890),
    (2, 1, 2345678901),
    (3, 1, 3456789012),
    (4, 1, 4567890123);

-- Sample data for event_type table
-- TODO: Change to social media events
INSERT INTO
    `voterdb`.`event_type` (`event_name`)
VALUES
    ('Meeting'),
    ('Conference'),
    ('Seminar'),
    ('Workshop');

-- Sample data for location table
-- Assuming we have 4 social accounts with IDs 1 to 4 and 4 cities with IDs 1 to 4
-- Sample data for locations associated with social accounts
-- TODO: figure out what this table is for
INSERT INTO
    `voterdb`.`location` (`location_name`, `social_account_id`, `city_id`)
VALUES
    ('Starbucks', 1, 1),
    ('Central Park', 2, 2),
    ('Googleplex', 3, 3),
    ('Microsoft Campus', 4, 4);

-- Sample data for product table
INSERT INTO
    `voterdb`.`product` (`name`, `price`, `recurring`)
VALUES
    ('Product A', '100', 0),
    ('Product B', '200', 1),
    ('Product C', '150', 0),
    ('Product D', '300', 1);

-- Sample data for purchase table
-- Assuming we have 4 social accounts with IDs 1 to 4
-- Sample data for purchases
INSERT INTO
    `voterdb`.`purchase` (`event_time`, `seller_acc_id`, `buyer_acc_id`)
VALUES
    ('2024-03-12 09:30:00', 1, 2),
    ('2024-03-12 10:30:00', 2, 3),
    ('2024-03-12 11:30:00', 3, 4),
    ('2024-03-12 12:30:00', 4, 1);

-- Sample data for purchase_products table
-- Assuming we have 4 products with IDs 1 to 4 and 4 purchases with IDs 1 to 4
-- Sample data for products purchased in purchases
INSERT INTO
    `voterdb`.`purchase_products` (`qty`, `product_id`, `purchase_id`)
VALUES
    (1, 1, 1),
    (2, 2, 2),
    (1, 3, 3),
    (2, 4, 4);

-- Sample data for event_nature table
INSERT INTO
    `voterdb`.`event_nature` (`event_nature_name`)
VALUES
    ('Natural Disaster'),
    ('Social Event'),
    ('Political Rally'),
    ('Business Conference');

-- Sample data for social_event table
-- Assuming we have 4 social accounts with IDs 1 to 4, 4 event types with IDs 1 to 4, and 4 event natures with IDs 1 to 4
-- Sample data for social events
-- TODO: change to social media events
INSERT INTO
    `voterdb`.`social_event` (
        `account_id`,
        `content`,
        `event_time`,
        `event_type_id`,
        `event_nature_id`
    )
VALUES
    (
        1,
        'Enjoying the party!',
        '2024-03-12 18:00:00',
        1,
        1
    ),
    (
        2,
        'Supporting the candidate!',
        '2024-03-13 10:00:00',
        2,
        2
    ),
    (
        3,
        'Discussing important issues.',
        '2024-03-14 14:00:00',
        3,
        3
    ),
    (
        4,
        'Protesting against injustice!',
        '2024-03-15 12:00:00',
        4,
        4
    );

-- Sample data for action_type table
INSERT INTO
    `voterdb`.`action_type` (`action_type_id`, `action_type_name`)
VALUES
    (1, 'Like'),
    (2, 'Comment'),
    (3, 'Share'),
    (4, 'Follow');

-- Sample data for social_action table
INSERT INTO
    `voterdb`.`social_action` (
        `social_account_id`,
        `social_event_id`,
        `action_type_id`,
        `content`,
        `event_time`
    )
VALUES
    (1, 1, 1, 'Liked', '2023-01-01 10:00:00'),
    (2, 2, 2, 'Shared', '2023-01-02 11:00:00'),
    (3, 3, 1, 'Liked', '2023-01-03 12:00:00'),
    (4, 4, 2, 'Shared', '2023-01-04 13:00:00');

-- Sample data for social_platform table
INSERT INTO
    `voterdb`.`social_platform` (`name`)
VALUES
    ('Facebook'),
    ('Twitter'),
    ('Instagram'),
    ('LinkedIn');

-- Sample data for social_account table
-- Assuming we have 4 persons with IDs 1 to 4 and 4 social platforms with IDs 1 to 4
-- Sample data for social accounts
INSERT INTO
    `voterdb`.`social_account` (
        `username`,
        `person_id`,
        `social_platform_id`,
        `SMUID`
    )
VALUES
    ('john_doe123', 1, 1, 123),
    ('jane_smith456', 2, 2, 456),
    ('michael_johnson789', 3, 3, 789),
    ('emily_brown012', 4, 4, 012);

-- Sample data for hashtags table
INSERT INTO
    `voterdb`.`hashtags` (`hashtag_name`)
VALUES
    ('#politics'),
    ('#socialjustice'),
    ('#environment'),
    ('#education');

-- Sample data for political_party table
INSERT INTO
    `voterdb`.`political_party` (`party_name`)
VALUES
    ('Democrat'),
    ('Republican'),
    ('Independent'),
    ('Green Party');

-- Sample data for political_affiliation_lookup table
-- Assuming we have 4 political parties with IDs 1 to 4
-- Sample data for political affiliations
INSERT INTO
    `voterdb`.`political_affiliation_lookup` (`political_party_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for view_intensity_lookup table
INSERT INTO
    `voterdb`.`view_intensity_lookup` (`intensity_nickname`)
VALUES
    ('Low'),
    ('Moderate'),
    ('High'),
    ('Very High');

-- Sample data for religion table
INSERT INTO
    `voterdb`.`religion` (`religion_name`)
VALUES
    ('Christianity'),
    ('Islam'),
    ('Buddhism'),
    ('Judaism');

-- Sample data for religious_affiliation_lookup table
-- Assuming we have 4 religions with IDs 1 to 4
INSERT INTO
    `voterdb`.`religious_affiliation_lookup` (`religion_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for religious_identity table
INSERT INTO
    `voterdb`.`religious_identity` (
        `preference_id`,
        `affiliation_lookup_code`,
        `intensity_code`,
        `timestamp`
    )
VALUES
    (1, 1, 5, '2023-01-01 10:00:00'),
    (2, 2, 3, '2023-01-02 11:00:00'),
    (3, 3, 2, '2023-01-03 12:00:00'),
    (4, 4, 4, '2023-01-04 13:00:00');

-- Sample data for social_issue table
INSERT INTO
    `voterdb`.`social_issue` (`social_issue_name`)
VALUES
    ('Poverty'),
    ('Climate Change'),
    ('Education'),
    ('Healthcare');

-- Sample data for social_issue_lookup table
-- Assuming we have 4 social issues with IDs 1 to 4
INSERT INTO
    `voterdb`.`social_issue_lookup` (`social_issue_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for social_issue_view table
INSERT INTO
    `voterdb`.`social_issue_view` (
        `preference_id`,
        `social_issue_lookup_code`,
        `intensity_code`,
        `event_time`
    )
VALUES
    (1, 1, 5, '2023-01-01 10:00:00'),
    (2, 2, 3, '2023-01-02 11:00:00'),
    (3, 3, 2, '2023-01-03 12:00:00'),
    (4, 4, 4, '2023-01-04 13:00:00');

-- Sample data for preferences table
INSERT INTO
    `voterdb`.`preferences` (`person_id`)
VALUES
    (1),
    (2),
    (3),
    (4);

-- Sample data for social_mate_preference_lookup table
-- Assuming we have three attributes: Age, Education, and Religion
INSERT INTO
    `voterdb`.`social_mate_preference_lookup` (`person_id`, `smp_attribute`, `preference`)
VALUES
    (1, 'Age', '25-30'),
    (1, 'Education', 'Bachelors Degree'),
    (1, 'Religion', 'Christianity');

-- Sample data for political_preference table
INSERT INTO
    `voterdb`.`political_preference` (
        `preference_id`,
        `political_affiliation_code`,
        `intensity`,
        `event_time`
    )
VALUES
    (1, 1, 5, '2023-01-01 10:00:00'),
    (2, 2, 3, '2023-01-02 11:00:00'),
    (3, 3, 2, '2023-01-03 12:00:00'),
    (4, 4, 4, '2023-01-04 13:00:00');

-- Sample data for advertisement table
INSERT INTO
    `voterdb`.`advertisement` (`advertisement_name`)
VALUES
    ('Product X Ad'),
    ('Service Y Ad'),
    ('Event Z Ad'),
    ('Promotion A Ad');

-- Sample data for ad_clicked table
INSERT INTO
    `voterdb`.`ad_clicked` (
        `advertisement_id`,
        `social_account_id`,
        `event_time`
    )
VALUES
    (1, 1, '2024-03-11 16:00:00'),
    (2, 2, '2024-03-11 17:00:00'),
    (3, 3, '2024-03-11 18:00:00'),
    (4, 4, '2024-03-11 19:00:00');

-- Sample data for event_tag table
-- Assuming we have three social events and three hashtags
INSERT INTO
    `voterdb`.`event_tag` (`social_event_id`, `hashtag_id`)
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (4, 4);

INSERT INTO
    `person_voter_info` (`voter_id`, `registration_date`)
VALUES
    (1, '2023-05-15'),
    (2, '2022-09-28'),
    (3, '2024-01-10'),
    (4, '2023-11-03'),
    (5, '2022-07-19');