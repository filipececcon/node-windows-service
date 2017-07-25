@ECHO OFF

SET SERVICENAME=MY_SERVICE
SET NSSM="%CD%\nssm\nssm.exe"

ECHO INSTALLING SERVICE %SERVICENAME%

%NSSM% stop %SERVICENAME%
%NSSM% remove %SERVICENAME% confirm
%NSSM% install %SERVICENAME% %SERVICENAME%
%NSSM% set %SERVICENAME% Application %CD%\initializer.bat
%NSSM% set %SERVICENAME% AppDirectory %CD%
%NSSM% set %SERVICENAME% Description "Node Windows Service test"
%NSSM% set %SERVICENAME% Start SERVICE_AUTO_START
%NSSM% set %SERVICENAME% AppStopMethodSkip 0
%NSSM% set %SERVICENAME% AppStopMethodConsole 0
%NSSM% set %SERVICENAME% AppStopMethodWindow 0
%NSSM% set %SERVICENAME% AppStopMethodThreads 0
%NSSM% set %SERVICENAME% AppThrottle 0
%NSSM% set %SERVICENAME% AppExit Default Ignore
%NSSM% set %SERVICENAME% AppRestartDelay 0
%NSSM% set %SERVICENAME% AppStdout %CD%\logs\%SERVICENAME%.log
%NSSM% set %SERVICENAME% AppStderr %CD%\logs\%SERVICENAME%.log
%NSSM% set %SERVICENAME% AppStdoutCreationDisposition 4
%NSSM% set %SERVICENAME% AppStderrCreationDisposition 4
%NSSM% set %SERVICENAME% AppRotateFiles 1
%NSSM% set %SERVICENAME% AppRotateOnline 0
%NSSM% set %SERVICENAME% AppRotateSeconds 3600
%NSSM% set %SERVICENAME% AppRotateBytes 524288
