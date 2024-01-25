@echo off

set JAVA_x64="C:\Program Files\Java"
set JAVA_x86="C:\Program Files (x86)\Java"

for /D %%j in (%VERSIONED%\java\*) do rmdir %%~fj
for /D %%j in (%JAVA_x86%\*) do mklink /j "%VERSIONED%\java\%%~nj_x86" "%%~fj"
for /D %%j in (%JAVA_x64%\*) do mklink /j "%VERSIONED%\java\%%~nj_x64" "%%~fj"
