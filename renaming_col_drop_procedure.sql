 USE DataWarehouseDB;
  GO

  CREATE TABLE DimCustomer
  (
   CustomerID INT,
   CustomerName VARCHAR(100)
  );

  ----------------------------

  INSERT INTO DimCustomer
  SELECT * 
  FROM [StagingDB].[dbo].[Customer_Staging];

  --- Checking why im getting an error on Customer Column --
  ----the colname is different from the stage name 
SELECT COLUMN_NAME, DATA_TYPE
FROM StagingDB.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Customer_Staging'
ORDER BY ORDINAL_POSITION;

----To rename-col it the column name use the below 
USE StagingDB;
GO
EXEC sp_rename 'dbo.Customer_Staging.Customer', 'CustomerName', 'COLUMN';
GO

------
USE DataWarehouseDB;
GO

DROP PROCEDURE IF EXISTS usp_LoadCustomer_2;
GO

CREATE PROCEDURE usp_LoadCustomer_2
AS
BEGIN
    INSERT INTO DataWarehouseDB.dbo.DimCustomer
    (
        CustomerID,
        CustomerName
    )
    SELECT
        CustomerID,
        CustomerName
    FROM StagingDB.dbo.Customer_Staging;
END;
GO