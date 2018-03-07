#!/bin/bash
#recopilación de los archivos
cat sounding* > sondeos2.txt
#filtro de datos
egrep -v 'PRES|hPa' sondeos2.txt | egrep '93844|Showalter|LIFT|SWEAT|K|Totals|CAPE|CINS|LFCT|CAPV|Temp|Pres|thick|Precip' > df2017_2.csv

