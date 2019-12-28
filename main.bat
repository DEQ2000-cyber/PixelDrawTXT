@echo off
@title imagen bmp
Setlocal EnableDelayedExpansion
rem mode 60,60

:seteo
set X1=0
set Y1=0

set XC1=4
set YC1=4
set /a RC1=10
set /a Radio=!RC1!*8*2+1

set X2=90
set Y2=90
set X3=50
set Y3=50
set Elejir=1

set Velocidad0=1
set Velocidad1=!Velocidad0!
set Velocidad2=!Velocidad0!
set Velocidad3=!Velocidad0!


:main

rem if !X1! GEQ 200 (set X1=90)
rem if !X2! GEQ 200 (set X2=90)

REM call PixelDrawTXT-v3.exe 0 0 198 90 0 0 0 circuloTXT !X1! !Y1! !RC1! 10 circuloF !XC1! !YC1! !Radio! 1 texto "!Velocidad%Elejir%!" 5 5 2 10
 call PixelDrawTXT-v3.exe 0 0 198 90 0 0 0 circuloTXT !X1! !Y1! !X2! 10 texto "!X2! !Y2!" 5 5 12 10
rem call PixelDrawTXT-v3.exe 0 0 198 90 0 0 0 sprite "smile.dq" 8 8 1 !X2! !Y2! 1 1 spriteRGB "smile.dq" "PaletaColor.txt" 8 8 1 !X1! !Y1! 1 1

set key=%errorlevel%

if !key!==331 (set /a X!Elejir!-=!Velocidad%Elejir%!
			   set /a XC!Elejir!-=!Velocidad%Elejir%!*8)
if !key!==333 (set /a X!Elejir!+=!Velocidad%Elejir%!
			   set /a XC!Elejir!+=!Velocidad%Elejir%!*8)
if !key!==336 (set /a Y!Elejir!+=!Velocidad%Elejir%!
			   set /a YC!Elejir!+=!Velocidad%Elejir%!*8)
if !key!==328 (set /a Y!Elejir!-=!Velocidad%Elejir%!
			   set /a YC!Elejir!-=!Velocidad%Elejir%!*8)

if !key!==49  (set Elejir=1)
if !key!==50  (set Elejir=2)
if !key!==51  (set Elejir=3)

if !key!==43  (set /a Velocidad%Elejir%+=1)
if !key!==45  (set /a Velocidad%Elejir%-=1)

if !key!==27  (exit /b 0)
if !key!==114 (goto :seteo)


goto :main


