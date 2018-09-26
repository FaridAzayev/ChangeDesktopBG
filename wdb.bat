rem rmdir C:\wallpaper /q /s
attrib -R -A -H -S c:\wallpaper\*.jpg /s /d
set /p pic_path="Enter desktop bg picture path: "
rem echo %pic_path%
copy %pic_path%  "c:\wallpaper\Desktop(16_9).jpg" /y
copy %pic_path%  "c:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Themes\CachedImage_1920_1080_POS2.jpg" /y

pause
rmdir C:\screensaver /q /s
rem rmdir c:\Users\%UserName%\AppData\Roaming\Microsoft\Windows\Themes /q/s
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v NoChangingLockScreen /t REG_DWORD /d 0 /f
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Personalization" /v LockScreenImage /t REG_SZ /d %pic_path% /f
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d %pic_path% /f
RUNDLL32.EXE USER32.DLL, UpdatePerUserSystemParameters 1, True
RUNDLL32.EXE user32.dll, UpdatePerUserSystemParameters
rem explorer shell:::{ED834ED6-4B5A-4bfe-8F11-A626DCB6A921} -Microsoft.Personalization\pageWallpaper

echo "press alt+shift+prtscr" x2
pause
