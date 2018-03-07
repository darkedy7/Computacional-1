#!/bin/bash

# Archivo "script1.sh"
# Script para bajar automáticamente los datos de sondeos atmosféricos de la
# Universidad de Wyoming (http://weather.uwyo.edu/upperair/sounding.html)
# para un rango de tiempo. Sustituir el valor de la estación de interés: 
# Por ejemplo Chihuahua es la estación número: 76225

STATION=93844

# Despues de editar este archivo, ejecuta el comando: chmod 755 script1.sh
# Para ejecutar el script: ./script1.sh

# Definimos el separador de valores de las variables, en este caso es ":" 
IFS=":"

# Por ejemplo nos interesan bajar los datos de: 2013-2017
LISTYs="2017"

# Lista de meses por días
LISTM31="01:03:05:07:08:10:12"
LISTM30="04:06:09:11"
LISTM28="02"

for j in $LISTYs ; do

# Meses 31 dias
for i in $LISTM31 ; do
	/usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=3112&STNM=$STATION"
# Reposa 5 segundos
        /bin/sleep 8
done
# Meses 30 dias
for i in $LISTM30 ; do
	/usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=3012&STNM=$STATION"
# Reposa 5 segundos
        /bin/sleep 8
done
# Feb. 28 dias
for i in $LISTM28 ; do
	/usr/bin/wget "http://weather.uwyo.edu/cgi-bin/sounding?region=naconf&TYPE=TEXT%3ALIST&YEAR=$j&MONTH=$i&FROM=0100&TO=2812&STNM=$STATION"
# Reposa 5 segundos
        /bin/sleep 8
done
done
