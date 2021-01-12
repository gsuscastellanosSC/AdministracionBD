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
                -> REDO LOG BUFFER:
                PGA (PROGRAM GLOBAL AREA)*:
                    -> UGA:
                    -> STACK:
**Links**
    OFA- Optimal Flexible Architecture:
        https://docs.oracle.com/cd/E11882_01/install.112/e47689/appendix_ofa.htm#LADBI1381
    Oracle Database Documentation:
        https://docs.oracle.com/en/database/oracle/oracle-database/index.html