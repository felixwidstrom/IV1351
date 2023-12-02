TRUNCATE TABLE contact_persons CASCADE;
TRUNCATE TABLE students CASCADE;
TRUNCATE TABLE siblings CASCADE;
TRUNCATE TABLE pricing CASCADE;
TRUNCATE TABLE instructors CASCADE;
TRUNCATE TABLE lessons CASCADE;
TRUNCATE TABLE attendance CASCADE;
TRUNCATE TABLE instruments CASCADE;
TRUNCATE TABLE rentable_instruments CASCADE;
TRUNCATE TABLE known_instruments CASCADE;
TRUNCATE TABLE instructor_availability CASCADE;
TRUNCATE TABLE timeslots CASCADE;

INSERT INTO contact_persons (contact_person_id,phone,email) VALUES
    (12345678, '071-123-45-67', 'john.doe@example.com'),
    (23456789, '072-234-56-78', 'jane.smith@example.com'),
    (34567890, '073-345-67-89', 'bob.jones@example.com'),
    (45678901, '074-456-78-90', 'alice.wang@example.com'),
    (56789012, '075-567-89-01', 'mark.johnson@example.com'),
    (67890123, '076-678-90-12', 'susan.white@example.com'),
    (78901234, '077-789-01-23', 'kevin.miller@example.com'),
    (89012345, '078-890-12-34', 'emily.davis@example.com'),
    (90123456, '079-901-23-45', 'ryan.wilson@example.com'),
    (12345670, '070-123-45-67', 'linda.brown@example.com'), 
    (23456781, '071-234-56-78', 'david.anderson@example.com'),
    (34567892, '072-345-67-89', 'amy.green@example.com'),
    (45678903, '073-456-78-90', 'michael.harris@example.com'), 
    (56789014, '074-567-89-01', 'sandra.thomas@example.com'), 
    (67890125, '075-678-90-12', 'peter.cook@example.com'),
    (78901236, '076-789-01-23', 'laura.roberts@example.com'),
    (89012347, '077-890-12-34', 'chris.turner@example.com'),
    (90123458, '078-901-23-45', 'janet.phillips@example.com'), 
    (12345679, '079-123-45-67', 'robert.hill@example.com'), 
    (23456780, '070-234-56-78', 'wendy.martin@example.com'), 
    (34567891, '071-345-67-89', 'steven.lee@example.com'),
    (45678902, '072-456-78-90', 'olivia.wells@example.com'),
    (56789013, '073-567-89-01', 'daniel.yang@example.com'), 
    (67890124, '074-678-90-12', 'grace.fisher@example.com'), 
    (78901235, '075-789-01-23', 'bradley.baker@example.com'),
    (89012346, '076-890-12-34', 'victoria.nguyen@example.com'),
    (90123457, '077-901-23-45', 'eric.carter@example.com'),
    (12345676, '078-123-45-67', 'karen.kim@example.com'), 
    (23456787, '079-234-56-78', 'jackson.martinez@example.com'), 
    (34567898, '070-345-67-89', 'amber.ward@example.com'), 
    (45678909, '071-456-78-90', 'travis.rogers@example.com'),
    (56789020, '072-567-89-01', 'nancy.hughes@example.com'), 
    (67890131, '073-678-90-12', 'derek.taylor@example.com'),
    (78901242, '074-789-01-23', 'lillian.grant@example.com'),
    (89012353, '075-890-12-34', 'justin.collins@example.com'),
    (90123464, '076-901-23-45', 'hannah.murray@example.com'), 
    (12345675, '077-123-45-67', 'gavin.ellis@example.com'),
    (23456786, '078-234-56-78', 'alison.hudson@example.com'),
    (34567897, '079-345-67-89', 'dean.harrison@example.com'), 
    (45678908, '070-456-78-90', 'sophie.woods@example.com'), 
    (56789019, '071-567-89-01', 'rodney.fletcher@example.com'), 
    (67890130, '072-678-90-12', 'marie.morris@example.com'),
    (78901241, '073-789-01-23', 'jason.graham@example.com'),
    (89012352, '074-890-12-34', 'rebecca.sullivan@example.com'),
    (90123463, '075-901-23-45', 'tyler.west@example.com'), 
    (12345674, '076-123-45-67', 'alice.jones@example.com'), 
    (23456785, '077-234-56-78', 'peter.hill@example.com'), 
    (34567896, '078-345-67-89', 'emily.brown@example.com'), 
    (45678907, '079-456-78-90', 'ryan.martin@example.com'), 
    (56789018, '070-567-89-01', 'laura.smith@example.com');

INSERT INTO students (student_id, name, person_number, address, phone, email, contact_person_id) VALUES
    (10000001, 'Alice Johnson', '19930101-1235', '123 Main St, 12345 City', '071-123-45-67', 'alice.johnson@example.com', 12345678),
    (10000002, 'Bob Smith', '19950116-5679', '456 Oak St, 56789 Town', '072-234-56-78', 'bob.smith@example.com', 23456789),
    (10000003, 'Charlie Brown', '19980320-9013', '789 Pine St, 90123 Village', '073-345-67-89', 'charlie.brown@example.com', 34567890),
    (10000004, 'David White', '20001225-3457', '987 Cedar St, 34567 County', '074-456-78-90', 'david.white@example.com', 45678901),
    (10000005, 'Emma Taylor', '20020610-7891', '654 Birch St, 78901 City', '075-567-89-01', 'emma.taylor@example.com', 56789012),
    (10000006, 'Frank Miller', '20041215-2346', '321 Elm St, 23456 Town', '076-678-90-12', 'frank.miller@example.com', 67890123),
    (10000007, 'Grace Davis', '20060830-6790', '987 Maple St, 67890 Village', '077-789-01-23', 'grace.davis@example.com', 78901234),
    (10000008, 'Henry Wilson', '20080705-1235', '456 Walnut St, 12345 County', '078-890-12-34', 'henry.wilson@example.com', 89012345),
    (10000009, 'Ivy Hall', '20091111-5679', '789 Oak St, 56789 City', '079-901-23-45', 'ivy.hall@example.com', 90123456),
    (10000010, 'Jack Turner', '20110326-9013', '123 Pine St, 90123 Town', '070-123-45-67', 'jack.turner@example.com', 12345670),
    (10000011, 'Katie Reed', '20130810-3457', '456 Cedar St, 34567 Village', '071-234-56-78', 'katie.reed@example.com', 23456781),
    (10000012, 'Leo Brooks', '20051115-7891', '789 Birch St, 78901 County', '072-345-67-89', 'leo.brooks@example.com', 34567892),
    (10000013, 'Mia Foster', '20070320-2347', '654 Elm St, 23456 City', '073-456-78-90', 'mia.foster@example.com', 45678903),
    (10000014, 'Noah Harris', '20090625-6791', '321 Maple St, 67890 Town', '074-567-89-01', 'noah.harris@example.com', 56789014),
    (10000015, 'Olivia Carter', '20011130-1235', '987 Walnut St, 12345 Village', '075-678-90-12', 'olivia.carter@example.com', 67890125),
    (10000016, 'Patrick Allen', '20031205-5679', '456 Oak St, 56789 County', '076-789-01-23', 'patrick.allen@example.com', 78901236),
    (10000017, 'Quinn Scott', '20050410-9013', '789 Cedar St, 90123 City', '077-890-12-34', 'quinn.scott@example.com', 89012347),
    (10000018, 'Rachel Lee', '20070615-3457', '123 Pine St, 34567 Town', '078-901-23-45', 'rachel.lee@example.com', 90123458),
    (10000019, 'Samuel Hall', '20091220-7891', '456 Birch St, 78901 Village', '079-123-45-67', 'samuel.hall@example.com', 12345679),
    (10000020, 'Tina Turner', '19950115-5679', '789 Oak St, 56789 City', '070-234-56-78', 'tina.turner@example.com', 23456780),
    (10000021, 'Ulysses Grant', '19980320-9014', '987 Pine St, 90123 Town', '071-345-67-89', 'ulysses.grant@example.com', 34567891),
    (10000022, 'Victoria Nguyen', '20001225-3458', '654 Cedar St, 34567 Village', '072-456-78-90', 'victoria.nguyen@example.com', 45678902),
    (10000023, 'Walter Scott', '20020610-7892', '321 Birch St, 78901 County', '073-567-89-01', 'walter.scott@example.com', 56789013),
    (10000024, 'Xavier Harris', '20041215-2347', '987 Elm St, 23456 City', '074-678-90-12', 'xavier.harris@example.com', 67890124),
    (10000025, 'Yvonne Baker', '20060830-6792', '654 Maple St, 67890 Town', '075-789-01-23', 'yvonne.baker@example.com', 78901235),
    (10000026, 'Zachary Turner', '20080705-1236', '321 Walnut St, 12345 Village', '076-890-12-34', 'zachary.turner@example.com', 89012346),
    (10000027, 'Abigail Wilson', '20091111-5680', '789 Oak St, 56789 City', '077-901-23-45', 'abigail.wilson@example.com', 90123457),
    (10000028, 'Benjamin Turner', '20110326-9014', '123 Pine St, 90123 Town', '078-123-45-67', 'benjamin.turner@example.com', 12345676),
    (10000029, 'Catherine Miller', '20130810-3458', '456 Cedar St, 34567 Village', '079-234-56-78', 'catherine.miller@example.com', 23456787),
    (10000030, 'Daniel White', '20051115-7892', '789 Birch St, 78901 County', '080-345-67-89', 'daniel.white@example.com', 34567898),
    (10000031, 'Emily Davis', '20070320-2348', '654 Elm St, 23456 City', '081-456-78-90', 'emily.davis@example.com', 45678909),
    (10000032, 'Franklin Taylor', '20090625-6793', '321 Maple St, 67890 Town', '082-567-89-01', 'franklin.taylor@example.com', 56789020),
    (10000033, 'Gabrielle Brooks', '20011130-1236', '987 Walnut St, 12345 Village', '083-678-90-12', 'gabrielle.brooks@example.com', 67890131),
    (10000034, 'Henry Foster', '20031205-5680', '456 Oak St, 56789 County', '084-789-01-23', 'henry.foster@example.com', 78901242),
    (10000035, 'Isabella Allen', '20050410-9014', '789 Cedar St, 90123 City', '085-890-12-34', 'isabella.allen@example.com', 89012353),
    (10000036, 'Jacob Scott', '20070615-3458', '123 Pine St, 34567 Town', '086-901-23-45', 'jacob.scott@example.com', 90123464),
    (10000037, 'Katherine Lee', '20091220-7892', '456 Birch St, 78901 Village', '087-123-45-67', 'katherine.lee@example.com', 12345675),
    (10000038, 'Liam Hall', '19950115-5680', '789 Oak St, 56789 City', '088-234-56-78', 'liam.hall@example.com', 23456786),
    (10000039, 'Mia Turner', '19980320-9015', '987 Pine St, 90123 Town', '089-345-67-89', 'mia.turner@example.com', 34567897),
    (10000040, 'Noah Nguyen', '20001225-3459', '654 Cedar St, 34567 Village', '090-456-78-90', 'noah.nguyen@example.com', 45678908),
    (10000041, 'Olivia Scott', '20020610-7893', '321 Birch St, 78901 County', '091-567-89-01', 'olivia.scott@example.com', 56789019),
    (10000042, 'Patrick Harris', '20041215-2348', '987 Elm St, 23456 City', '092-678-90-12', 'patrick.harris@example.com', 67890130),
    (10000043, 'Quinn Taylor', '20060830-6794', '654 Maple St, 67890 Town', '093-789-01-23', 'quinn.taylor@example.com', 78901241),
    (10000044, 'Rachel Turner', '20080705-1237', '321 Walnut St, 12345 Village', '094-890-12-34', 'rachel.turner@example.com', 89012352),
    (10000045, 'Samuel Davis', '20091111-5681', '789 Oak St, 56789 City', '095-901-23-45', 'samuel.davis@example.com', 90123463),
    (10000046, 'Tina Foster', '20110326-9015', '123 Pine St, 90123 Town', '096-123-45-67', 'tina.foster@example.com', 12345674),
    (10000047, 'Ulysses Brooks', '20130810-3459', '456 Cedar St, 34567 Village', '097-234-56-78', 'ulysses.brooks@example.com', 23456785),
    (10000048, 'Victoria Miller', '20051115-7893', '789 Birch St, 78901 County', '098-345-67-89', 'victoria.miller@example.com', 34567896),
    (10000049, 'Walter White', '20070320-2349', '654 Elm St, 23456 City', '099-456-78-90', 'walter.white@example.com', 45678907),
    (10000050, 'Xavier Taylor', '20090625-6792', '321 Maple St, 67890 Town', '100-567-89-01', 'xavier.taylor@example.com', 56789018);

INSERT INTO siblings (student_id, sibling_id) VALUES
    (10000001, 10000002),
    (10000002, 10000001),
    (10000003, 10000004),
    (10000004, 10000003),
    (10000005, 10000006),
    (10000006, 10000005),
    (10000007, 10000008),
    (10000008, 10000007),
    (10000009, 10000010),
    (10000010, 10000009),
    (10000011, 10000012),
    (10000012, 10000011),
    (10000013, 10000014),
    (10000014, 10000013),
    (10000015, 10000016),
    (10000016, 10000015),
    (10000017, 10000018),
    (10000018, 10000017),
    (10000019, 10000020),
    (10000020, 10000019),
    (10000021, 10000022),
    (10000022, 10000021),
    (10000023, 10000024),
    (10000024, 10000023),
    (10000025, 10000026),
    (10000026, 10000025); 

INSERT INTO pricing (pricing_id, price, lesson_type, skill_level, sibling_discount) VALUES 
    (12345678, 100, 'Individual', 'Beginner', 50),
    (23456789, 100, 'Individual', 'Intermediate', 50),
    (34567890, 150, 'Individual', 'Advanced', 50),
    (45678901, 200, 'Group', 'Beginner', 50),
    (56789012, 200, 'Group', 'Intermediate', 50),
    (67890123, 250, 'Group', 'Advanced', 50),
    (78901234, 300, 'Ensemble', 'Beginner', 50),
    (89012345, 300, 'Ensemble', 'Intermediate', 50),
    (90123456, 350, 'Ensemble', 'Advanced', 50);

INSERT INTO instruments (instrument_id, instrument_type) VALUES
    (30000001, 'Piano'),
    (30000002, 'Guitar'),
    (30000003, 'Violin'),
    (30000004, 'Saxophone'),
    (30000005, 'Drums'),
    (30000006, 'Trumpet'),
    (30000007, 'Flute'),
    (30000008, 'Bass Guitar');

INSERT INTO instructors (instructor_id, person_number, name, address, teaches_ensembles) VALUES
    (10000001, '19850115-1234', 'John Smith', '123 Main St, 12345 Anytown', TRUE),
    (10000002, '19771203-5678', 'Jane Doe', '456 Oak St, 67890 Othercity', FALSE),
    (10000003, '19891220-9876', 'Bob Johnson', '789 Pine St, 54321 Anothercity', FALSE),
    (10000004, '19760108-4321', 'Alice Brown', '321 Elm St, 13579 Yetanothercity', FALSE),
    (10000005, '19800229-2468', 'Charlie Wilson', '555 Maple Ave, 98765 Smalltown', TRUE),
    (10000006, '19790417-1357', 'Eva Davis', '777 Birch Blvd, 24680 Countryside', FALSE),
    (10000007, '19870810-8642', 'Frank Miller', '999 Cedar Ln, 13579 Suburbia', FALSE),
    (10000008, '19740228-9753', 'Grace Taylor', '111 Redwood Rd, 86420 Villagetown', FALSE),
    (10000009, '19811212-3412', 'Henry Clark', '222 Spruce St, 11223 Hamletville', TRUE),
    (10000010, '19780305-5098', 'Ivy Johnson', '333 Pine Ave, 78901 Riverside', FALSE);

INSERT INTO known_instruments (instructor_id, instrument_id) VALUES
    (10000001, 30000001),
    (10000001, 30000002),
    (10000002, 30000003),
    (10000002, 30000004),
    (10000003, 30000005),
    (10000003, 30000006),
    (10000004, 30000007),
    (10000004, 30000008),
    (10000005, 30000001),
    (10000005, 30000002),
    (10000006, 30000003),
    (10000006, 30000004),
    (10000007, 30000005),
    (10000007, 30000006),
    (10000008, 30000007),
    (10000008, 30000008),
    (10000009, 30000001),
    (10000009, 30000002),
    (10000010, 30000003),
    (10000010, 30000004),
    (10000001, 30000005),
    (10000002, 30000006),
    (10000003, 30000007),
    (10000005, 30000008),
    (10000005, 30000007),
    (10000006, 30000008),
    (10000007, 30000001),
    (10000008, 30000002),
    (10000009, 30000003),
    (10000009, 30000004);

INSERT INTO rentable_instruments (rentable_instrument_id, category, instrument_type, brand, price, leased_until, student_id) VALUES
    (40000001, 'Wind', 'Flute', 'Yamaha', 50, '2024-04-01', 10000001),
    (40000002, 'Percussion', 'Drums', 'Roland', 100, '2024-04-15', 10000002),
    (40000003, 'String', 'Violin', 'Stradivarius', 75, '2024-05-01', 10000003),
    (40000004, 'Brass', 'Trumpet', 'Bach', 80, '2024-05-15', 10000004),
    (40000005, 'Wind', 'Saxophone', 'Selmer', 70, '2024-06-01', 10000005),
    (40000006, 'Percussion', 'Xylophone', 'Musser', 60, '2024-06-15', 10000006),
    (40000007, 'String', 'Cello', 'D Addario', 90, '2024-07-01', 10000007),
    (40000008, 'Brass', 'Trombone', 'Conn', 85, '2024-07-15', 10000008),
    (40000009, 'Wind', 'Clarinet', 'Buffet Crampon', 55, '2024-08-01', 10000009),
    (40000010, 'Percussion', 'Marimba', 'Adams', 110, '2024-08-15', 10000010),
    (40000011, 'String', 'Double Bass', 'Engelhardt', 95, '2024-09-01', 10000001),
    (40000012, 'Brass', 'French Horn', 'Holton', 75, '2024-09-15', 10000002),
    (40000013, 'Wind', 'Oboe', 'Fox', 65, '2024-10-01', 10000003),
    (40000014, 'Percussion', 'Timpani', 'Adams', 120, '2024-10-15', 10000004),
    (40000015, 'String', 'Viola', 'Eastman', 80, '2024-11-01', 10000005),
    (40000016, 'Brass', 'Euphonium', 'Besson', 90, '2024-11-15', 10000006);

INSERT INTO timeslots (timeslot_id, date, start_time, end_time) VALUES
    (50000001, '2023-03-01', '08:00:00', '09:00:00'),
    (50000002, '2023-03-02', '09:30:00', '10:30:00'),
    (50000003, '2023-03-03', '10:00:00', '11:00:00'),
    (50000004, '2023-03-04', '11:30:00', '12:30:00'),
    (50000005, '2023-03-05', '12:00:00', '13:00:00'),
    (50000006, '2023-03-06', '13:30:00', '14:30:00'),
    (50000007, '2023-03-07', '14:00:00', '15:00:00'),
    (50000008, '2023-03-08', '15:30:00', '16:30:00'),
    (50000009, '2023-03-09', '16:00:00', '17:00:00'),
    (50000010, '2023-03-10', '17:30:00', '18:30:00'),
    (50000011, '2023-03-11', '08:30:00', '09:30:00'),
    (50000012, '2023-03-12', '09:00:00', '10:00:00'),
    (50000013, '2023-03-13', '10:30:00', '11:30:00'),
    (50000014, '2023-03-14', '11:00:00', '12:00:00'),
    (50000015, '2023-03-15', '12:30:00', '13:30:00'),
    (50000016, '2023-03-16', '13:00:00', '14:00:00'),
    (50000017, '2023-03-17', '14:30:00', '15:30:00'),
    (50000018, '2023-03-18', '15:00:00', '16:00:00'),
    (50000019, '2023-03-19', '16:30:00', '17:30:00'),
    (50000020, '2023-03-20', '17:00:00', '18:00:00'),
    (50000021, '2023-03-21', '08:00:00', '09:00:00'),
    (50000022, '2023-03-22', '09:30:00', '10:30:00'),
    (50000023, '2023-03-23', '10:00:00', '11:00:00'),
    (50000024, '2023-03-24', '11:30:00', '12:30:00'),
    (50000025, '2023-03-25', '12:00:00', '13:00:00'),
    (50000026, '2023-03-26', '13:30:00', '14:30:00'),
    (50000027, '2023-03-27', '14:00:00', '15:00:00'),
    (50000028, '2023-03-28', '15:30:00', '16:30:00'),
    (50000029, '2023-03-29', '16:00:00', '17:00:00'),
    (50000030, '2023-03-30', '17:30:00', '18:30:00'),
    (50000031, '2023-04-01', '08:30:00', '09:30:00'),
    (50000032, '2023-04-02', '09:00:00', '10:00:00'),
    (50000033, '2023-04-03', '10:30:00', '11:30:00'),
    (50000034, '2023-04-04', '11:00:00', '12:00:00'),
    (50000035, '2023-04-05', '12:30:00', '13:30:00'),
    (50000036, '2023-04-06', '13:00:00', '14:00:00'),
    (50000037, '2023-04-07', '14:30:00', '15:30:00'),
    (50000038, '2023-04-08', '15:00:00', '16:00:00'),
    (50000039, '2023-04-09', '16:30:00', '17:30:00'),
    (50000040, '2023-04-10', '17:00:00', '18:00:00'),
    (50000041, '2023-04-11', '08:00:00', '09:00:00'),
    (50000042, '2023-04-12', '09:30:00', '10:30:00'),
    (50000043, '2023-04-13', '10:00:00', '11:00:00'),
    (50000044, '2023-04-14', '11:30:00', '12:30:00'),
    (50000045, '2023-04-15', '12:00:00', '13:00:00'),
    (50000046, '2023-04-16', '13:30:00', '14:30:00'),
    (50000047, '2023-04-17', '14:00:00', '15:00:00'),
    (50000048, '2023-04-18', '15:30:00', '16:30:00'),
    (50000049, '2023-04-19', '16:00:00', '17:00:00'),
    (50000050, '2023-04-20', '17:30:00', '18:30:00');

INSERT INTO instructor_availability (instructor_id, timeslot_id) VALUES
    (10000001, 50000001),
    (10000002, 50000002),
    (10000003, 50000003),
    (10000004, 50000004),
    (10000005, 50000005),
    (10000006, 50000006),
    (10000007, 50000007),
    (10000008, 50000008),
    (10000009, 50000009),
    (10000010, 50000010),
    (10000001, 50000011),
    (10000002, 50000012),
    (10000003, 50000013),
    (10000004, 50000014),
    (10000005, 50000015),
    (10000006, 50000016),
    (10000007, 50000017),
    (10000008, 50000018),
    (10000009, 50000019),
    (10000010, 50000020),
    (10000001, 50000021),
    (10000002, 50000022),
    (10000003, 50000023),
    (10000004, 50000024),
    (10000005, 50000025),
    (10000006, 50000026),
    (10000007, 50000027),
    (10000008, 50000028),
    (10000009, 50000029),
    (10000010, 50000030),
    (10000001, 50000031),
    (10000002, 50000032),
    (10000003, 50000033),
    (10000004, 50000034),
    (10000005, 50000035),
    (10000006, 50000036),
    (10000007, 50000037),
    (10000008, 50000038),
    (10000009, 50000039),
    (10000010, 50000040),
    (10000001, 50000041),
    (10000002, 50000042),
    (10000003, 50000043),
    (10000004, 50000044),
    (10000005, 50000045),
    (10000006, 50000046),
    (10000007, 50000047),
    (10000008, 50000048),
    (10000009, 50000049),
    (10000010, 50000050);

INSERT INTO lessons (lesson_id, skill_level, lesson_type, instrument_type, timeslot_id, enrolled, max_enrolled, min_enrolled, genre, instructor_id, pricing_id) VALUES
    (20000001, 'Beginner', 'Individual', 'Piano', 50000001, NULL, NULL, NULL, NULL, 10000001, 12345678),
    (20000002, 'Intermediate', 'Group', 'Guitar', 50000002, 0, 10, 2, NULL, 10000002, 56789012),
    (20000003, 'Advanced', 'Ensemble', NULL, 50000003, 0, 15, 3, 'Classical', 10000001, 90123456),
    (20000004, 'Intermediate', 'Individual', 'Violin', 50000004, NULL, NULL, NULL, NULL, 10000004, 23456789),
    (20000005, 'Advanced', 'Group', 'Saxophone', 50000005, 0, 10, 2, NULL, 10000005, 67890123),
    (20000006, 'Beginner', 'Ensemble', NULL, 50000006, 0, 15, 3, 'Jazz', 10000005, 78901234),
    (20000007, 'Advanced', 'Individual', 'Drums', 50000007, NULL, NULL, NULL, NULL, 10000007, 34567890),
    (20000008, 'Beginner', 'Group', 'Trumpet', 50000008, 0, 10, 2, NULL, 10000008, 45678901),
    (20000009, 'Intermediate', 'Ensemble', NULL, 50000009, 0, 15, 3, 'Rock', 10000009, 89012345),
    (20000010, 'Beginner', 'Individual', 'Flute', 50000010, NULL, NULL, NULL, NULL, 10000010, 12345678),
    (20000011, 'Intermediate', 'Group', 'Bass Guitar', 50000011, 0, 10, 2, NULL, 10000001, 56789012),
    (20000012, 'Advanced', 'Ensemble', NULL, 50000012, 0, 15, 3, 'Pop', 10000001, 90123456),
    (20000013, 'Intermediate', 'Individual', 'Piano', 50000013, NULL, NULL, NULL, NULL, 10000003, 23456789),
    (20000014, 'Advanced', 'Group', 'Guitar', 50000014, 0, 10, 2, NULL, 10000004, 67890123),
    (20000015, 'Beginner', 'Ensemble', NULL, 50000015, 0, 15, 3, 'Blues', 10000005, 78901234),
    (20000016, 'Advanced', 'Individual', 'Violin', 50000016, NULL, NULL, NULL, NULL, 10000006, 34567890),
    (20000017, 'Beginner', 'Group', 'Saxophone', 50000017, 0, 10, 2, NULL, 10000007, 45678901),
    (20000018, 'Intermediate', 'Ensemble', NULL, 50000018, 0, 15, 3, 'Funk', 10000009, 89012345),
    (20000019, 'Beginner', 'Individual', 'Drums', 50000019, NULL, NULL, NULL, NULL, 10000009, 12345678),
    (20000020, 'Intermediate', 'Group', 'Trumpet', 50000020, 0, 10, 2, NULL, 10000010, 56789012);

INSERT INTO attendance (lesson_id, student_id) VALUES
    (20000001, 10000001),
    (20000002, 10000002),
    (20000002, 10000003),
    (20000002, 10000004),
    (20000002, 10000005),
    (20000003, 10000006),
    (20000003, 10000007),
    (20000003, 10000008),
    (20000003, 10000009),
    (20000003, 10000010),
    (20000003, 10000011),
    (20000003, 10000012),
    (20000003, 10000013),
    (20000003, 10000014),
    (20000003, 10000015),
    (20000004, 10000016),
    (20000005, 10000017),
    (20000005, 10000018),
    (20000015, 10000019),
    (20000006, 10000020),
    (20000006, 10000021),
    (20000006, 10000022),
    (20000006, 10000023),
    (20000006, 10000024),
    (20000006, 10000025),
    (20000006, 10000026),
    (20000006, 10000027),
    (20000007, 10000028),
    (20000008, 10000029),
    (20000008, 10000030),
    (20000008, 10000031),
    (20000008, 10000032),
    (20000008, 10000033),
    (20000009, 10000034),
    (20000009, 10000035),
    (20000009, 10000036),
    (20000009, 10000037),
    (20000009, 10000038),
    (20000009, 10000039),
    (20000009, 10000040),
    (20000009, 10000041),
    (20000009, 10000042),
    (20000009, 10000043),
    (20000009, 10000044),
    (20000010, 10000045),
    (20000011, 10000046),
    (20000011, 10000047),
    (20000011, 10000048),
    (20000011, 10000049),
    (20000011, 10000050);