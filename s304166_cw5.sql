SELECT COUNT (OrderDateKey) AS Orders_cnt, OrderDate FROM FactInternetSales GROUP BY OrderDate ORDER BY Orders_cnt DESC

SELECT COUNT (OrderDateKey) AS Orders_cnt, OrderDate FROM FactInternetSales GROUP BY OrderDate HAVING COUNT (OrderDateKey) <100 ORDER BY Orders_cnt DESC 

SELECT p.OrderDate, p.UnitPrice FROM 
(
SELECT OrderDate, UnitPrice, ROW_NUMBER() OVER(PARTITION BY OrderDate ORDER BY UnitPrice DESC) AS pos FROM FactInternetSales
) p
WHERE pos<=3
ORDER BY OrderDate