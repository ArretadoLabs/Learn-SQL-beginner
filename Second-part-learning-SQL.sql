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
SELECT TOP 10 ppas.BusinessEntityID as 'ID of area business'
FROM Person.Password as ppas
WHERE LEN(ppas.PasswordHash) > 42 AND ppas.BusinessEntityID > 10









































