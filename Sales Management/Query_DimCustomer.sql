SELECT
    c.CustomerKey
    --,[GeographyKey]
    --,[CustomerAlternateKey]
    --,[Title]
    ,c.FirstName
    --,[MiddleName]
    ,c.LastName
    ,c.FirstName + ' ' + c.LastName AS FullName
    --,[NameStyle]
    --,[BirthDate]
    --,[MaritalStatus]
    --,[Suffix]
    --,[Gender]
    ,CASE c.Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
    --,[EmailAddress]
    --,[YearlyIncome]
    --,[TotalChildren]
    --,[NumberChildrenAtHome]
    --,[EnglishEducation]
    --,[SpanishEducation]
    --,[FrenchEducation]
    --,[EnglishOccupation]
    --,[SpanishOccupation]
    --,[FrenchOccupation]
    --,[HouseOwnerFlag]
    --,[NumberCarsOwned]
    --,[AddressLine1]
    --,[AddressLine2]
    --,[Phone]
    ,c.DateFirstPurchase
    --,[CommuteDistance]
    ,g.City AS [Customer City]
FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g ON g.GeographyKey = c.GeographyKey
