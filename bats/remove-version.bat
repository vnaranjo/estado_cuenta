@echo off

REM If parameter is missing goto usage
if [%1]==[] goto usage
if [%2]==[] goto usage


REM Add Version
rmdir %VERSIONED%\%1\%2
goto :eof


:usage
@echo Usage: %0 ^<tool^> ^<name^>
exit /B 1