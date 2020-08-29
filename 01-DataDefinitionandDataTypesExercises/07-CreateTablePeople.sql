USE Minions100

CREATE TABLE People (
     Id BIGINT PRIMARY KEY IDENTITY,
	 [Name] NVARCHAR(200) NOT NULL,
	 Picture VARBINARY(MAX)
	 CHECK(DATALENGTH(Picture) >= 8000),
	 Height DECIMAL(6,2),
	 [Weight] DECIMAL(6,2),
	 Gender CHAR(1) NOT NULL,
	 Birthdate DATETIME NOT NULL,
	 Biography NVARCHAR(Max),
)

INSERT INTO People([Name], Gender, Birthdate)
         VALUES
		       ('Vili','f', '04-29-1957'),
		       ('Titi','m', '12-06-1982'),
		       ('Kokosh','m', '09-15-1982'),
		       ('Janger','m', '11-09-1982'),
			   ('Volen Siderov','m', '12-31-1965')