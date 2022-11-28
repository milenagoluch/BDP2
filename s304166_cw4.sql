SELECT * FROM information_schema.columns WHERE table_name = 'FactInternetSales';

-- Oracle:
SELECT * FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = 'FactInternetSales';
-- PostgreSQL:
SELECT * FROM information_schema.columns WHERE table_name = 'FactInternetSales';
-- MySQL:
SHOW FULL COLUMNS FROM FactInternetSales;