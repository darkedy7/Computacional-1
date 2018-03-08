#!/bin/bash
#recopilación de los archivos
#cat sounding* > sondeos3.txt
#filtro de datos
egrep -v 'PRES|hPa' sondeos3.txt | egrep '13275|CAPE |Precip' > df2017CAPE_PW.csv

