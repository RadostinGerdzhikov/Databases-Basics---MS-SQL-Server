CREATE TABLE Students (
	StudentID INT PRIMARY KEY,	
	[Name] NVARCHAR(50),
)

CREATE TABLE Exams (
    ExamID INT PRIMARY KEY,
	[Name] NVARCHAR(80)
)

CREATE TABLE StudentsExams (
	StudentID INT FOREIGN KEY REFERENCES
	Students(StudentID),	
	ExamID INT FOREIGN KEY REFERENCES Exams(ExamID),
	PRIMARY KEY(StudentID, ExamID)
)

INSERT INTO Students
	VALUES
	      (1,'Mila'),
	      (2,'Toni'),
          (3,'Ron')

INSERT INTO Exams
	VALUES
	       (101, 'SpringMVC'),
	       (102, 'Neo4j'),
	       (103, 'Oracle 11g')

INSERT INTO StudentsExams
	VALUES 
	      (1,101),
	      (1,102),
	      (2,101),
	      (3,103),
	      (2,102),
	      (2,103)


--SELECT s.[Name], e.[Name] FROM StudentsExams AS se
--JOIN Students as s ON se.StudentID = s.StudentID
--JOIN Exams as e ON se.ExamID = e.ExamID