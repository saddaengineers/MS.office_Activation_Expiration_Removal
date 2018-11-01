@echo off

:OSPP
reg query HKLM\Software\Microsoft\Office\14.0\Common\OSPPREARM
if %errorlevel%==1 (goto RUN) else (goto END)

:RUN
set ProgramFilesPath=%ProgramFiles%
"%ProgramFilesPath%\Common Files\microsoft shared\OfficeSoftwareProtectionPlatform\OSPPREARM.EXE"
C:\Windows\system32\cscript.exe "%ProgramFilesPath%\Microsoft Office\Office14\ospp.vbs" /act
set ProgramFilesPath=%ProgramFiles(x86)%
"%ProgramFilesPath%\Common Files\microsoft shared\OfficeSoftwareProtectionPlatform\OSPPREARM.EXE"
C:\Windows\system32\cscript.exe "%ProgramFilesPath%\Microsoft Office\Office14\ospp.vbs" /act
REG ADD "HKLM\Software\Microsoft\Office\14.0\Common\OSPPREARM"

:END
Exit