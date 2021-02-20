/*Class#67*/
	/*1. Listado de los tables spaces*/
		SELECT * FROM DBA_TABLESPACES ;
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