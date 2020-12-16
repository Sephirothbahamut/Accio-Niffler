@echo off
echo The following files have some TODOs:
echo.
findstr /S /I /M /C:"TODO" *.tex
echo.
pause