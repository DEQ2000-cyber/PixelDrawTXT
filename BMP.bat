@echo off
@title imagen bmp
Setlocal EnableDelayedExpansion
mode 60,60

:seteo
set X1=90
set Y1=90
set X2=90
set Y2=90
set X3=50
set Y3=50
set X4=218
set Y4=290
set Elejir=1

set Velocidad0=8
set Velocidad1=!Velocidad0!
set Velocidad2=!Velocidad0!
set Velocidad3=!Velocidad0!
set Velocidad4=!Velocidad0!


:main

rem if !X1! GEQ 200 (set X1=90)
rem if !X2! GEQ 200 (set X2=90)

call PixelDrawTXT-v3.exe 0 0 60 60 0 0 0 imagen !X1! !Y1! 400 400 1.bmp imagen !X4! !Y4! 9999 9999 2.bmp sprite "smile.dq" 8 8 1 !X3! !Y3! 0 1 texto "!key!" !X2! !Y2! 10 9 texto "X=!X%Elejir%!  Y=!Y%Elejir%!" 0 0 12 TRANSPARENT texto "Press [1][2][3][4] 'Change Sprite' [-][+] 'Speed'" 2 458 10 2 && set key=%errorlevel%
if !key!==331 (set /a X!Elejir!-=!Velocidad%Elejir%!)
if !key!==333 (set /a X!Elejir!+=!Velocidad%Elejir%!)
if !key!==336 (set /a Y!Elejir!+=!Velocidad%Elejir%!)
if !key!==328 (set /a Y!Elejir!-=!Velocidad%Elejir%!)

if !key!==49  (set Elejir=1)
if !key!==50  (set Elejir=2)
if !key!==51  (set Elejir=3)
if !key!==52  (set Elejir=4)

if !key!==43  (set /a Velocidad%Elejir%+=1)
if !key!==45  (set /a Velocidad%Elejir%-=1)

if !key!==27  (exit /b 0)
if !key!==114 (goto :seteo)


goto :main


