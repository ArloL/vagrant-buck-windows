@echo off
reg add "HKCU\Control Panel\Desktop" /v ScreenSaveActive /t REG_SZ /d 0 /f
reg delete "HKCU\Control Panel\Desktop" /v SCRNSAVE.EXE /f
exit /b 0
