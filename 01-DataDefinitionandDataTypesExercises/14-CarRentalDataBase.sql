CREATE DATABASE CarRental
USE CarRental

CREATE TABLE Categories(
	Id INT PRIMARY KEY IDENTITY,
	CategoryName NVARCHAR(50) UNIQUE NOT NULL,
	DailyRate BIGINT,
	WeeklyRate BIGINT,
	MontlyRate BIGINT,
	WeekendRate BIGINT NOT NULL
)

INSERT INTO Categories(CategoryName, WeekendRate)
      VALUES
	         ('Cars', 1560),
			 ('Motori', 10000),
			 ('Snowmotors',10000000)


CREATE TABLE Cars (
	Id INT PRIMARY KEY IDENTITY,
	PlateNumber NVARCHAR(30) UNIQUE NOT NULL,
	Manufacturer NVARCHAR(50) NOT NULL,
	Model NVARCHAR(30) UNIQUE NOT NULL,
	CarYear SMALLINT NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
	Doors TINYINT NOT NULL,
	Picture VARBINARY(MAX)
	CHECK(DATALENGTH(picture) <= 400 * 1024),
	Condition NVARCHAR(200),
	Available BIT NOT NULL,
)

INSERT INTO Cars(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Available)
      VALUES
	    ('ch-9090-pv','Fiat','Punto','4356',1,4,1),
	    ('pm-kervan-10000','Tesla','BulgarianModel','1000',2,3,0),
	    ('kk-VANKO2-pv','Karuca','Dvorna','0009',3,0,1)
	

	
CREATE TABLE Employees(
	Id INT PRIMARY KEY IDENTITY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Title NVARCHAR(30) NOT NULL,
	Notest NVARCHAR(100)
)

INSERT INTO Employees(FirstName, LastName, Title)
       VALUES 
	          ('Kokoreo', 'Kishinev', 'Sales manger-Haiti'),
			  ('Павлин', 'Кумqev', 'CEO'),
			  ('Todor', 'Kozadragnev', 'cleaner')


 CREATE TABLE Customers(
   Id INT PRIMARY KEY IDENTITY,
   DriverLicenceNumber INT UNIQUE NOT NULL,
   FullName NVARCHAR(100) NOT NULL,
   [Address] NVARCHAR(50) NOT NULL,
   City NVARCHAR(43) NOT NULL,
   Zipcode SMALLINT NOT NULL,
   Notes NVARCHAR(100)
)

INSERT INTO Customers(DriverLicenceNumber, FullName, [Address], City, Zipcode)
       VALUES
	         (123455,'Пезодром Филев Аркутин','ул. Ямайка 14','Каспичан',009),
	         (0000345,'Jon Travolta Simens','11 River str.','Washigton d.s',4545),
	         (1200,'Vilareal Realmadrit Peshopejro','18 Paelq str.','Valqdolid',422)

-- Delete column in table
-- ALTER TABLE RentalOrders
-- DROP COLUMN NOTES


-- Add column in table
-- ALTER TABLE RentalOrders
-- ADD Notes NVARCHAR(100)


CREATE TABLE RentalOrders(
  Id INT PRIMARY KEY IDENTITY,
  EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
  CustomerId INT FOREIGN KEY REFERENCES Customers(Id) NOT NULL,
  CarId INT FOREIGN KEY REFERENCES Cars(Id) NOT NULL,
  TankLevel NVARCHAR(10) NOT NULL,
  KilometrageStart DECIMAL(7,2) NOT NULL,
  KilometrageEnd DECIMAL (7,2) NOT NULL,
  TotalKilometrage DECIMAL (10, 2) NOT NULL,
  StartDate DATE NOT NULL,
  EndDate DATE NOT NULL,
  TotalDays SMALLINT NOT NULL,
  RateApplied DECIMAL(4,2) NOT NULL,
  TaxRate DECIMAL(4,2) NOT NULL,
  OrderStatus NVARCHAR(20) NOT NULL,
  NOTES NVARCHAR(100)
)


INSERT INTO RentalOrders(EmployeeId, CustomerId, CarId, TankLevel, KilometrageStart, KilometrageEnd, TotalKilometrage, StartDate, EndDate, TotalDays, RateApplied, TaxRate, OrderStatus)
    VALUES 
	        (1, 2, 3,'empty', 12345.66 , 10000.24, 12345678.45, '1982-12-06', '2000-10-10', 10000, 20.22, 24.00, 'available'),
	        (2, 3, 1,'good', 12345.66 , 10000.24, 12345678.45, '1982-12-06', '2000-10-10', 10000, 20.22, 24.00, 'NOT available'),
	        (3, 1, 2,'up to roof', 12345.66 , 10000.24, 12345678.45, '1982-12-06', '2000-10-10', 10000, 20.22, 24.00, 'NOT available')

--SELECT * FROM Cars
--SELECT * FROM Categories
--SELECT * FROM Customers
--SELECT * FROM Employees
--SELECT * FROM RentalOrders

