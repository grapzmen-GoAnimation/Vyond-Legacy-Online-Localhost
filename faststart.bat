:: Important stuff
@echo off && cls
title Vyond Legacy Online
if not exist "installed" (if not exist "notinstalled" (echo Vyond Legacy Online Configuration File >> notinstalled))
::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Terminate existing node.js apps
TASKKILL /IM node.exe /F 2>nul
cls

:::::::::::::::::::::::::::::
:: Start GoAnimate Remastered ::
:::::::::::::::::::::::::::::

:: Check for installation
if exist notinstalled (
	echo Vyond Legacy Online is not installed! Installing...
	call npm install
	ren "notinstalled" "installed"
	cls
	goto start
) else (
	goto start
)

:: Run npm start
:start
echo Vyond Legacy Online is now starting...
echo Please Navigate To http://localhost:3000 Or http://127.0.0.1:3000 On Your Browser.
npm start

