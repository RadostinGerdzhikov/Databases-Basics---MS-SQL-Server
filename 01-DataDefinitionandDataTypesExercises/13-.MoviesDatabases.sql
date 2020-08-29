USE Movies100
CREATE DATABASE Movies100

CREATE TABLE Directors (
 Id INT PRIMARY KEY IDENTITY,
 DirectorName NVARCHAR(30) NOT NULL,
 Notes NVARCHAR(MAX)
)

--SELECT * FROM Directors

INSERT INTO Directors (DirectorName)
       VALUES 
	         ('Sasakis'),
			 ('Petros'),
			 ('Bobukas'),
			 ('Димитров'),
			 ('Costurica')
	           
CREATE TABLE Genres(
Id INT PRIMARY KEY IDENTITY,
GenreName NVARCHAR(30) NOT NULL,
NOTES NVARCHAR(MAX)
)

--SELECT * FROM Genres
INSERT INTO Genres(GenreName)
      VALUES
	        ('Drama'),
			('Comedy'),
			('Dramedy'),
			('Documentary'),
			('Biography')

--SELECT * FROM Categories

CREATE TABLE Categories (
Id INT PRIMARY KEY IDENTITY,
CategoryName NVARCHAR(30) NOT NULL,
Notes NVARCHAR(MAX)
)
INSERT INTO Categories(CategoryName)
   VALUES 
         ('Best director'),
		 ('Best comedy'),
		 ('Best drama'),
		 ('Best second role'),
		 ('The prise of fans')

CREATE TABLE Movies (
Id INT PRIMARY KEY IDENTITY,
Title NVARCHAR(100) NOT NULL,
DirectorId INT FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
CopyrightYear SMALLINT,
[Length] DECIMAL(5,2),
GenreId INT FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NOT NULL,
Rating BIGINT NOT NULL,
Notes NVARCHAR(MAX)
)

--SELECT * FROM Movies

INSERT INTO Movies(Title, DirectorId, [Length], GenreId, CategoryId, Rating)
     VALUES    
	       ('X-MAN',1, 120.33, 3, 1, 200000),
		   ('Titanic',2, 121.33, 1, 2, 100000),
		   ('Бялото око',3, 60.33, 3, 3, 200),
		   ('Japan airplane',5, 75.01, 4, 5, 13800),
		   ('The horse',4, 120.33, 5, 4, 80000) 

SELECT * FROM Categories 
SELECT * FROM Directors 
SELECT * FROM Genres 
SELECT * FROM Movies 


