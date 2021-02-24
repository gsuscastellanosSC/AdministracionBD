SELECT * FROM V$LOG;
ALTER DATABASE ADD LOGFILE GROUP 5 ('/bbdd/grupo5-log1.log','/bbdd/grupo5-log2.log') size 200M;
alter system switch logfile;
SELECT * FROM V$LOGFILE;