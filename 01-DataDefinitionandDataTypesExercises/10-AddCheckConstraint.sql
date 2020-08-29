USE Minions100

ALTER TABLE Users
ADD CONSTRAINT CK_Users_PasswordLength
CHECK(LEN([Password]) >= 5)

--ALTER TABLE Users
--DROP CONSTRAINT [CK_Users_PasswordLength] 



