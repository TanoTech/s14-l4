SELECT e.*, j.JobDescription FROM Employees e JOIN Jobs j ON e.JobID = j.JobID WHERE Age > 29;
SELECT e.*, j.JobDescription FROM Employees e JOIN Jobs j On e.JobID = j.JobID WHERE MonthlyIncome >= 800.00;
SELECT e.*, j.JobDescription FROM Employees e JOIN Jobs j On e.JobID = j.JobID WHERE FiscalDetraction = 'Y';
SELECT e.*, j.JobDescription FROM Employees e JOIN Jobs j On e.JobID = j.JobID WHERE FiscalDetraction = 'N';
SELECT e.*, j.JobDescription FROM Employees e JOIN Jobs j On e.JobID = j.JobID WHERE LastName LIKE 'G%' ORDER BY LastName;
SELECT COUNT(*) as NumeroDipendenti FROM Employees;
SELECT SUM(MonthlyIncome) as TotaleStipendi FROM Employees;
SELECT AVG(MonthlyIncome) as MediaStipendi FROM Employees;
SELECT MAX(MonthlyIncome) as MassimoStipendi FROM Employees;
SELECT MIN(MonthlyIncome) as MinimoStipendi FROM Employees;
SELECT * FROM Employees WHERE EmployementDate BETWEEN '1900-01-01' AND '2024-02-08';

DECLARE @JobDescription NVARCHAR(50) = 'Developer';
SELECT e.*, j.JobDescription 
FROM Employees e
JOIN Jobs j ON e.JobID = j.JobID
WHERE j.JobDescription = @JobDescription;

SELECT AVG(Age) as EtaMedia FROM Employees;