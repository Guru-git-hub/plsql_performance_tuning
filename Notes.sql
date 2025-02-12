-->>PL/SQL Performance Tuning Notes
Basic Steps for PL/SQL Performance Tuning

step 1: Identify the bottleneck
    step 1.1: To flush the buffer cache and shared pool
    step 1.2: To start the profiler with a custom comment
    step 1.3: To get the runid of the profiler using the custom comment
    step 1.4: To get the unit number of the profiler using the runid    
    step 1.5: To get the data of the profiler

step 2: Analyze the bottleneck

-->>Three tables used for indentifying the bottlenecks are
plsql_profiler_runs   --> To get the runid of the profiler
plsql_profiler_units  --> To get the unit number of the profiler  
plsql_profiler_data   --> To get the total time taken by the line and matching with the unit number


