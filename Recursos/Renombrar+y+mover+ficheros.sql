SELECT * FROM DBA_DATA_FILES;

ALTER DATABASE MOVE DATAFILE '/home/oracle/bbdd/bbdd2.dbf' TO '/home/oracle/bbdd/bbdd2_NEW.dbf';

ALTER DATABASE MOVE DATAFILE '/home/oracle/bbdd/bbdd2_NEW.dbf' TO '/home/oracle/bbdd/datos/bbdd2_NEW.dbf';
