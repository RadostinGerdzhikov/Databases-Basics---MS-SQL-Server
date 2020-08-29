USE Minions100

CREATE TABLE Users(
 Id BIGINT PRIMARY KEY IDENTITY,
 Username VARCHAR(30) UNIQUE NOT NULL,
 [Password] VARCHAR(26) NOT NULL,
 ProfilePicture VARBINARY(MAX)
 CHECK(DATALENGTH(ProfilePicture) <= 9000 * 1024),
 LastLoginTime DATETIME2,
 IsDeleted BIT
)
INSERT INTO Users (Username, [Password], LastLoginTime, IsDeleted)
       VALUES
	          ('Kokosh1','12345','12-06-1982',1),
			  ('Kokosh2','12346', '10-01-3001',1),
			  ('Kokosh3','12346','01-02-1923',1),
			  ('Kokosh4','12346','12-09-1989',0),
			  ('Kokosh5','12346','09-15-2010',1)
			  