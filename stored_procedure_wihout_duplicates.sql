/*stored procedure without duplicates */
CREATE PROCEDURE usp_LoadCustomer_2_NOT_REPEAT 
AS
BEGIN
    INSERT INTO DataWarehouseDB.dbo.DimCustomer
    (
        CustomerID,
        CustomerName
    )
    ---Can add layers of cleaning the data here 
    SELECT
        s.CustomerID,
        s.CustomerName
    FROM StagingDB.dbo.Customer_Staging s 
    WHERE NOT EXISTS
    (
        SELECT 1 
        FROM DataWarehouseDB.dbo.DimCustomer d
        WHERE d.CustomerID = s.CustomerID
    );

END;
GO
