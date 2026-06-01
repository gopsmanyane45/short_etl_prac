---ensure your create the back up folder first else your backup will fail 
EXEC xp_cmdshell 'mkdir C:\Backup';

---if not then create folde for backup on C: then run below 

-- Backup StagingDB
BACKUP DATABASE StagingDB
TO DISK = 'C:\Backup\StagingDB.bak'
WITH FORMAT, INIT, NAME = 'StagingDB Full Backup';

-- Backup DataWarehouseDB
BACKUP DATABASE DataWarehouseDB
TO DISK = 'C:\Backup\DataWarehouseDB.bak'
WITH FORMAT, INIT, NAME = 'DataWarehouseDB Full Backup';

-- Backup master
BACKUP DATABASE master
TO DISK = 'C:\Backup\master.bak'
WITH FORMAT, INIT, NAME = 'Master Full Backup';