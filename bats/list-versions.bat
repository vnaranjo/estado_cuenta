@echo off

REM If parameter is missing goto usage
if [%1]==[] goto usage


REM List Versions
dir /B %VERSIONED%\%1
goto :eof


:usage
@echo Usage: %0 ^<tool^>
exit /B 1