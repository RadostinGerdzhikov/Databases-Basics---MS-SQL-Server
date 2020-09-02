CREATE DATABASE Hotel
USE Hotel

CREATE TABLE Employees (
	Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(43) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Title NVARCHAR(30) NOT NULL,
	Notes NVARCHAR(100)
)

INSERT INTO Employees(FirstName, LastName, Title)
       VALUES 
             ('Hikotomo', 'Yroromo', 'Sales manager - Asia'),
             ('Ривалдо', 'Куркумапенков', 'Picolo'),
             ('Redjep', 'Erdogan', 'President')


CREATE TABLE Customers (
   AccountNumber INT PRIMARY KEY,
   FirstName NVARCHAR(30) NOT NULL,
   LastName NVARCHAR(50) NOT NULL,
   PhoneNumber NVARCHAR(40),
   EmergencyName NVARCHAR(30),
   EmergencyNumber NVARCHAR(40) NOT NULL,
   Notes NVARCHAR(100)
)

 INSERT INTO Customers (AccountNumber, FirstName, LastName, EmergencyNumber)
    VALUES
	     (3152, 'Ivo', 'Kenov', '0980/234567'),
	     (312, 'Кени', 'Ивов', '032/234567'),
	     (31234, 'Кун', 'Стоичков', '088/234567')


CREATE TABLE RoomStatus (
	Id INT PRIMARY KEY IDENTITY,
	RoomStatus NVARCHAR(10) NOT NULL,
	Notes NVARCHAR(100) NOT NULL,
)

INSERT INTO RoomStatus(RoomStatus,Notes)
    VALUES 
	       ('Free','Good window view'),
	       ('Not Free','The bath is form heaven'),
	       ('Free','The best room for recreation')


CREATE TABLE RoomTypes (
  Id INT PRIMARY KEY IDENTITY,
  RoomType NVARCHAR(20) NOT NULL,
  Notes NVARCHAR(100),
)

INSERT INTO RoomTypes (RoomType)
    VALUES 
	      ('double'),
		  ('apartment'),
		  ('studio')

CREATE TABLE BedTypes(
   Id INT PRIMARY KEY IDENTITY,
   BedType NVARCHAR(20) NOT NULL,
   Notes NVARCHAR(100)
)

INSERT INTO BedTypes (BedType)
	VALUES 
	      ('Bed for sleeping'),       
	      ('Bed for dreaming'),       
	      ('Bed for mooning')       

CREATE TABLE Rooms(
    RoomNumber INT PRIMARY KEY IDENTITY,
	RoomType INT FOREIGN KEY REFERENCES RoomTypes(Id) NOT NULL,
	BedType INT FOREIGN KEY REFERENCES BedTypes(Id) NOT NULL,
	Rate DECIMAL (6,2) NOT NULL,
	RoomStatus INT FOREIGN KEY REFERENCES RoomStatus(Id) NOT NULL,
	Notes NVARCHAR(100)
)
  
INSERT INTO Rooms (RoomType, BedType, Rate, RoomStatus)
     VALUES
           (1,1,4444.44,1),   
           (2,2,5555.55,2),   
           (3,3,6666.66,3)   


CREATE TABLE Payments (
  Id INT PRIMARY KEY IDENTITY,
  EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
  PaymentDate DATE NOT NULL,
  AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
  FirstDateOccupied DATE NOT NULL,
  LastDateOccupied DATE NOT NULL,
  TotalDays SMALLINT NOT NULL,
  AmountCharged DECIMAL(7,2) NOT NULL,
  TaxRate DECIMAL(4,2) NOT NULL,
  TaxAmount DECIMAL(4,2) NOT NULL,
  PaymentTotal DECIMAL(8,2) NOT NULL,
  Notes VARCHAR(100)
)


INSERT INTO Payments (EmployeeId, PaymentDate, Accountnumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal)
   VALUES
          (1,'12-01-2001',3152,'12-11-2001','10-01-2001',10,23456.78,20.22,23.22,26000),
          (2,'12-01-2001',312,'12-11-2001','10-01-2001',10,23456.78,20.22,23.22,26000),
          (3,'12-01-2001',31234,'12-11-2001','10-01-2001',10,23456.78,20.22,23.22,26000)




CREATE TABLE Occupancies (
  Id INT PRIMARY KEY IDENTITY,
  EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
  DateOccupied DATE NOT NULL,
  AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber),
  RoomNumber INT FOREIGN KEY REFERENCES Rooms(RoomNumber),
  RateApplied INT,
  PhoneCharge DECIMAL(4,2) NOT NULL,
  Notes NVARCHAR(100)
)

  INSERT INTO Occupancies (EmployeeId, DateOccupied, AccountNumber, RoomNumber, PhoneCharge)
   VALUES 
         (1, '09-29-1900', 3152, 1, 20.22),
         (2, '01-31-1900', 312, 2, 21.22),
         (3, '02-14-1932', 312, 3, 01.22)






      