CREATE PROCEDURE UpdateEmployee 
    @EmployeeID INT,
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
    UPDATE Employees
    SET LastName = @LastName,
        FirstName = @FirstName,
        CF = @CF,
        Age = @Age,
        MonthlyIncome = @MonthlyIncome,
        FiscalDetraction = @FiscalDetraction,
        EmployementDate = @EmploymentDate,
        JobID = @JobID
    WHERE EmployeeID = @EmployeeID;
END;
GO
