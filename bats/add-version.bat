@echo off

REM If parameter is missing goto usage
if [%1]==[] goto usage
if [%2]==[] goto usage
if [%3]==[] goto usage


REM Add Version
rmdir %VERSIONED%\%1\%2
mklink /j %VERSIONED%\%1\%2 %3
goto :eof


:usage
@echo Usage: %0 ^<tool^> ^<name^> ^<location^>
exit /B 1