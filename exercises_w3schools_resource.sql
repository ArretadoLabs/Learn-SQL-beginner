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





















