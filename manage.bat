@echo off
setlocal EnableDelayedExpansion

set "expansion="
set "addon="
set "addon_src="
set "addon_dst="

set "addon[1]=WorldOfWarcraft"
set "addon[2]=BurningCrusade"
set "addon[3]=WrathOfTheLichKing"
set "addon[9]=MistsOfPandaria"
set "addon[10]=Dragonflight"
set "addon[11]=TheWarWithin"

goto :main

:install_addon
if not exist %addon_dst% (
    mkdir %addon_dst%
)
mklink /d %addon_dst%\core core
mklink /d %addon_dst%\libs libs
mklink %addon_dst%\embeds.xml embeds.xml
mklink /d %addon_dst%\localization %addon_src%\localization
mklink /d %addon_dst%\zones %addon_src%\zones
mklink %addon_dst%\common.lua %addon_src%\common.lua
mklink %addon_dst%\BetterWorldMap_%addon%.toc %addon_src%\BetterWorldMap_%addon%.toc
mklink %addon_dst%\template.xml %addon_src%\template.xml
mklink %addon_dst%\plugin.xml %addon_src%\plugin.xml
exit /B 0

:delete_addon
if exist %addon_dst% (
    rmdir /s /q %addon_dst%
)
exit /B 0

:build_addon
if exist %addon_dst% (
    rmdir /s /q %addon_dst%
)
mkdir %addon_dst%
xcopy "core" "%addon_dst%\core" /i /e
xcopy "libs" "%addon_dst%\libs" /i /e
xcopy "embeds.xml" "%addon_dst%\embeds.xml*"
xcopy "%addon_src%\localization" "%addon_dst%\localization" /i /e
xcopy "%addon_src%\zones" "%addon_dst%\zones" /i /e
xcopy "%addon_src%\common.lua" "%addon_dst%\common.lua*"
xcopy "%addon_src%\BetterWorldMap_%addon%.toc" "%addon_dst%\BetterWorldMap_%addon%.toc*"
xcopy "%addon_src%\template.xml" "%addon_dst%\template.xml*"
xcopy "%addon_src%\plugin.xml" "%addon_dst%\plugin.xml*"
exit /B 0

:main
set /A "expansion=%~4"
set addon=!addon[%expansion%]!
if %expansion% lss 10 (
    set "expansion=0%expansion%"
)
set "addon_src=addons\%expansion%_%addon%"
set "addon_dst=%~2\BetterWorldMap_%addon%"
if "%~1" == "-i" call :install_addon
if "%~1" == "-d" call :delete_addon
if "%~1" == "-b" call :build_addon
exit /B 0