USE Minions100

ALTER TABLE Users
ADD CONSTRAINT DF_Users_LastLoginTime
DEFAULT GETDATE() FOR LastLoginTime

INSERT INTO Users (Username, [Password], IsDeleted)
     VALUES 
	       ('KOKOSHIB', 'kokoshib1',1)




SELECT * FROM Users