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
/*Class#74*/
	--@Recursos/recursos (2).sql
/*Class#75*/
	--@Recursos/Renombrar+y+mover+ficheros.sql
/*Class#76*/	
	--@Recursos/@temporalles.sql
/*Class#77*/
	--@Recursos/@temporalles.sql
/*Class#78*/
	DROP TABLESPACE VENTAS INCLUDING CONTENTS;
	DROP TABLESPACE VENTAS INCLUDING CONTENTS AND DATAFILES;
/*Class#79*/

/*Class#80*/

/*Class#81*/
	/*Nombre de la Base de Datos
	  Nombre y ubicación de los ficheros de datos y los redo log
	  nomount - mount - open
	  Fecha de creación de la Base de datos
	  El número de Redo Log actual
	  Información de Checkpoint
	  etc...
	 */
	SELECT * FROM v$controlfile;
	--show parameters control;
	SELECT * from v$database;
/*Class#82*/
	/*
	  spfile--->control_files --> ficheros
      cat $ORACLE_HOME/dbs/init.ora
	  spfile --> init.ora --> spfile
	  
	 */
	--sqlplus  / as sysdba
	CREATE pfile='/home/oracle/bbdd/init.ora' FROM spfile;--(Se genera el nuevo init.ora)
/*Class#83*/
	--shutdown immediate;(Se debe de "apagar" la bd antes de compiar el archivo)
    --cp /opt/oracle/oradata/ORCLCDB/control02.ctl
    --nano /home/oracle/bbdd/init.ora( agregar ruta del nuevo control_files='/opt/oracle/oradata/ORCLCDB/control01.ctl','/home/oracle/bbdd/control03.ctl')
	--START pfile=/home/oracle/bbdd/init.ora (Cambiar por el nuevo fichero de control)
	--shutdown abort;
    --show parameter control;
/*Class#84*/
    CREATE pfile='/home/oracle/bbdd/init.ora' FROM spfile;
    --shutdown immediate;--(Se debe de "apagar" la bd y reinicar para que "tome" los cambios);
    --startup
/*Class#85*/
/*Class#86*/
/*Class#87*/
/*Class#88*/
    /*rollback segments --> MANUAL
      AUTO UNDO MANAGEMENT --> UNDO SEGMENTS(AUTO)
    */
    show parameter undo;
    select * from dba_tablespaces WHERE CONTENTS='UNDO';
/*Class#89*/
    --@Recursos/transacciones.sql
/*Class#90*/
    --@Recursos/tablespace_undo.sql
/*Class#91*/
    show parameter undo;
    alter system set undo_retention=1800;
    alter tablespace UNDOTBS2 retention GUARANTEE;
/*Class#92*/
    select * from dba_rollback_segs;
    select * from v$undostat;
    SELECT * from v$rollstat;
    select * from dba_undo_extents;
/*Class#93*/
    DROP TABLESPACE UNDOTBS1 INCLUDING CONTENTS AND DATAFILES;
    SELECT * FROM DBA_TABLESPACES WHERE CONTENTS='UNDO';
    SELECT * FROM dba_rollback_segs;
/*Class#94*/
/*Class#95*/
/*Class#96*/
    select * from v$log;
    select * from v$logfile;
    alter system SWITCH logfile;
/*Class#97*/
    --@Recursos/miembro_red_log.sql
    alter database add logfile MEMBER '/home/oracle/bbdd/grupo3-log3.log' to group 3;
    select * from v$log;
    select * from v$logfile;
    alter system SWITCH logfile;
/*Class#98*/
    --@Recursos/grupo_redo_log.sql
    SELECT * FROM V$LOG;
    ALTER DATABASE ADD LOGFILE GROUP 5 ('/home/oracle/bbdd/grupo4-log4.log','/home/oracle/bbdd/grupo5-log5.log') size 200M;
    alter system switch logfile;
    SELECT * FROM V$LOGFILE;
/*Class#99*/
    --@Recursos/borrar+miembro+grupo.sql
    SELECT * FROM V$LOG;
    SELECT * FROM V$LOGFILE;
    ALTER DATABASE DROP LOGFILE MEMBER '/home/oracle/bbdd/grupo1-log2.log';
    ALTER SYSTEM SWITCH LOGFILE;
    ALTER DATABASE DROP LOGFILE MEMBER'/u01/app/oracle/oradata/ORCL/redo03.log';
    