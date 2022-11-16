CREATE PROCEDURE s304166_cw3 @YearsAgo INT
AS
BEGIN
SELECT * FROM AdventureWorksDW2019.dbo.FactCurrencyRate AS FCR 
INNER JOIN AdventureWorksDW2019.dbo.DimCurrency AS DC 
ON FCR.CurrencyKey=DC.CurrencyKey
WHERE (DC.CurrencyAlternateKey = 'GBP' OR DC.CurrencyAlternateKey = 'EUR') AND DATEDIFF("year",FCR.Date,GETDATE()) = @YearsAgo AND MONTH(FCR.Date) = MONTH(GETDATE()) AND DAY(FCR.Date) = DAY(GETDATE());
END
