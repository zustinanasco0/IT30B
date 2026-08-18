CREATE DATABASE <database_name> ;
SHOW DATABASES;
CONNECT <database_name> ;
CREATE TABLE <table_name_in_plural>();
INSERT INTO <table_name_in_plural> ()"

# Utility Commands 
mysqldump -u root -p --databases STUDENTS 08182026_library_db.sql
mysqldump -u root -p --databases library_db > C:\Users\Administrator\Documents\IT30B\Backups\0818206_library_db.sql
