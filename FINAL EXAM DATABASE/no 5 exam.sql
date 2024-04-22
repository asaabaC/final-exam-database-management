CREATE TABLE students (
    Sno VARCHAR(10),
    Sname VARCHAR(50),
    SGPA DECIMAL(4, 2),
    Scity VARCHAR(50),
    Cno VARCHAR(10)
);

INSERT INTO students (Sno, Sname, SGPA, Scity, Cno) VALUES
('S1', 'Saman', 2.60, 'Kagalle', 'C1'),
('S2', 'Kamal', 2.45, 'Kandy', 'C2'),
('S3', 'Joe', 3.20, 'Galle', 'C3'),
('S4', 'Ruwan', 4.00, 'Kandy', 'C1'),
('S5', 'Asela', 3.50, 'Jaffina', 'C4'),
('S6', 'Asanka', 2.88, 'Galle', 'C2'),
('S7', 'Wasana', 2.75, 'Colombo', 'C3'),
('S8', 'Dilini', 3.35, 'Kandy', 'C1'),
('S9', 'Aruna', 2.76, 'Galle', 'C4'),
('S10', 'Gayani', 3.00, 'Jaffna', 'C4');
CREATE TABLE courses (
    Cno VARCHAR(10),
    Cname VARCHAR(50),
    Cduration INT
);

INSERT INTO courses (Cno, Cname, Cduration) VALUES
('C1', 'HNDA', 4),
('C2', 'HNDIT', 2),
('C3', 'HNDM', 3),
('C4', 'HNDE', 2);

SELECT Sname, SGPA
FROM students;

--part a
SELECT Sname, SGPA
FROM students;

--part b
SELECT Sname
FROM students
WHERE SGPA > 3.00;


part c

SELECT Cno, COUNT(*) AS Num_of_Students
FROM students
GROUP BY Cno;
 
 
 --part d
 SELECT S.Sname, S.SGPA, C.Cname
FROM students AS S
JOIN courses AS C ON S.Cno = C.Cno;


part e

SELECT *
FROM students
ORDER BY SGPA ASC;


-- --PART F

-- -- Database Installation and Configuration
-- -- DBAs are responsible for the initial installation and configuration of database management systems (DBMS).
-- -- Database Security
-- -- They manage and control access permissions and privileges to ensure that data security and integrity are maintained.
-- -- Backup and Recovery
-- -- DBAs regularly perform database backups to ensure data recovery in the event of system failures, errors, or disasters.
-- -- They are responsible for implementing backup and recovery procedures to minimize the risk of data loss.
-- -- Performance Monitoring and Tuning
-- -- DBAs monitor database performance and identify bottlenecks or areas for
--improvement.
-- -- Database Design and Implementation
-- -- DBAs work with developers to design and implement databases according to
--the organization's requirements.
-- -- Data Migration and Integration
-- -- DBAs manage the migration of data between different systems or versions
--of the database.
-- -- They integrate new data sources and ensure compatibility with existing 
--systems.
-- -- Disaster Recovery
-- -- DBAs develop and implement disaster recovery plans to ensure data availability and business continuity in the event of a disaster or system failure.
-- -- User Support and Training:
-- -- DBAs provide support to users, troubleshoot issues, and address concerns related to the database.
-- -- They ensure that the database environment complies with industry regulations and standards.
