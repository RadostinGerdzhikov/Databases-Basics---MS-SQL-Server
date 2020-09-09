USE [Geography]

SELECT *
  FROM [Countries]

SELECT [CountryName], [CountryCode],
CASE
    WHEN [CurrencyCode] = 'EUR' THEN 'Euro'
	WHEN [ContinentCode] != 'EUR' THEN 'Not Euro'
    END AS Currency
FROM [Countries]
ORDER BY [CountryName] ASC
