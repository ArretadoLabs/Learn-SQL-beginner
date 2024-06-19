-- Indicate which database as go used

-- (Command USE) for point AdventureWorks2022

--=================== display all data in tables ===================
-- Table Person and Address is renomed PA
SELECT *
FROM Person.Address as PA

-- Return Person and Address Type
SELECT *
FROM Person.AddressType as PAT

-- Return Person and Business
SELECT *
FROM Person.BusinessEntity

-- Return Person and business Entity Address
SELECT *
FROM Person.BusinessEntityAddress as PBEA

-- Return Person and Contact Type
SELECT *
FROM Person.ContactType as PCT

-- Return data about Country
SELECT *
FROM Person.CountryRegion as PCR

-- Return data about email
SELECT *
FROM Person.EmailAddress as PEAD

-- Return all data about table Person
SELECT *
FROM Person.Person

-- Return join of two tables
SELECT *
FROM Person.EmailAddress as PEAD INNER JOIN Person.Person as PP ON PEAD.BusinessEntityID = PP.BusinessEntityID

-- Return all data of two tables with condition
SELECT *
FROM Person.Person as PP INNER JOIN Person.PersonPhone as PPE ON PP.BusinessEntityID = PPE.BusinessEntityID
WHERE PP.BusinessEntityID <= 10

-- Return all data of two tables with condition diferent value NULL
SELECT *
FROM Person.Person as PP INNER JOIN Person.BusinessEntity as PBE ON PP.BusinessEntityID = PBE.BusinessEntityID
WHERE (PP.Title IS NOT NULL) AND (PP.MiddleName IS NOT NULL) -- Is two conditions for return datas

-- Return only first name, middle name and last name of table person with condition 
SELECT PP.FirstName as 'Primeiro nome', PP.MiddleName as 'Nome do meio', PP.LastName as 'Último nome'
FROM Person.Person as PP INNER JOIN Person.BusinessEntity as PBE ON PP.BusinessEntityID = PBE.BusinessEntityID
WHERE (PP.FirstName IS NOT NULL) AND (PP.MiddleName IS NOT NULL) and (PP.LastName IS NOT NULL)

-- Return only first name, middle name and last name with value distinct and condition return is not null
SELECT DISTINCT PP.FirstName as 'Primeiro nome', PP.MiddleName as 'Nome do meio', PP.LastName as 'Último nome'
FROM Person.Person as PP INNER JOIN Person.Address as PA ON PP.BusinessEntityID = PA.AddressID
WHERE  (PP.FirstName IS NOT NULL) AND (PP.MiddleName IS NOT NULL) AND (PP.LastName IS NOT NULL) ORDER BY PP.FirstName

-- Return value in order Ascendent and using method INNER JOIN
SELECT PP.FirstName as 'Primeiro nome', PA.AddressLine1 as 'Endereço principal', PA.StateProvinceID as 'Identificador da província'
FROM Person.Address as PA INNER JOIN Person.Person as PP ON PA.AddressID = PP.BusinessEntityID
WHERE (PA.StateProvinceID IS NOT NULL) AND (PA.AddressLine2 IS NOT NULL) ORDER BY PA.StateProvinceID ASC

--Return value in order Descendent and using method INNER JOIN
SELECT PP.PersonType as 'Apresentação', PP.FirstName as 'Primeiro nome', PEAD.EmailAddress as 'Email' 
FROM Person.Person as PP INNER JOIN Person.EmailAddress as PEAD ON PP.BusinessEntityID = PEAD.BusinessEntityID
WHERE (PP.MiddleName IS NOT NULL) AND (PEAD.EmailAddress IS NOT NULL)
ORDER BY PP.FirstName DESC

-- =========================== Manipulation with others tables ===========================

-- Return all data of table
SELECT *
FROM Sales.SalesPerson as SSP

-- Update only column with based value ID 
UPDATE Sales.SalesPerson
SET Bonus = 1000
WHERE BusinessEntityID = 274

-- Update only column ComissionPct based in value of column BusinessEntityID
UPDATE Sales.SalesPerson
SET CommissionPct = 0.015
WHERE BusinessEntityID = 274

-- Using function TOP for return values based in parameter
SELECT TOP 15 ProductID
FROM Production.Product as PP

-- Using function COUNT for calculate amount values in column
SELECT COUNT (PAT.Name) as 'Quantidade de nomes na coluna'
FROM Person.AddressType as PAT

-- Using method SUM for calculate a sum of all values of column
SELECT SUM(ssod.UnitPrice) as 'Soma total do preço unitário de cada produto'
FROM Sales.SalesOrderDetail as ssod

-- Using signal of different in structure condition return values
SELECT pco.Name
FROM Person.CountryRegion as pco
WHERE pco.Name <> 'Brazil' AND pco.Name <> 'Albania' AND pco.Name = 'Argentina'








