CREATE DATABASE SoftUni1
USE SoftUni1

CREATE TABLE Towns(
  Id INT PRIMARY KEY IDENTITY,
  [NAME] NVARCHAR(25) NOT NULL,
)

CREATE TABLE Addresses (
	Id INT PRIMARY KEY IDENTITY,
	AddressText NVARCHAR(61) NOT NULL,
	TownId INT FOREIGN KEY REFERENCES Towns(Id) NOT NULL,
)


CREATE TABLE Departments (
    Id INT PRIMARY KEY IDENTITY, 
 	[Name] NVARCHAR(25) NOT NULL,
)

CREATE TABLE Employees (
	Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(20) NOT NULL,
	MiddleName NVARCHAR(20),
	LastName NVARCHAR(20) NOT NULL,
	JobTitle NVARCHAR(40) NOT NULL,
	DepartmentId SMALLINT NOT NULL,
	HireDate DATE NOT NULL,
	Salary DECIMAL(7,2) NOT NULL,
	AdressId INT FOREIGN KEY REFERENCES Addresses(Id)
)

 