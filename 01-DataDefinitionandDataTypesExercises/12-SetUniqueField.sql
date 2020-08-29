USE Minions100

ALTER TABLE Users
DROP CONSTRAINT [PK_Users_IdPrimaryKey]

ALTER TABLE Users
ADD CONSTRAINT [PK_Users_IdPrimaryKey]
PRIMARY KEY (Id)

ALTER TABLE Users
ADD CONSTRAINT CK_Users_UsernameLength
CHECK(LEN(Username) >= 3)

