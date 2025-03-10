-- Creation Order
-- 0. Schema
-- 1. Faculty
-- 2. Major
-- 3. Subject
-- 4. Teacher
-- 5. Lecturer
-- 6. Professor
-- 7. Function_Professor
-- 8. Course
-- 9. Search_Criteria

-- Creating the Schema
CREATE SCHEMA INSTANCE

-- Creating the Table Faculty
CREATE  TABLE INSTANCE.FACULTY ( 
	ABBREVIATION         VARCHAR(5) NOT NULL   ,
	NAME                 VARCHAR(100) NOT NULL   ,
	CONSTRAINT PK_FACULTY PRIMARY KEY ( ABBREVIATION )
 );

COMMENT ON TABLE INSTANCE.FACULTY IS 'An academic unit that specializes in a particular field and contains related subjects';

COMMENT ON COLUMN INSTANCE.FACULTY.ABBREVIATION IS 'An identifying abbreviation for the faculty.
E.g. "IT"';

COMMENT ON COLUMN INSTANCE.FACULTY.NAME IS 'The full name of the faculty.
E.g. "Information Technology"';


-- Creating the Table Major
CREATE  TABLE INSTANCE.MAJOR ( 
	ABBREVIATION         VARCHAR(5) NOT NULL   ,
	NAME                 VARCHAR(100) NOT NULL   ,
	FACULTY              VARCHAR(5) NOT NULL   ,
	CONSTRAINT PK_MAJOR PRIMARY KEY ( ABBREVIATION )
 );

ALTER TABLE INSTANCE.MAJOR ADD FOREIGN KEY FK_MAJOR_FACULTY ( FACULTY ) REFERENCES INSTANCE.FACULTY( ABBREVIATION ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.MAJOR IS 'A degree program.';

COMMENT ON COLUMN INSTANCE.MAJOR.ABBREVIATION IS 'An identifying abbreviation for the major.
E.g. "SWB"';

COMMENT ON COLUMN INSTANCE.MAJOR.NAME IS 'The full name for the major.
E.g. "Software Engineering and Media Computing"';

COMMENT ON COLUMN INSTANCE.MAJOR.FACULTY IS 'The faculty a major belongs to.
E.g. "IT" for "Software Engineering and Media Computing"';

-- Creating Table Subject
CREATE  TABLE INSTANCE.SUBJECT ( 
	SUBJECT_NUMBER       VARCHAR(15) NOT NULL   ,
	SUBJECT_NAME         VARCHAR(100) NOT NULL   ,
	SUBJECT_TYPE         CHAR(1) NOT NULL DEFAULT 'P'  ,
	PLANNED_STUPO_HOURS  INTEGER NOT NULL   ,
	PLANNED_SCHEDULE_HOURS INTEGER NOT NULL   ,
	SEMESTER             INTEGER    ,
	MAJOR                VARCHAR(5)    ,
	FACULTY              VARCHAR(5) NOT NULL   ,
	REMARK               VARCHAR(255)    ,
	CONSTRAINT PK_SUBJECT PRIMARY KEY ( SUBJECT_NUMBER )
 );

ALTER TABLE INSTANCE.SUBJECT ADD CONSTRAINT PSTUH_SUBJECT CHECK ( PLANNED_STUPO_HOURS >= 0 AND PLANNED_STUPO_HOURS <= 10 );

ALTER TABLE INSTANCE.SUBJECT ADD CONSTRAINT PSCHH_SUBJECT CHECK ( PLANNED_SCHEDULE_HOURS >= 0 AND PLANNED_SCHEDULE_HOURS <= 10 );

ALTER TABLE INSTANCE.SUBJECT ADD CONSTRAINT CNS_SUBJECT CHECK ( SEMESTER BETWEEN 1 AND 7 );

ALTER TABLE INSTANCE.SUBJECT ADD FOREIGN KEY FK_SUBJECT_FACULTY ( FACULTY ) REFERENCES INSTANCE.FACULTY( ABBREVIATION ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE INSTANCE.SUBJECT ADD FOREIGN KEY FK_SUBJECT_MAJOR ( MAJOR ) REFERENCES INSTANCE.MAJOR( ABBREVIATION ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.SUBJECT IS 'A specific subject listed in the curriculum of a major.';

COMMENT ON COLUMN INSTANCE.SUBJECT.SUBJECT_NUMBER IS 'An identifying number for the subject.
E.g. "R39.04995"';

COMMENT ON COLUMN INSTANCE.SUBJECT.SUBJECT_NAME IS 'The name of a subject.
E.g. "Information Systems"';

COMMENT ON COLUMN INSTANCE.SUBJECT.SUBJECT_TYPE IS 'If the subject is an compulsory "P", elective "W" or supplementary "Z"
E.g. "P" for "Information Systems"';

COMMENT ON COLUMN INSTANCE.SUBJECT.PLANNED_STUPO_HOURS IS 'The planned hours for this subject according to the StuPo.
E.g. "2"';

COMMENT ON COLUMN INSTANCE.SUBJECT.PLANNED_SCHEDULE_HOURS IS 'The planned hours for this subject according to the schedule.
E.g. "2"';

COMMENT ON COLUMN INSTANCE.SUBJECT.SEMESTER IS 'The planned semester for this subject according to the curriculum.
E.g. "6" for "Information Systems"';

COMMENT ON COLUMN INSTANCE.SUBJECT.MAJOR IS 'The major to which this subject belongs to.
E.g. "SWB"';

COMMENT ON COLUMN INSTANCE.SUBJECT.FACULTY IS 'The faculty of this subject.
E.g. "IT"';

COMMENT ON COLUMN INSTANCE.SUBJECT.REMARK IS 'An optional remark about the subject.';

-- Creating the Table Teacher
CREATE  TABLE INSTANCE.TEACHER ( 
	ID                   VARCHAR(15) NOT NULL   ,
	NAME                 VARCHAR(100) NOT NULL   ,
	FACULTY              VARCHAR(5) NOT NULL   ,
	REMARK               VARCHAR(255)    ,
	CONSTRAINT PK_TEACHER PRIMARY KEY ( ID )
 );

ALTER TABLE INSTANCE.TEACHER ADD FOREIGN KEY FK_TEACHER_FACULTY ( FACULTY ) REFERENCES INSTANCE.FACULTY( ABBREVIATION ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.TEACHER IS 'A person teaching a course.';

COMMENT ON COLUMN INSTANCE.TEACHER.ID IS 'An identifying number for the teacher.';

COMMENT ON COLUMN INSTANCE.TEACHER.NAME IS 'The name of the teacher.
E.g. "Steffen Schober"';

COMMENT ON COLUMN INSTANCE.TEACHER.FACULTY IS 'The faculty the teacher belongs to.
E.g. "IT" for "Steffen Schober"';

COMMENT ON COLUMN INSTANCE.TEACHER.REMARK IS 'An optional remark made by the teacher about themselves.';

-- Create the table Lecturer
CREATE  TABLE INSTANCE.LECTURER ( 
	TEACHER_ID           VARCHAR(15) NOT NULL   ,
	ADDRESS              VARCHAR(100) NOT NULL   ,
	IS_ACTIVE            BOOLEAN NOT NULL   ,
	CONSTRAINT PK_LECTURER PRIMARY KEY ( TEACHER_ID )
 );

ALTER TABLE INSTANCE.LECTURER ADD FOREIGN KEY FK_LECTURER_TEACHER ( TEACHER_ID ) REFERENCES INSTANCE.TEACHER( ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.LECTURER IS 'A contracted teacher, also known as "lecturer" in the project document.';

COMMENT ON COLUMN INSTANCE.LECTURER.TEACHER_ID IS 'An identifying number for the teacher.
Foreign Key from the teacher table.';

COMMENT ON COLUMN INSTANCE.LECTURER.ADDRESS IS 'Address of the lecturer.
In order to be able to write to the lecturers.
E.g. "Kanalstraße 33, Esslingen"';

-- Create the Table Professor
CREATE  TABLE INSTANCE.PROFESSOR ( 
	TEACHER_ID           VARCHAR(15) NOT NULL   ,
	CREDIT_HOUR_ACCOUNT  DECIMAL NOT NULL DEFAULT 0  ,
	IS_ACTIVE            BOOLEAN NOT NULL   ,
	CONSTRAINT PK_PROFESSOR PRIMARY KEY ( TEACHER_ID )
 );

ALTER TABLE INSTANCE.PROFESSOR ADD FOREIGN KEY FK_PROFESSOR_TEACHER ( TEACHER_ID ) REFERENCES INSTANCE.TEACHER( ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.PROFESSOR IS 'A permanently employed academic who is responsible for teaching and research, also known as "professor" in the project document.';

COMMENT ON COLUMN INSTANCE.PROFESSOR.TEACHER_ID IS 'An identifying number for the professor.
Foreign Key from the teacher table.';

COMMENT ON COLUMN INSTANCE.PROFESSOR.CREDIT_HOUR_ACCOUNT IS 'Additional work beyond the 18 compulsory work hours  for a professor is credited to a credit hour account, less work is debited from this account.
E.g. "2"';

-- Create the Table Function_Professor
CREATE  TABLE INSTANCE.FUNCTION_PROFESSOR ( 
	FUNCTION_START       VARCHAR(10) NOT NULL   ,
	PROFESSOR            VARCHAR(15) NOT NULL   ,
	NAME                 VARCHAR(100) NOT NULL   ,
	LOAD                 INTEGER NOT NULL   ,
	CONSTRAINT PK_FUNC_PROF_NAME PRIMARY KEY ( FUNCTION_START, PROFESSOR, NAME )
 );

ALTER TABLE INSTANCE.FUNCTION_PROFESSOR ADD CONSTRAINT CNS_FUNCTION CHECK ( LOAD >= 0 AND LOAD <= 10 );

ALTER TABLE INSTANCE.FUNCTION_PROFESSOR ADD FOREIGN KEY FK_FUNCTION_PROFESSOR ( PROFESSOR ) REFERENCES INSTANCE.PROFESSOR( TEACHER_ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.FUNCTION_PROFESSOR IS 'Responsibilities undertaken by a professor related to the management and organization of academic programs, faculty governance, and departmental operations.';

COMMENT ON COLUMN INSTANCE.FUNCTION_PROFESSOR.FUNCTION_START IS 'The semester in which a function starts.
E.g. "WS24/25"';

COMMENT ON COLUMN INSTANCE.FUNCTION_PROFESSOR.PROFESSOR IS 'The professor (id) which exercises this function.';

COMMENT ON COLUMN INSTANCE.FUNCTION_PROFESSOR.NAME IS 'The name of the function.
E.g. "Head of internship office"';

COMMENT ON COLUMN INSTANCE.FUNCTION_PROFESSOR.LOAD IS 'The hourly load of the function.
E.g. "2"';

-- Create the Table Course
CREATE  TABLE INSTANCE.COURSE ( 
	COURSE_START         VARCHAR(10) NOT NULL   ,
	SUBJECT              VARCHAR(15) NOT NULL   ,
	TEACHER              VARCHAR(15) NOT NULL   ,
	ACTUAL_STUPO_HOURS   INTEGER    ,
	ACTUAL_SCHEDULE_HOURS INTEGER    ,
	CREDITED_TEACHER_HOURS INTEGER    ,
	REMARK               VARCHAR(255)    ,
	CONSTRAINT PK_COURSE PRIMARY KEY ( SUBJECT, COURSE_START, TEACHER )
 );

ALTER TABLE INSTANCE.COURSE ADD CONSTRAINT CNS_COURSE CHECK ( ACTUAL_SCHEDULE_HOURS % 2 = 0 AND ACTUAL_SCHEDULE_HOURS >= 0 AND ACTUAL_SCHEDULE_HOURS <= 10 );

ALTER TABLE INSTANCE.COURSE ADD CONSTRAINT CNS_COURSE_0 CHECK ( ACTUAL_STUPO_HOURS >= 0 AND ACTUAL_STUPO_HOURS <= 10 );

ALTER TABLE INSTANCE.COURSE ADD CONSTRAINT CNS_COURSE_1 CHECK ( CREDITED_TEACHER_HOURS >= 0 AND CREDITED_TEACHER_HOURS <= 10 );

ALTER TABLE INSTANCE.COURSE ADD FOREIGN KEY FK_SUBJECT_TEACHER_SUBJECT ( SUBJECT ) REFERENCES INSTANCE.SUBJECT( SUBJECT_NUMBER ) ON DELETE NO ACTION ON UPDATE NO ACTION;

ALTER TABLE INSTANCE.COURSE ADD FOREIGN KEY FK_SUBJECT_TEACHER_TEACHER ( TEACHER ) REFERENCES INSTANCE.TEACHER( ID ) ON DELETE NO ACTION ON UPDATE NO ACTION;

COMMENT ON TABLE INSTANCE.COURSE IS 'A class that is held by a teacher in a specific semester (such as "WS24/25").';

COMMENT ON COLUMN INSTANCE.COURSE.COURSE_START IS 'The semester in which a class starts.
E.g. "WS24/25"';

COMMENT ON COLUMN INSTANCE.COURSE.SUBJECT IS 'The subject (number) which is taught in this course.
E.g. "R39.04995"';

COMMENT ON COLUMN INSTANCE.COURSE.TEACHER IS 'The teacher (id) teaching this course.';

COMMENT ON COLUMN INSTANCE.COURSE.ACTUAL_STUPO_HOURS IS 'The actual hours for this subject according to the StuPo.
E.g. "2"';

COMMENT ON COLUMN INSTANCE.COURSE.ACTUAL_SCHEDULE_HOURS IS 'The actual hours for this subject according to the schedule.
E.g. "2"';

COMMENT ON COLUMN INSTANCE.COURSE.CREDITED_TEACHER_HOURS IS 'The hours that will be credited to the teacher. This is part of the teacher''s workload.
E.g. "1"';

COMMENT ON COLUMN INSTANCE.COURSE.REMARK IS 'An optional remark about the course.';

-- Create the Table Search_Criteria
CREATE  TABLE INSTANCE.SEARCH_CRITERIA ( 
	SEMESTER_START       VARCHAR(10) NOT NULL   ,
	MAJOR                VARCHAR(5) NOT NULL   ,
	SEMESTER             INTEGER NOT NULL   
 );

COMMENT ON TABLE INSTANCE.SEARCH_CRITERIA IS 'A table necessary for user views.';

COMMENT ON COLUMN INSTANCE.SEARCH_CRITERIA.SEMESTER_START IS 'The semester for which the data is shown.
E.g. "WS24/25"';

COMMENT ON COLUMN INSTANCE.SEARCH_CRITERIA.MAJOR IS 'The major for which the data is shown.
E.g. "SWB"';

COMMENT ON COLUMN INSTANCE.SEARCH_CRITERIA.SEMESTER IS 'The semester of a major for which the data is shown.
E.g. "6" for "SWB"';








