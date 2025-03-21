# PLSQL Performance Tuning using DBMS_PROFILER

## Overview
This repository contains a **PL/SQL performance tuning script** using `DBMS_PROFILER`. The script helps analyze execution time, optimize PL/SQL procedures, and identify performance bottlenecks.

## Files in This Repository
- **performance_tuning_script.sql**: The main script for profiling PL/SQL performance.

## How to Use
1. **Flush Buffer Cache and Shared Pool** - Clears the memory before running the profiler.
2. **Start the Profiler** - Begins profiling and executes the target PL/SQL procedure.
3. **Retrieve the Run ID** - Fetches the run ID for further analysis.
4. **Analyze Profiler Data** - Retrieves execution details such as unit number, line number, and execution time.

Refer to **performance_tuning_script.sql** for the complete script and execution steps.

## Notes
- Modify the script to replace placeholders with relevant procedure names and comments.
- Use the retrieved `runid` to analyze performance bottlenecks.

## License
This script is open-source and free to use for performance tuning in Oracle PL/SQL development.

---
✍ *Contributions are welcome! Feel free to improve the script or add new features.* 🚀
