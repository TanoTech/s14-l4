CREATE PROCEDURE AddEmployee 
    @LastName NVARCHAR(20),
    @FirstName NVARCHAR(20),
    @CF CHAR(16),
    @Age INT,
    @MonthlyIncome DECIMAL(10, 2),
    @FiscalDetraction CHAR(1),
    @EmploymentDate DATETIME,
    @JobID INT
AS
BEGIN
    INSERT INTO Employees (LastName, FirstName, CF, Age, MonthlyIncome, FiscalDetraction, EmployementDate, JobID)
    VALUES (@LastName, @FirstName, @CF, @Age, @MonthlyIncome, @FiscalDetraction, @EmploymentDate, @JobID);
END;
GO