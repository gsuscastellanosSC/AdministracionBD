ALTER DATABASE ADD LOGFILE MEMBER '/bbdd/grupo3-log2.log' TO GROUP 3;
SELECT * FROM V$LOG;
SELECT * FROM V$LOGFILE;
ALTER SYSTEM SWITCH LOGFILE;