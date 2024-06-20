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

-- 4. From the following table write a query in SQL to return only the rows for product that have a sellstartdate that is not NULL and a productline of 'T'. 
-- Return productid, productnumber, and name. Arranged the output in ascending order on name. 

SELECT pprod.ProductID as 'Product ID', pprod.ProductNumber as 'Product Number', pprod.Name as 'Name of product'
FROM Production.Product as pprod
WHERE pprod.SellStartDate IS NOT NULL and pprod.ProductLine = 'T'
ORDER BY pprod.Name ASC

--5. From the following table write a query in SQL to return all rows from the salesorderheader table in Adventureworks database and calculate 
--the percentage of tax on the subtotal have decided. 
--Return salesorderid, customerid, orderdate, subtotal, percentage of tax column. 
--Arranged the result set in ascending order on subtotal. 

SELECT sso.SalesOrderID as 'Sales order ID', sso.SalesPersonID as 'ID sales Person', sso.SubTotal as 'Value subtotal', sso.TaxAmt as 'Tax Percent'
FROM Sales.SalesOrderHeader as sso
ORDER BY sso.SubTotal DESC












