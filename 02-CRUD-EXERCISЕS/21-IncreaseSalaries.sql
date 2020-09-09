USE SoftUni

UPDATE [Employees]
	SET Salary += salary * 0.12
	FROM Employees
	WHERE DepartmentID = '1' 
	OR DepartmentID = '2' 
	OR DepartmentID = '4'
	OR DepartmentID = '11'

SELECT [Salary] From Employees

