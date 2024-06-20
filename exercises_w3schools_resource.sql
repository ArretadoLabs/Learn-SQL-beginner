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

--6. From the following table write a query in SQL to create a list of unique jobtitles in the employee table in Adventureworks database. 
--Return jobtitle column and arranged the resultset in ascending order. 

SELECT hre.JobTitle as 'Job of people'
FROM HumanResources.Employee as hre
GROUP BY hre.JobTitle 

--7. From the following table write a query in SQL to calculate the total freight paid by each customer. 
--Return customerid and total freight. Sort the output in ascending order on customerid. 

SELECT sso.CustomerID as 'ID Customer', SUM(sso.Freight) as 'total_freight'
FROM Sales.SalesOrderHeader as sso
GROUP BY sso.CustomerID
ORDER BY sso.CustomerID ASC

--8. From the following table write a query in SQL to find the average and the sum of the subtotal for every customer. Return customerid, average and sum of the subtotal. 
--Grouped the result on customerid and salespersonid. Sort the result on customerid column in descending order. 

SELECT sso.CustomerID as 'Customer ID', sso.SalesPersonID as 'Sales Person ID', AVG(sso.SubTotal) as 'Value of Average sub total', SUM (sso.SubTotal) as 'Value of subtotal'
FROM Sales.SalesOrderHeader as sso
GROUP BY sso.CustomerID, sso.SalesPersonID
ORDER BY sso.CustomerID DESC

--9. From the following table write a query in SQL to retrieve total quantity of each productid which are in shelf of 'A' or 'C' or 'H'. 
--Filter the results for sum quantity is more than 500. Return productid and sum of the quantity. 
--Sort the results according to the productid in ascending order.

SELECT *
FROM Production.ProductInventory

SELECT ppi.ProductID as 'Product ID', SUM(ppi.Quantity) as 'Quantity Product' 
FROM Production.ProductInventory as ppi
WHERE ppi.Shelf IN ('A','C','H')
GROUP BY ppi.ProductID
HAVING SUM(ppi.Quantity) > 500
ORDER BY ppi.ProductID

--10. From the following table write a query in SQL to find the total quentity for a group of locationid multiplied by 10. 

SELECT SUM(ppi.Quantity) as 'total quantity'
FROM Production.ProductInventory as ppi
GROUP BY ppi.LocationID * 10












































