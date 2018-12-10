#!/bin/sh
#$ -S /bin/sh

for i in {1..100}
do
    ./mcell -seed $i mcell_intern_8_popen_red.mdl 
done
exit 0
