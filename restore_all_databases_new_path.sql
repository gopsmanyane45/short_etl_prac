
--- check if its on the correct path first 
SELECT physical_name 
FROM sys.master_files 
WHERE database_id = 1;

--- run the Restore script from 2022 to 2025
-- Make sure you are on the new instance
---restore all the databses
USE master;
GO

-- 1. computer_dwh
RESTORE DATABASE computer_dwh
FROM DISK = 'C:\Backup\computer_dwh.bak'
WITH MOVE 'computer_dwh' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\computer_dwh.mdf',
MOVE 'computer_dwh_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\computer_dwh_log.ldf';
GO

-- 2. Computer_sales_db1
RESTORE DATABASE Computer_sales_db1
FROM DISK = 'C:\Backup\Computer_sales_db1.bak'
WITH MOVE 'Computer_sales_db1' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Computer_sales_db1.mdf',
MOVE 'Computer_sales_db1_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Computer_sales_db1_log.ldf';
GO

-- 3. Computer_std
RESTORE DATABASE Computer_std
FROM DISK = 'C:\Backup\Computer_std.bak'
WITH MOVE 'Computer_std' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Computer_std.mdf',
MOVE 'Computer_std_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Computer_std_log.ldf';
GO

-- 4. DataWarehouseDB
RESTORE DATABASE DataWarehouseDB
FROM DISK = 'C:\Backup\DataWarehouseDB.bak'
WITH MOVE 'DataWarehouseDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\DataWarehouseDB.mdf',
MOVE 'DataWarehouseDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\DataWarehouseDB_log.ldf';
GO

-- 5. Gauteng_Police_Station
RESTORE DATABASE Gauteng_Police_Station
FROM DISK = 'C:\Backup\Gauteng_Police_Station.bak'
WITH MOVE 'Gauteng_Police_Station' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gauteng_Police_Station.mdf',
MOVE 'Gauteng_Police_Station_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gauteng_Police_Station_log.ldf';
GO

-- 6. GMSpazashop
RESTORE DATABASE GMSpazashop
FROM DISK = 'C:\Backup\GMSpazashop.bak'
WITH MOVE 'GMSpazashop' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\GMSpazashop.mdf',
MOVE 'GMSpazashop_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\GMSpazashop_log.ldf';
GO

-- 7. Gops_SoccerDb
RESTORE DATABASE Gops_SoccerDb
FROM DISK = 'C:\Backup\Gops_SoccerDb.bak'
WITH MOVE 'Gops_SoccerDb' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gops_SoccerDb.mdf',
MOVE 'Gops_SoccerDb_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gops_SoccerDb_log.ldf';
GO

-- 8. Gops_test1
RESTORE DATABASE Gops_test1
FROM DISK = 'C:\Backup\Gops_test1.bak'
WITH MOVE 'Gops_test1' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gops_test1.mdf',
MOVE 'Gops_test1_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\Gops_test1_log.ldf';
GO

-- 9. GopsDB2
RESTORE DATABASE GopsDB2
FROM DISK = 'C:\Backup\GopsDB2.bak'
WITH MOVE 'GopsDB2' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\GopsDB2.mdf',
MOVE 'GopsDB2_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\GopsDB2_log.ldf';
GO

-- 10. PCDATASales
RESTORE DATABASE PCDATASales
FROM DISK = 'C:\Backup\PCDATASales.bak'
WITH MOVE 'PCDATASales' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PCDATASales.mdf',
MOVE 'PCDATASales_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PCDATASales_log.ldf';
GO

-- 11. PnP_StoresCorrected
RESTORE DATABASE PnP_StoresCorrected
FROM DISK = 'C:\Backup\PnP_StoresCorrected.bak'
WITH MOVE 'PnP_StoresCorrected' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PnP_StoresCorrected.mdf',
MOVE 'PnP_StoresCorrected_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PnP_StoresCorrected_log.ldf';
GO

-- 12. PNPStores
RESTORE DATABASE PNPStores
FROM DISK = 'C:\Backup\PNPStores.bak'
WITH MOVE 'PNPStores' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PNPStores.mdf',
MOVE 'PNPStores_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\PNPStores_log.ldf';
GO

-- 13. property24
RESTORE DATABASE property24
FROM DISK = 'C:\Backup\property24.bak'
WITH MOVE 'property24' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\property24.mdf',
MOVE 'property24_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\property24_log.ldf';
GO

-- 14. property24ver2
RESTORE DATABASE property24ver2
FROM DISK = 'C:\Backup\property24ver2.bak'
WITH MOVE 'property24ver2' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\property24ver2.mdf',
MOVE 'property24ver2_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\property24ver2_log.ldf';
GO

-- 15. SoccerDB
RESTORE DATABASE SoccerDB
FROM DISK = 'C:\Backup\SoccerDB.bak'
WITH MOVE 'SoccerDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\SoccerDB.mdf',
MOVE 'SoccerDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\SoccerDB_log.ldf';
GO

-- 16. StagingDB
RESTORE DATABASE StagingDB
FROM DISK = 'C:\Backup\StagingDB.bak'
WITH MOVE 'StagingDB' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\StagingDB.mdf',
MOVE 'StagingDB_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL17.MSSQLSERVER02\MSSQL\DATA\StagingDB_log.ldf';
GO