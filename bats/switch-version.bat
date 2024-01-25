@echo off

REM If parameter is missing goto usage
if [%1]==[] goto usage
if [%2]==[] goto usage


REM List Versions
rmdir %DEV%\%1
mklink /j %DEV%\%1 %VERSIONED%\%1\%2
goto :eof


:usage
@echo Usage: %0 ^<tool^> ^<version^>
exit /B 1