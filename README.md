# Oracle: Administración de Base de Datos
    https://www.udemy.com/course/oracle-administracion-de-base-de-datos/learn/lecture/20191180#overview
**Sección 1:Introducción**
    **Class#1**
        1. Introducción al curso
    **Class#2**
        2. Contenido del curso
    **Class#3**
        3. Nota sobre las valoraciones del curso
    **Class#4**
        4. Preguntas y Respuestas
    **Class#5**
        5. ¿Qué es Oracle?
    **Class#6**
        6. Versiones de Oracle
**Sección 2:Instalación de Oracle**
    **Class#7**
        7. Requisitos
    **Class#8**
        8. Usuarios
    **Class#9**
        9. Tipos de instalación en Linux
    **Class#10**
        10. Descarga de Oracle
    **Class#11**
        11. OFA- Optimal Flexible Architecture
**Sección 3:Preparación de Requisitos con RPM**
    **Class#12**
        12. Preparación de requisitos automática con RPM
**Sección 4:Preparación de requisitos manual**
    **Class#13**
        13. Instalación en Linux. Configurar parametros de Kernel
    **Class#14**
        14. Instalación en Linux. Configurar límites usuario Oracle
    **Class#15**
        15. Instalar paquetes de Linux
    **Class#16**
        16. Creación de grupos y usuario necesarios
    **Class#17**
        17. Configurar SELINUX
**Sección 5:Instalación de Oracle con RPM**
    **Class#18**
        18. Instalación de la Base de datos con RPM
**Sección 6:Instalación de Oracle en Linux con Zip**
    **Class#19**
        19. Instalación en Linux
    **Class#20**
        20. Repaso por los directorios creados
**Sección 7:Arquitectura general de ORacle**    
    **Class#21**
        21. Arquitectura básica. Instancia y Base de Datos
    **Class#22**
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
    **Class#23**
        23. Procesos
    **Class#24**
        24. Ficheros
    **Class#25**
        25. Arquitectura Multitenant(Multi contenedor)
    **Class#26**
        26. Visión general de una transacción Oracle
**Sección 8:Creación de Base de Datos**
    **Class#27**
        27. Consejo Multitenant
    **Class#28**
        28. Creación de Base de datos simple. DBCA
            BDA: orcl
            PASS: Test2021*
    **Class#29**
        29. Ficheros y directorios creados
    **Class#30**
        30. Procesos y memoria  
    **Class#31**
        31. Uso de DBCA en modo avanzado. Crear otro Base de Datos
    **Class#32**
        32. Repaso memoria,ficheros y procesos
    **Class#33**
        33. Configurar variables de entorno. oraenv
**Sección 9:SQL*Plus. Herramienta de administración**
    **Class#34**
        Introducción a SQL*Plus
        sqlplus user/pass
        sqlplus system/Test2021* as sysdba
        show user = show user login
    **Class#35**
        35. Un paseo por SQL*Plus
            cd C:\u01\app\oracle\product\19.3.0\db_1;
            sqlplus system/Test2021* as sysdba;
            help index
    **Class#36**
        36. Algunos comandos útiles de SQL*Plus
            comandos
            l = Show data buffer.
            r = execute data in buffer.
            ed = edit in vi, nano etc...
            def_edidor=code = define code with edit by default.
**Sección 10:Administración básica de la Base de datos**
    **Class#37**
        37. Introducción al arranque de la Base de Datos
            C:\u01\app\oracle\product\19.3.0\db_1\dbs>
    **Class#38**            
        38. Arrancar la Base de datos. Comando STARTUP
            shutdown immediate => Stop
            startup => Start 
            startup nomount,MOUNT, OPEN => Start in a specific phase
            ALTER DATABASE MOUNT;
            ALTER DATABASE OPEN;
    **Class#39**
        39. Parar la Base de Datos. Introducción
            shutdown NORMAL => Espera que los usuarios conectados cierren sesión(Poco usada).
            shutdown immediate => Termina transacciones y envia rollback(Más usada y Más recomendada).
            shutdown transactional => Espera que terminen transacciones en marcha, pero no permite que comience ninguna nueva.
            shutdown ABORT: No espera a nada. Solo debería usarse en casos exepcionales.
    **Class#40**    
        40. Parar la Base de Datos. Comando SHUTDOWN
**Links**
    OFA- Optimal Flexible Architecture:
        https://docs.oracle.com/cd/E11882_01/install.112/e47689/appendix_ofa.htm#LADBI1381
    Oracle Database Documentation:
        https://docs.oracle.com/en/database/oracle/oracle-database/index.html