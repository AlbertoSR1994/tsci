@echo off
REM Generar paquete jar desde una interfaz IDL
REM Clase T�picos Selectos de Computaci�n I 
REM Luis G. Montan� Jim�nez 
echo ******************************************************
echo Limpiando archivos compilados anteriormente
set ARCHIVO_JAR=Casa.jar

echo Compilando interfaz IDL
idlj -fall Casa.idl

echo Compilando c�digo java generado por el compilador idl
javac CasaApp/*.java

echo Generar paquete jar......
echo %ARCHIVO_JAR%
IF NOT EXIST %ARCHIVO_JAR% GOTO terminar
del %ARCHIVO_JAR%
:terminar
jar -cf  %ARCHIVO_JAR% CasaApp\*.class

echo Compilaci�n finalizada!!!
echo ******************************************************
pause > nul