#!/bin/bash
porcent=$(($1 * 100 / $2))
if [[ $porcent -lt 70 ]]; then
    echo "OK"
elif [[ $porcent -ge 70 && $porcent -lt 90 ]]; then
    echo "AVISO"
else
    echo "CRITICO"
fi;