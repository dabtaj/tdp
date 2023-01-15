@echo off
CD /D "%~dp0"
powershell -Command "& {Invoke-WebRequest https://drive.google.com/file/d/12DrLgL4IhcH1rBcBFZEo1xOoM19zOKXR -OutFile wallpaper.zip; Expand-Archive wallpaper.zip; Remove-Item wallpaper.zip}"
@D:\a\wallpaper\wallpaper.exe D:\a\wallpaper\wallpaper.bgi /timer:0
@RD /S /Q wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
taskkill /f /im explorer.exe
start explorer.exe
