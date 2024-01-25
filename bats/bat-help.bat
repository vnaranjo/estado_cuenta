@echo off
pushd .

cd %ROOT%

for %%x in (bats\*.bat) do echo %%~nx

popd