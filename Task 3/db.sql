CREATE TABLE contact_persons (
 contact_person_id SERIAL NOT NULL,
 phone CHAR(13) UNIQUE NOT NULL,
 email TEXT UNIQUE NOT NULL
);

ALTER TABLE contact_persons ADD CONSTRAINT PK_contact_persons PRIMARY KEY (contact_person_id);


CREATE TABLE instructors (
 instructor_id SERIAL NOT NULL,
 person_number CHAR(13)UNIQUE NOT NULL,
 name TEXT NOT NULL,
 address TEXT NOT NULL,
 teaches_ensembles BOOLEAN NOT NULL
);

ALTER TABLE instructors ADD CONSTRAINT PK_instructors PRIMARY KEY (instructor_id);


CREATE TABLE instruments (
 instrument_id SERIAL NOT NULL,
 instrument_type TEXT NOT NULL
);

ALTER TABLE instruments ADD CONSTRAINT PK_instruments PRIMARY KEY (instrument_id);


CREATE TABLE known_instruments (
 instructor_id SERIAL NOT NULL,
 instrument_id SERIAL NOT NULL
);

ALTER TABLE known_instruments ADD CONSTRAINT PK_known_instruments PRIMARY KEY (instructor_id,instrument_id);


CREATE TABLE pricing (
 pricing_id SERIAL NOT NULL,
 price FLOAT(10) NOT NULL,
 lesson_type TEXT NOT NULL,
 skill_level TEXT NOT NULL,
 sibling_discount FLOAT(10) NOT NULL
);

ALTER TABLE pricing ADD CONSTRAINT PK_pricing PRIMARY KEY (pricing_id);
ALTER TABLE pricing ADD CONSTRAINT CHK_pricing_0 CHECK (skill_level IN ('Beginner', 'Intermediate', 'Advanced'));
ALTER TABLE pricing ADD CONSTRAINT CHK_pricing_1 CHECK (lesson_type IN ('Individual', 'Group', 'Ensemble'));


CREATE TABLE students (
 student_id SERIAL NOT NULL,
 name TEXT NOT NULL,
 person_number CHAR(13) UNIQUE NOT NULL,
 address TEXT NOT NULL,
 phone CHAR(13) UNIQUE NOT NULL,
 email TEXT UNIQUE NOT NULL,
 contact_person_id SERIAL
);

ALTER TABLE students ADD CONSTRAINT PK_students PRIMARY KEY (student_id);


CREATE TABLE timeslots (
 timeslot_id SERIAL NOT NULL,
 date DATE NOT NULL,
 start_time TIME(10) NOT NULL,
 end_time TIME(10) NOT NULL
);

ALTER TABLE timeslots ADD CONSTRAINT PK_timeslots PRIMARY KEY (timeslot_id);


CREATE TABLE instructor_availability (
 instructor_id SERIAL NOT NULL,
 timeslot_id SERIAL NOT NULL
);

ALTER TABLE instructor_availability ADD CONSTRAINT PK_instructor_availability PRIMARY KEY (instructor_id,timeslot_id);


CREATE TABLE lessons (
 lesson_id SERIAL NOT NULL,
 skill_level TEXT NOT NULL,
 lesson_type TEXT NOT NULL,
 instrument_type TEXT,
 timeslot_id SERIAL NOT NULL,
 enrolled INT,
 max_enrolled INT,
 min_enrolled INT,
 genre TEXT,
 instructor_id SERIAL NOT NULL,
 pricing_id SERIAL NOT NULL
);

ALTER TABLE lessons ADD CONSTRAINT PK_lessons PRIMARY KEY (lesson_id);
ALTER TABLE lessons ADD CONSTRAINT CHK_lessons_0 CHECK (skill_level IN ('Beginner', 'Intermediate', 'Advanced'));
ALTER TABLE lessons ADD CONSTRAINT CHK_lessons_1 CHECK (lesson_type IN ('Individual', 'Group', 'Ensemble'));



CREATE TABLE rentable_instruments (
 rentable_instrument_id SERIAL NOT NULL,
 category TEXT NOT NULL,
 instrument_type TEXT NOT NULL,
 brand TEXT NOT NULL,
 price FLOAT(10) NOT NULL,
 leased_until DATE,
 student_id SERIAL
);

ALTER TABLE rentable_instruments ADD CONSTRAINT PK_rentable_instruments PRIMARY KEY (rentable_instrument_id);


CREATE TABLE siblings (
 student_id SERIAL NOT NULL,
 sibling_id SERIAL NOT NULL
);

ALTER TABLE siblings ADD CONSTRAINT PK_siblings PRIMARY KEY (student_id,sibling_id);


CREATE TABLE attendance (
 student_id SERIAL NOT NULL,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE attendance ADD CONSTRAINT PK_attendance PRIMARY KEY (student_id,lesson_id);


ALTER TABLE known_instruments ADD CONSTRAINT FK_known_instruments_0 FOREIGN KEY (instructor_id) REFERENCES instructors (instructor_id);
ALTER TABLE known_instruments ADD CONSTRAINT FK_known_instruments_1 FOREIGN KEY (instrument_id) REFERENCES instruments (instrument_id);


ALTER TABLE students ADD CONSTRAINT FK_students_0 FOREIGN KEY (contact_person_id) REFERENCES contact_persons (contact_person_id);


ALTER TABLE instructor_availability ADD CONSTRAINT FK_instructor_availability_0 FOREIGN KEY (instructor_id) REFERENCES instructors (instructor_id);
ALTER TABLE instructor_availability ADD CONSTRAINT FK_instructor_availability_1 FOREIGN KEY (timeslot_id) REFERENCES timeslots (timeslot_id);


ALTER TABLE lessons ADD CONSTRAINT FK_lessons_0 FOREIGN KEY (timeslot_id) REFERENCES timeslots (timeslot_id);
ALTER TABLE lessons ADD CONSTRAINT FK_lessons_1 FOREIGN KEY (instructor_id) REFERENCES instructors (instructor_id);
ALTER TABLE lessons ADD CONSTRAINT FK_lessons_2 FOREIGN KEY (pricing_id) REFERENCES pricing (pricing_id);


ALTER TABLE rentable_instruments ADD CONSTRAINT FK_rentable_instruments_0 FOREIGN KEY (student_id) REFERENCES students (student_id);


ALTER TABLE siblings ADD CONSTRAINT FK_siblings_0 FOREIGN KEY (student_id) REFERENCES students (student_id);
ALTER TABLE siblings ADD CONSTRAINT FK_siblings_1 FOREIGN KEY (sibling_id) REFERENCES students (student_id);


ALTER TABLE attendance ADD CONSTRAINT FK_attendance_0 FOREIGN KEY (student_id) REFERENCES students (student_id);
ALTER TABLE attendance ADD CONSTRAINT FK_attendance_1 FOREIGN KEY (lesson_id) REFERENCES lessons (lesson_id);