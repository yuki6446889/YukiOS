@echo off
color 9F

powershell Invoke-WebRequest "https://github.com/Alex313031/Thorium-Win/releases/download/M130.0.6723.174/thorium_AVX2_mini_installer.exe" -OutFile "%temp%\thorium_AVX2_mini_installer.exe" >nul 2>&1
if not exist "%temp%\thorium_AVX2_mini_installer.exe" (
    @echo Error: Failed to download Thorium browser.
    pause
    exit /b 1
)
%temp%\thorium_AVX2_mini_installer.exe /y
del /f "%temp%\thorium_AVX2_mini_installer.exe"