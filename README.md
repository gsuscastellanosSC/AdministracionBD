# Oracle: Administración de Base de Datos
    https://www.udemy.com/course/oracle-administracion-de-base-de-datos/learn/lecture/20191180#overview
# Sección 1:Introducción
# Class#1
       1. Introducción al curso
# Class#2
       2. Contenido del curso
# Class#3
       3. Nota sobre las valoraciones del curso
# Class#4
       4. Preguntas y Respuestas
# Class#5
       5. ¿Qué es Oracle?
# Class#6
       6. Versiones de Oracle
# Sección 2:Instalación de Oracle
# Class#7
       7. Requisitos
# Class#8
       8. Usuarios
# Class#9
       9. Tipos de instalación en Linux
# Class#10
       10. Descarga de Oracle
# Class#11
       11. OFA- Optimal Flexible Architecture
# Sección 3:Preparación de Requisitos con RPM
# Class#12
       12. Preparación de requisitos automática con RPM
# Sección 4:Preparación de requisitos manual
# Class#13
       13. Instalación en Linux. Configurar parametros de Kernel
# Class#14
       14. Instalación en Linux. Configurar límites usuario Oracle
# Class#15
       15. Instalar paquetes de Linux
# Class#16
       16. Creación de grupos y usuario necesarios
# Class#17
       17. Configurar SELINUX
# Sección 5:Instalación de Oracle con RPM
# Class#18
       18. Instalación de la Base de datos con RPM
# Sección 6:Instalación de Oracle en Linux con Zip
# Class#19
       19. Instalación en Linux
# Class#20
       20. Repaso por los directorios creados
# Sección 7:Arquitectura general de ORacle    
# Class#21
       21. Arquitectura básica. Instancia y Base de Datos
# Class#22
       22. Memoria
            SGA (SYSTEM GLOBAL AREA)
                -> SHARED POOL*:
                   -> SHARED SQL AREA:
                   -> DATA DICTIONARY CACHE:
                   -> RESULT CACHE
                   -> OTRAS
                -> BUFFER CACHE*:
                    KEEP POOL
                    RECYCLE POOL
                    BUFFER CACHE 1
                    BUFFER CACHE 2
                -> LARGE POOL:
                -> JAVA POOL:
                -> STREAMS POOL:
                -> FIXED POOL:
                -> RED LOG BUFFER*:
                -> PGA (PROGRAM GLOBAL AREA)*:
                    -> UGA:
                    -> STACK:
# Class#23
       23. Procesos
# Class#24
       24. Ficheros
# Class#25
       25. Arquitectura Multitenant(Multi contenedor)
# Class#26
       26. Visión general de una transacción Oracle
# Sección 8:Creación de Base de Datos
# Class#27
       27. Consejo Multitenant
# Class#28
       28. Creación de Base de datos simple. DBCA
           BDA: orcl
           PASS: Test2021*
# Class#29
       29. Ficheros y directorios creados
# Class#30
       30. Procesos y memoria  
# Class#31
       31. Uso de DBCA en modo avanzado. Crear otro Base de Datos
# Class#32
       32. Repaso memoria,ficheros y procesos
# Class#33
       33. Configurar variables de entorno. oraenv
# Sección 9:SQL*Plus. Herramienta de administración
# Class#34
       Introducción a SQL*Plus
       sqlplus user/pass
       sqlplus system/Test2021* as sysdba
       show user = show user login
# Class#35
       35. Un paseo por SQL*Plus
           cd C:\u01\app\oracle\product\19.3.0\db_1;
           sqlplus system/Test2021* as sysdba;
           help index
# Class#36
       36. Algunos comandos útiles de SQL*Plus
           comandos
           l = Show data buffer.
           r = execute data in buffer.
           ed = edit in vi, nano etc...
           def_edidor=code = define code with edit by default.
# Sección 10:Administración básica de la Base de datos
# Class#37
       37. Introducción al arranque de la Base de Datos
           C:\u01\app\oracle\product\19.3.0\db_1\dbs>
# Class#38            
       38. Arrancar la Base de datos. Comando STARTUP
           shutdown immediate => Stop
           startup => Start 
           startup nomount,MOUNT, OPEN => Start in a specific phase
           ALTER DATABASE MOUNT;
           ALTER DATABASE OPEN;
# Class#39
       39. Parar la Base de Datos. Introducción
           shutdown NORMAL => Espera que los usuarios conectados cierren sesión(Poco usada).
           shutdown immediate => Termina transacciones y envia rollback(Más usada y Más recomendada).
           shutdown transactional => Espera que terminen transacciones en marcha, pero no permite que comience ninguna nueva.
           shutdown ABORT: No espera a nada. Solo debería usarse en casos exepcionales.
# Class#40
       40. Parar la Base de Datos. Comando SHUTDOWN
# Class#41
       41. Poner la Base de datos en modo Administrador (QUIESCE)
           create user USU1 IDENTIFIED BY USU1;
           GRANT CONNECT, RESOURCE TO USU1;
           ALTER SYSTEM QUIESCE RESTRICTED;
           ALTER SYSTEM UNQUIESCE;
# Class#42
       42. Diccionario de Datos: Tablas y Vistas
           Diccionario de datos
               Conjunto de tablas con los metadatos de la BD.
                   -> Tablas Basicas: Estas almacenan información sobre la BD.
                   -> Vistas: Permiten ver los datos de las tablas basicas en forma legible.
                       -> Prefijo DBA_: Datos de todas la entidades de la BD.
                       -> ALL_: Objetos sobre los que el usuario tiene privilegios.
                       -> USER_: Tablas a las que el usuario tiene acceso.
                   -> Vistas dinámicas(Performance Views)
                       V$
# Class#43
       43. V$FIXED_TABLE. Encontrar informacion de Vistas y Tablas dinámicas
           -> V$FIXED_TABLE : Listado de todas las vistas dinámicas.
               * Prefijo X: Tablas del Sistema.
               * Prefijo GV$: Vistas de instancias RAC.
           Comands sql plus: COL NAME FORMAT A40, SET PAUSE ON, SET PAUSE OFF
           SELECT * FROM V$FIXED_TABLE WHERE NAME LIKE'%MEMORY%';
# Class#44
       44. Ejemplo con vistas V$. Recuperar información de la SGA
           select * from V$SGA;   V$SGA: Memoria
           select * from V$SGAinfo;
# Class#45
       45. Parámetros de la Base de datos
           => show parameter;
           => select * from V$parameter;  
           Comands sql plus: sqlplus /nolog
# Class#46
       46. Fichero de parámetro
           C:\u01\app\oracle\product\19.3.0\db_1\dbs>
           code .\init.ora
# Class#47
       47. Niveles de los parámetros
           SELECT NAME, VALUE FROM V$PARAMETER; WHERE NAME LIKE'%%' => Valores de elementos en sesión.
           SELECT NAME, VALUE FROM V$SPPARAMETER; WHERE NAME LIKE'%%' => Valores originales del SPFILE.
           SPFILE => Parametros definidos en el sistema(Arranca la bases de datos parametros tal cual como se definen en SPFILE).
           SYSTEM => Runtime en la instancia(A nivel de instancia de pueden cambiar algunos parametros).
           SESION => Parametros que tengo ahora mismo en sesion(A nivel de sesion se pueden cambiar algunos parametros).
# Class#48
       48. Cambiar parametros a nivel de sesion
           ALTER SESSION; modificar parametos a nivel de session.
           ALTER SYSTEM;  modificar parametos a nivel de system.

           SELECT NAME, VALUE FROM V$PARAMETER WHERE NAME LIKE'%langua%';
           ALTER SESSION SET NLS_LANGUAGE='SPANISH';
           Comands sql plus: DESC V$PARAMETER;
# Class#49
       49. Cambiar parametros a nivel de sistema
          select name, value from V$System_parameter where name ='processes' => Procesesos concurrentes
          ALTER SYSTEM SET processes=400 => Se obtiene error debido a que el parametro no puede ser cambiado en "caliente"
          * Cambiar parametro en file SPFILE
              SELECT name, value from V$System_parameter where name ='processes';
              ALTER SYSTEM SET processes=400 SCOPE=SPFILE;
              SHUTDOWN IMMEDIATE;
         * Cambiar parametro en MEMORY
                 select name, value from V$System_parameter where name ='optimizer_mode';
                 ALTER SYSTEM SET optimizer_mode=FIRST_ROWS SCOPE=MEMORY;
         * scope=BOTH: Modifica el fichero de parametros(SPFILE) y en memory.
# Class#50
       50. Introducción a las conexiones y Redes en Oracle
              BEQ: Conexión clinete <-> BD
              LISTENER: Conexiones remotas desde un cliente.
              
              Cliente    =>     Listener     =>        BD
                                          Service Name= DB_NAME+DB_DOMAIN
              TNSNAMES.ORA: Ficheros donde se define el acceso al servidor de BD.
              LISTENER.ORA: Se definen las bases de datos que esta escuchando el listener.
# Class#51
       51. Conexiones locales y servicios
              ps -ef | grep LOCAL
              oracleORCLCDB (DESCRIPTION=(LOCAL=YES)(ADDRESS=(PROTOCOL=beq)))
              select count(*) from v$session;
              select * from v$system_parameter where name='service_names';
              select * from v$system_parameter where name='db_name';
              select * from v$system_parameter where name='db_domain';
              select value from v$parameter where name='service_names'
# Class#52       
       52. Formas de Conexión
              sqlplus ${user}/${pass} as sysdba@node1:1521/ORCLCDB.localdomain
              sqlplus ${user}/${pass}@157.245.14.146:1521/ORCLCDB.localdomain as sysdba
# Class#53
       53. LISTENER. Ficheros de configuración
           En la ruta $ORACLE_HOME/network/admin
              * listener.ora
                     ${Database}=(select value from v$parameter where name='service_names';)
                     ORCLCDB =   (DESCRIPTION =     (ADDRESS = (PROTOCOL = TCP)(HOST = 157.245.14.146))(PORT = 1521))     (CONNECT_DATA =       (SERVER = DEDICATED)       (SERVICE_NAME = ${Database})     )   )
                     ORCLPDB1 =   (DESCRIPTION =     (ADDRESS = (PROTOCOL = TCP)(HOST = 0.0.0.0)(PORT = 1521))     (CONNECT_DATA =       (SERVER = DEDICATED)       (SERVICE_NAME = ${Database})     )   )
              * tnsnames.ora
              * sqlnet.ora
# Class#54
       54. Crear un Listener
              * netca: Asistent with gui
              * $ORACLE_HOME/bin/lsnrctl start
# Class#55
       55. Utilidad LSNRCTL
              * status
              * services
# Class#56
       56. Crear SQLNET y TNSNAMES
# Class#57       
       57. NETMGR. Otra utilidad de configuración de red
              * netmgr
# Class#58
       NOTA IMPORTANTE: Fin de uso de FLASH en los navegadores
# Class#59
       59. Borrar una Base de datos para recrearla para EM
              * dbca
# Class#60
       60. Crear la Base de Datos con Enterprise Manager
              show PARAMETEr disparchers;
# Class#61
       61. Cambios de Enterprise Manager en la 19c
# Class#62
       62. Repaso Enterprise Manager
# Class#63
       63. Ejemplo: Cambiar parámetros de la Base de datos con EM
# Class#64
       64. Descargar SqlDeveloper
# Class#65
       65. Instalar y Configurar SqlDeveloper
# Class#66
       66. Introducción al almacenamiento
# Class#67
       67. Vistas para ver tablespaces. Tablespaces por defecto
# Class#68       
       68. Crear una Tablespace. Tablespace por defecto
              -> /opt/oracle/oradata (Rura donde esta la BD)
# Class#69
       69. Gestión de Extensiones . AUTOALLOCATE
# Class#70
       70. Gestión de extensiones: UNIFORM
# Class#71
       71. Añadir ficheros a una tablespace
# Class#72
       72. Cambiar el estado de un Tablespace: OFFLINE, READ_ONLY
# Class#73       
       73. Autoextender ficheros
# Class#74
       74. Cambiar manualmente el tamaño de un fichero
# Class#75       
       75. Mover y renombrar ficheros
# Class#76
       76. Tablespace temporales. Introducción
# Class#77
       77. Trabajar con Tablespaces temporales
# Class#78
       78. Borrar una Tablespace
# Class#79
       79. Uso de Enterprise Manager con Tablespaces
# Class#80
       80. Introducción a los ficheros de Control
# Class#81
       81. Comprobar los ficheros de control
# Class#82
       82. Crear un init.ora desde un SPFILE
       -> cd $ORACLE_HOME/dbs 
       -> cat spfileORCLCDB.ora 
# Class#83
     83. Añadir un ControlFile y arrancar con init.ora  
# Class#84
     84. Crear un SPFILE desdes un init.ora. Arrancar de nuevo la Base de datos
# Class#85
     85. Enterprise Manager y ControlFile
# Class#86
     86. Introducción a UNDO
# Class#87
     87. Consistencia en lectura
# Class#89
     88. Parámetros de UNDO y Tablespaces
# Class#90
     90. Crear Tablespace de UNDO y convertirla en la de por defecto
# Links
    OFA- Optimal Flexible Architecture:
       https://docs.oracle.com/cd/E11882_01/install.112/e47689/appendix_ofa.htm#LADBI1381
    Oracle Database Documentation:
       https://docs.oracle.com/en/database/oracle/oracle-database/index.html