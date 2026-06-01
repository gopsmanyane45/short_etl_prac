-- Back up all your databases at once
BACKUP DATABASE computer_dwh
TO DISK = 'C:\Backup\computer_dwh.bak'
WITH FORMAT, INIT, NAME = 'computer_dwh Full Backup';

BACKUP DATABASE Computer_sales_db1
TO DISK = 'C:\Backup\Computer_sales_db1.bak'
WITH FORMAT, INIT, NAME = 'Computer_sales_db1 Full Backup';

BACKUP DATABASE Computer_std
TO DISK = 'C:\Backup\Computer_std.bak'
WITH FORMAT, INIT, NAME = 'Computer_std Full Backup';

BACKUP DATABASE DataWarehouseDB
TO DISK = 'C:\Backup\DataWarehouseDB.bak'
WITH FORMAT, INIT, NAME = 'DataWarehouseDB Full Backup';

BACKUP DATABASE Gauteng_Police_Station
TO DISK = 'C:\Backup\Gauteng_Police_Station.bak'
WITH FORMAT, INIT, NAME = 'Gauteng_Police_Station Full Backup';

BACKUP DATABASE GMSpazashop
TO DISK = 'C:\Backup\GMSpazashop.bak'
WITH FORMAT, INIT, NAME = 'GMSpazashop Full Backup';

BACKUP DATABASE Gops_SoccerDb
TO DISK = 'C:\Backup\Gops_SoccerDb.bak'
WITH FORMAT, INIT, NAME = 'Gops_SoccerDb Full Backup';

BACKUP DATABASE Gops_test1
TO DISK = 'C:\Backup\Gops_test1.bak'
WITH FORMAT, INIT, NAME = 'Gops_test1 Full Backup';

BACKUP DATABASE GopsDB2
TO DISK = 'C:\Backup\GopsDB2.bak'
WITH FORMAT, INIT, NAME = 'GopsDB2 Full Backup';

BACKUP DATABASE PCDATASales
TO DISK = 'C:\Backup\PCDATASales.bak'
WITH FORMAT, INIT, NAME = 'PCDATASales Full Backup';

BACKUP DATABASE PnP_StoresCorrected
TO DISK = 'C:\Backup\PnP_StoresCorrected.bak'
WITH FORMAT, INIT, NAME = 'PnP_StoresCorrected Full Backup';

BACKUP DATABASE PNPStores
TO DISK = 'C:\Backup\PNPStores.bak'
WITH FORMAT, INIT, NAME = 'PNPStores Full Backup';

BACKUP DATABASE property24
TO DISK = 'C:\Backup\property24.bak'
WITH FORMAT, INIT, NAME = 'property24 Full Backup';

BACKUP DATABASE property24ver2
TO DISK = 'C:\Backup\property24ver2.bak'
WITH FORMAT, INIT, NAME = 'property24ver2 Full Backup';

BACKUP DATABASE SoccerDB
TO DISK = 'C:\Backup\SoccerDB.bak'
WITH FORMAT, INIT, NAME = 'SoccerDB Full Backup';

BACKUP DATABASE StagingDB
TO DISK = 'C:\Backup\StagingDB.bak'
WITH FORMAT, INIT, NAME = 'StagingDB Full Backup';