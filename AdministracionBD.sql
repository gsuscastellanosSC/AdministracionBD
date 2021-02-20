/*Class#67*/
	/*1. Listado de los tables spaces*/
		SELECT * FROM DBA_TABLESPACES;
			/*--SYSTEM---- \
			--SYSAUX----- \ 
			               \->TABLE spaces administrados por oracle
			               / 
			--UNDOTBS1--- /
			--TEMP------ /*/
	/*2. Relación de donde estan los archivos de los table spaces execpto temp*/	
		SELECT * FROM DBA_DATA_FILES;
   	/*3. Relación de donde esta el archivo del table space temp*/
		SELECT * FROM DBA_TEMP_FILES;
    /*4. Mayor detalle de las tablas anteriores(2)*/ 
		SELECT * FROM V$DATAFILE;
	/*Mayor detalle de las tablas anteriores(3)*/
		SELECT * FROM V$TEMPFILE;
	/*espacios libres por table spaces*/
		SELECT * FROM DBA_FREE_SPACE;

/*Class#68*/
	/*how create tables spaces:
    	1. sudo su
        2. mkdir nameTableSpace
        3. chown oracle:dba nameTableSpace (cat /etc/group)*/
		CREATE TABLESPACE NEW_TABLES_SPACE DATAFILE '/home/oracle/bbdd/bbdd.dbf' SIZE 10M; --DATAFILE=> Fichero con el que se va a crear el TABLE SPACE  SIZE=> K M G
		CREATE TABLESPACE NEW_TABLES_SPACE1 DATAFILE '/home/oracle/bbdd/bbdd1.dbf' SIZE 100K, '/home/oracle/bbdd/bbdd2.dbf' SIZE 10M;
/*Class#69*/
	--@Recursos/recursos.sql
/*Class#70*/
	--@Recursos/recursos(1).sql
/*Class#71*/
	ALTER TABLESPACE TBS2 ADD DATAFILE '/home/oracle/bbdd/t4-1.dbf' SIZE 50M;
/*Class#72*/
	--@Recursos/cambiar+estado.sql
/*Class#73*/
	--@Recursos/recursos (2).sql