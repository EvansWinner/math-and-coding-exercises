@echo off
:: 100DaysOfCode D3 #ProjectLovelace #3
:: NAND gate in DOS batch

:: Input validation
set oneok=0
set twook=0
if "%1"=="1" set oneok=1
if "%1"=="0" set oneok=1
if "%2"=="1" set twook=1
if "%2"=="0" set twook=1
if "%oneok%"=="0" goto error
if "%twook%"=="0" goto error

if "%1%2"=="11" ( 
  echo 0
) else (
  echo 1
)

goto eof

:error
echo "Input must be 0 or 1"
goto eof
:eof

