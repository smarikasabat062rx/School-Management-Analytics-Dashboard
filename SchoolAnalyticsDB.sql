CREATE DATABASE SchoolAnalyticsDB;
USE SchoolAnalyticsDB;

CREATE TABLE Fact_Academics (
    Academic_ID INT PRIMARY KEY,
    Student_ID VARCHAR(20),
    Subject VARCHAR(50),
    Exam_Type VARCHAR(20),
    Rote_Learning_Score INT,
    Conceptual_Understanding_Score INT,
    Practical_Project_Score INT
);

CREATE TABLE Fact_Holistic_Growth (
    Activity_ID INT PRIMARY KEY,
    Student_ID VARCHAR(20),
    Civic_Sense_Score INT,
    Sports_Activity VARCHAR(50),
    Sports_Performance_Grade VARCHAR(5),
    Creativity_Index INT
);

CREATE TABLE Fact_Attendance (
    Attendance_ID INT PRIMARY KEY,
    Student_ID VARCHAR(20),
    Date DATE,
    Morning_Session_Status VARCHAR(20),
    Evening_Lab_Status VARCHAR(20),
    Snacks_Consumed VARCHAR(10)
);

-- 1. Students Profile Table Structure
CREATE TABLE Dim_Students (
    Student_ID VARCHAR(20) PRIMARY KEY,
    Student_Name VARCHAR(100),
    Class INT,
    Section VARCHAR(5),
    Lab_Group_ID VARCHAR(20),
    Parent_Name VARCHAR(100),
    Parent_Email VARCHAR(100),
    Tablet_Issued VARCHAR(10),
    Computer_Lab_Access VARCHAR(10),
    Monthly_Fees INT,
    Fees_Status VARCHAR(20)
);

-- 2. Teachers Staff Table Structure
CREATE TABLE Dim_Teachers (
    Teacher_ID VARCHAR(20) PRIMARY KEY,
    Teacher_Name VARCHAR(100),
    Teacher_Role VARCHAR(50),
    Class_Assigned INT,
    Section_Assigned VARCHAR(5),
    Subject_Expertise VARCHAR(50),
    Monthly_Salary INT
);


SELECT*FROM Dim_Students;
SELECT COUNT(*) FROM Dim_Students;
SELECT*FROM Dim_Teachers;
SELECT COUNT(*) FROM Dim_Teachers;
SELECT*FROM Fact_Academics;
SELECT COUNT(*) FROM Fact_Academics;
SELECT*FROM Fact_Attendance;
SELECT COUNT(*) FROM Fact_Attendance;
SELECT*FROM Fact_Holistic_Growth;
SELECT COUNT(*) FROM Fact_Holistic_Growth;