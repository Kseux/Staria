@echo off
:debut
echo "/--------------------------------"
echo "| Pour jouer en solo : tapez '1' "
echo "| Pour jouer en multi : tapez '2'"
echo "| Pour quitter tapez 'q'         "
echo "\--------------------------------"

::command
set /p choix=
if %choix%==1 goto Solo
if %choix%==2 goto Multi
if %choix%==q goto Quit

::Si ce n'est pas 1, 2 ou q alors c'est que ce n'est pas bon
echo Votre choix n'est pas correcte %choix%
Goto debut

:Solo
COPY bootstrap\bootstrapsolo.config ..\win32\bootstrap.config
..\win32\launcher\launcher.exe
COPY bootstrap\bootstrap.config ..\win32\bootstrap.config
exit

:Multi
git pull
COPY bootstrap\bootstrapmulti.config ..\win32\bootstrap.config
..\win32\launcher\launcher.exe
COPY bootstrap\bootstrap.config ..\win32\bootstrap.config
exit