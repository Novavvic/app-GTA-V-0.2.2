@echo off
echo ===================================================
echo     LANCEMENT DE GTA BUSINESS MANAGER 2026
echo ===================================================
echo.
echo Ouverture de l'application...
echo.
echo Cette version fonctionne sans Node.js ni serveur local.
echo.

if not exist "%~dp0out\index.html" (
	echo L'application n'est pas encore generee.
	echo Executez une fois "npm run build" sur un PC equipe de Node.js.
	pause
	exit /b 1
)

set "PAGE=%~dp0out\index.html"

if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
	start "" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" "%PAGE%"
	exit /b 0
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
	start "" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" "%PAGE%"
	exit /b 0
)
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
	start "" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" "%PAGE%"
	exit /b 0
)
if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" (
	start "" "%LocalAppData%\Google\Chrome\Application\chrome.exe" "%PAGE%"
	exit /b 0
)
if exist "%ProgramFiles%\Mozilla Firefox\firefox.exe" (
	start "" "%ProgramFiles%\Mozilla Firefox\firefox.exe" "%PAGE%"
	exit /b 0
)

echo Aucun navigateur compatible n'a ete trouve.
echo Ouvre ce fichier avec Edge, Chrome ou Firefox :
echo %PAGE%
pause

exit /b 0
