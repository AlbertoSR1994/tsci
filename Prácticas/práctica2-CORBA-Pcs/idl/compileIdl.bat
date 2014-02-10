@echo off
REM Generar paquete jar desde una interfaz IDL
REM Clase T�picos Selectos de Computaci�n I 
REM Luis G. Montan� Jim�nez 
echo ******************************************************
echo Limpiando archivos compilados anteriormente
set ARCHIVO_JAR=PCControl.jar

echo Compilando interfaz IDL
idlj -fall PCControl.idl

echo Compilando c�digo java generado por el compilador idl
javac PCControlApp/*.java
javac PCControlApp/PCControlPackage/*.java

echo Generar paquete jar......
echo %ARCHIVO_JAR%
IF NOT EXIST %ARCHIVO_JAR% GOTO terminar
del %ARCHIVO_JAR%
:terminar
jar -cf  %ARCHIVO_JAR% PCControlApp\*.class PCControlApp\PCControlPackage\*.class

echo Compilaci�n finalizada!!!
echo ******************************************************
pause > nul