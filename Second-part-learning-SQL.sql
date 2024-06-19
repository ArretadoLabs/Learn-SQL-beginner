--USE AdventureWorks2022

-- File with part 2 of learning SQL started methods LIKE

-- Using method LIKE for return value based in format command 
-- In case all value if start and finish with letter 'a'
SELECT *
FROM Person.Address as pad
WHERE pad.City LIKE '%a' OR pad.City LIKE 'a%'

-- Return value and initializing with letter 'A' and others two letters in word with size specifically 8 places
SELECT *
FROM Person.Address as pad
WHERE pad.City LIKE 'A_ta____'

-- Other example using command LIKE return value contains letters 'vada'
SELECT *
FROM Person.Address as pad 
WHERE pad.City LIKE '%vina%' -- replace for anywhere value


-- Example using command LEN and function TOP
SELECT TOP 10 ppas.BusinessEntityID as 'ID of area business' -- parameter of command return first ten values of table
FROM Person.Password as ppas
WHERE LEN(ppas.PasswordHash) > 42 AND ppas.BusinessEntityID > 10

--======================== Using examples with operator BETWEEN ========================

SELECT *
FROM HumanResources.Employee as he
WHERE he.OrganizationLevel BETWEEN 1 AND 3

-- Others example using operator BETWEEN and INNER JOIN
-- In example using three tables
SELECT *
FROM ((HumanResources.Employee as he INNER JOIN Person.Person as ppe ON he.BusinessEntityID = ppe.BusinessEntityID)
       INNER JOIN Sales.Customer as sc ON he.BusinessEntityID = sc.CustomerID) 
WHERE he.OrganizationNode IS NOT NULL AND he.Gender = 'm'

-- Using operator BETWEEN and command IN with clausule WHERE
SELECT pp.FirstName as 'Primeiro nome', pp.LastName as 'Último nome', he.VacationHours as 'Horas vagas'
FROM HumanResources.Employee as he INNER JOIN Person.Person as pp ON he.BusinessEntityID = pp.BusinessEntityID
WHERE he.VacationHours BETWEEN 10 AND 50

























































