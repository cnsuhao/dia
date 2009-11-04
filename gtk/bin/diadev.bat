@echo off

if "%1" == "msvc6" goto msvc6

rem WDK 7
set INCLUDE=%SDK_INC_PATH%;%SDK_INC_PATH%\..\crt;%SDK_INC_PATH%\crt\stl60
set LIB=%SDK_LIB_DEST%\i386\;%SDK_LIB_DEST%\..\crt\i386;c:\gtk\lib

goto finish

:msvc6
rem
rem Root of Visual Developer Studio Common files.
set VSCommonDir=C:\PROGRA~2\MICROS~1\Common

rem
rem Root of Visual Developer Studio installed files.
rem
set MSDevDir=C:\PROGRA~2\MICROS~1\Common\msdev98

rem
rem Root of Visual C++ installed files.
rem
set MSVCDir=C:\PROGRA~2\MICROS~1\VC98

rem
rem VcOsDir is used to help create either a Windows 95 or Windows NT specific path.
rem
set VcOsDir=WIN95
if "%OS%" == "Windows_NT" set VcOsDir=WINNT

rem
echo Setting environment for using Microsoft Visual C++ tools.
rem

if "%OS%" == "Windows_NT" set PATH=%MSDevDir%\BIN;%MSVCDir%\BIN;%VSCommonDir%\TOOLS\%VcOsDir%;%VSCommonDir%\TOOLS;%PATH%;c:\gtk\bin
if "%OS%" == "" set PATH="%MSDevDir%\BIN";"%MSVCDir%\BIN";"%VSCommonDir%\TOOLS\%VcOsDir%";"%VSCommonDir%\TOOLS";"%windir%\SYSTEM";"%PATH%"
set INCLUDE=%MSVCDir%\ATL\INCLUDE;%MSVCDir%\INCLUDE;%MSVCDir%\MFC\INCLUDE;%INCLUDE%
set LIB=%MSVCDir%\LIB;%MSVCDir%\MFC\LIB;%LIB%;c:\gtk\lib

set VcOsDir=
set VSCommonDir=

:finish
