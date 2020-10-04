CREATE DATABASE Documents
USE Documents

CREATE TABLE Passports (
  PassportID INT PRIMARY KEY,
  PassportNumber CHAR(8) NOT NULL
)

CREATE TABLE Persons (
	PersonID INT PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	Salary DECIMAL(7,2) NOT NULL,
	PassportID INT NOT NULL 
)

INSERT INTO Persons (PersonID, FirstName, Salary	,PassportID)
	VALUES
	      (1, 'Roberto', 43300.00, 102),
	      (2, 'Tom', 56100.00, 103),
	      (3, 'Yana', 60200.00, 101)

INSERT INTO Passports (PassportID, PassportNumber)
	VALUES
	      (101, 'N34FG21B'),
	      (102, 'K65LO4R7'),
	      (103, 'ZE657QP2')

ALTER TABLE Persons 
	ADD FOREIGN KEY (PassportId)
	REFERENCES Passports(PassportId)

SELECT * 
	FROM Persons AS p
	JOIN Passports AS pass on p.PassportID = pass.PassportID

SELECT *
	FROM Passports
	
