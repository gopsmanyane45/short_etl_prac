/*Create databases*/
CREATE DATABASE StagingDB;
CREATE DATABASE DataWarehouseDB;
GO


USE StagingDB;
GO

CREATE TABLE Customer_Staging
(
	CustomerID INT,
	CustomerName VARCHAR(100)
);
GO

INSERT INTO Customer_Staging
VALUES 
 (1,'John'),
 (2,'Sarah')
 GO


--
/*now create Table Dimcustomer into DawarehouseDB*/
USE DataWarehouseDB;
GO

CREATE TABLE DimCustomer
(
	CustomerID INT,
	CustomerName VARCHAR(100)
);
GO

------
/*now need to fetch the data from STaging table fromcustomer_staging*/
/*and INSERTING it into Customer Stagin*/

INSERT INTO DimCustomer
SELECT * 
FROM [StagingDB].[dbo].[Customer_Staging];

/*Instead of running it the aboe indsert code - rather create a stored procedure */
CREATE PROCEDURE usp_LoadCustomer_2
AS 
BEGIN
	INSERT INTO  DataWarehouseDB.dbo.DimCustomer
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
