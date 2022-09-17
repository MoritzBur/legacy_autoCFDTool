echo off
set LOCALHOST=%COMPUTERNAME%
set KILL_CMD="c:\PROGRA~1\ANSYSI~1\ANSYSS~1\v221\fluent/ntbin/win64/winkill.exe"

"c:\PROGRA~1\ANSYSI~1\ANSYSS~1\v221\fluent\ntbin\win64\tell.exe" herbert 49182 CLEANUP_EXITING
if /i "%LOCALHOST%"=="herbert" (%KILL_CMD% 6060) 
if /i "%LOCALHOST%"=="herbert" (%KILL_CMD% 16620) 
if /i "%LOCALHOST%"=="herbert" (%KILL_CMD% 4772)
del "M:\Studium\Projektarbeit\Projektarbeit_CFD\autoCFDTool\CFD\Mesh\cleanup-fluent-herbert-16620.bat"
