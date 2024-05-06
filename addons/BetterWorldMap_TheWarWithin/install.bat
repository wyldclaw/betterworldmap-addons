@echo off
set flag=%1
set path=%2
set addon=TheWarWithin

if "%1"=="" call :show_help
if "%1"=="-h" call :show_help
if "%1"=="--help" call :show_help
if "%1"=="-d" call :delete_addon
if "%1"=="--delete" call :delete_addon
if "%1"=="-i" call :install_addon
if "%1"=="--install" call :install_addon
exit /B

:show_help
echo install.bat [-h] [-d] [-i] Path\To\Interface\AddOns
echo Note: Must be run as administrator to create symlinks
echo     -h, --help      show this help message and exit
echo     -i, --install   install this addon
echo     -d, --delete    delete and exit
exit /B

:delete_addon
if exist %path%\BetterWorldMap_%addon% (
    rmdir /s /q %path%\BetterWorldMap_%addon%
)
exit /B

:install_addon
if not exist %path%/BetterWorldMap_%addon% (
    mkdir %path%/BetterWorldMap_%addon%
)
mklink /d %path%\BetterWorldMap_%addon%\core "%~dp0..\..\core"
mklink /d %path%\BetterWorldMap_%addon%\libs "%~dp0..\..\libs"
mklink %path%\BetterWorldMap_%addon%\embeds.xml "%~dp0..\..\embeds.xml"
mklink /d %path%\BetterWorldMap_%addon%\localization "%~dp0localization"
mklink /d %path%\BetterWorldMap_%addon%\zones  "%~dp0zones"
mklink %path%\BetterWorldMap_%addon%\common.lua "%~dp0common.lua"
mklink %path%\BetterWorldMap_%addon%\BetterWorldMap_%addon%.toc "%~dp0BetterWorldMap_%addon%.toc"
mklink %path%\BetterWorldMap_%addon%\template.xml "%~dp0template.xml"
mklink %path%\BetterWorldMap_%addon%\plugin.xml "%~dp0plugin.xml"
exit /B
