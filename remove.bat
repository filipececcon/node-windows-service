@ECHO OFF

SET SERVICENAME=MY_SERVICE
SET NSSM="%CD%\nssm\nssm.exe"

ECHO REMOVING SERVICE %SERVICENAME%

%NSSM% stop %SERVICENAME%
%NSSM% remove %SERVICENAME% confirm
