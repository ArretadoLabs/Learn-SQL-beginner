--USE AdventureWorks2022


-- 1 - From the following table write a query in SQL to retrieve all rows and columns from the employee table in the Adventureworks database. 
-- Sort the result set in ascending order on jobtitle. 
SELECT *
FROM HumanResources.Employee as HE
ORDER BY HE.JobTitle ASC

-- ====================================================================================================

--2. From the following table write a query in SQL to retrieve all rows and columns from the employee table using table aliasing in the Adventureworks database. 
--Sort the output in ascending order on lastname. 

SELECT *
FROM Person.Person as pp
ORDER BY pp.LastName ASC

-- ====================================================================================================

-- 3. From the following table write a query in SQL to return all rows and a subset of the columns (FirstName, LastName, businessentityid) 
-- from the person table in the AdventureWorks database. 
-- The third column heading is renamed to Employee_id. Arranged the output in ascending order by lastname. 

SELECT pp.FirstName as 'First Name', pp.LastName as 'Last Name', pp.BusinessEntityID as 'Employee ID'
FROM Person.Person as pp
ORDER BY pp.LastName ASC


















