#!/bin/bash
for entrada in ./*;  do
    if [ -d $entrada ]; then
        echo "$entrada es un directorio"
    elif [ -f $entrada ]; then
        echo "$entrada es un fichero"
    else
        echo "$entrada es otro tipo de entrada"
    fi;
done;