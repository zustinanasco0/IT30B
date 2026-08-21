CREATE DATABASE <database_name> ;
SHOW DATABASES;
CONNECT <database_name> ;
CREATE TABLE <table_name_in_plural>();
INSERT INTO <table_name_in_plural> ()"

# Utility Commands 
mysqldump -u root -p --databases STUDENTS 08182026_library_db.sql
mysqldump -u root -p --databases library_db0 > C:\Users\Administrator\Documents\IT30B\Backups\08182026_library_db0.sql

mysqldump -u root -p  --databases library_db > D:\dev\it30b\backups

backup time -- source D:\dev\it30b\backups\08182026_library_db.sql (directory of the backup)
retrieve database/backup time -- source D:\dev\it30b\backups\08182026_library_db.sql (directory of the backup)
