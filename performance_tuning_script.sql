--Step 1: To flush the buffer cache and shared pool

BEGIN
 dbms_session.reset_package;
END;
/
ALTER system flush buffer_cache;
/
ALTER system flush shared_pool;
/
----------------------------------------------------------------------------------------------
--Step 2: To start the profiler

begin
dbms_profiler.start_profiler  ('Test3 batch 123');-->>replace with custom comment easy to identify
dbms_profiler.flush_data();
BPG_PAD_LISTING.BPC_SMS_PREMIUM_DUE_ALERT(USER,'BATCH-123',TO_DATE('29092022','DDMMYYYY'));-->>replace with our program
dbms_profiler.stop_profiler();
end;
/

----------------------------------------------------------------------------------------------
--Step 3: To get the runid of the profiler

select * from plsql_profiler_runs where run_comment like '%123'; -->>replace with custom comment provided in step 2
-->>Note down the runid from the above query

----------------------------------------------------------------------------------------------
--Step 4: To get the unit number and the line number from the profiler


SELECT A.runid,
       A.unit_number,
       decode(b.unit_name, '', '<anonymous>',
       substr(b.unit_name,1, 50)) unit_name,
       a.line#,
       a.total_occur,
       a.total_time,
       a.min_time,
       a.max_time
  FROM plsql_profiler_data A,plsql_profiler_units b 
 WHERE A.runid=61                   
   AND A.runid=b.runid 
   AND a.unit_number=b.unit_number
 --and a.total_time > 100000000
ORDER BY a.total_time desc ;