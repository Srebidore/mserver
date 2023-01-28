@echo off

rem Set the source and destination directories
set src=%cd%
set dst=..\serverbackup

rem Create the destination directory if it does not exist
if not exist %dst% mkdir %dst%

rem Copy all files and directories recursively from the source to the destination
xcopy /e /i /q %src% %dst%

rem Display a message indicating that the copy is complete
echo Backup complete!

rem Updating local files using github
git pull --rebase

echo Press Enter to Exit

pause
