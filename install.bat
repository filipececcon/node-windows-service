@ECHO OFF

SET SERVICENAME=MEU_SERVICO

ECHO INSTALLING SERVICE %SERVICENAME%

SET MILISECONDS=1500
SET NSSM="%CD%\nssm\nssm.exe"

%NSSM% stop %SERVICENAME%
%NSSM% remove %SERVICENAME% confirm
%NSSM% install %SERVICENAME% %SERVICENAME%

%NSSM% set %SERVICENAME% Application %CD%\initializer.bat
%NSSM% set %SERVICENAME% AppDirectory %CD%
%NSSM% set %SERVICENAME% Description "Node Windows Service test"
%NSSM% set %SERVICENAME% Start SERVICE_AUTO_START
%NSSM% set %SERVICENAME% AppStopMethodSkip 0
%NSSM% set %SERVICENAME% AppStopMethodConsole %MILISECONDS%
%NSSM% set %SERVICENAME% AppStopMethodWindow %MILISECONDS%
%NSSM% set %SERVICENAME% AppStopMethodThreads %MILISECONDS%
%NSSM% set %SERVICENAME% AppThrottle %MILISECONDS%
%NSSM% set %SERVICENAME% AppExit Default Restart
%NSSM% set %SERVICENAME% AppRestartDelay 0
%NSSM% set %SERVICENAME% AppStdout %CD%\logs\%SERVICENAME%.log
%NSSM% set %SERVICENAME% AppStderr %CD%\logs\%SERVICENAME%.log
%NSSM% set %SERVICENAME% AppStdoutCreationDisposition 4
%NSSM% set %SERVICENAME% AppStderrCreationDisposition 4
%NSSM% set %SERVICENAME% AppRotateFiles 1
%NSSM% set %SERVICENAME% AppRotateOnline 0
%NSSM% set %SERVICENAME% AppRotateSeconds 3600
%NSSM% set %SERVICENAME% AppRotateBytes 524288
