#!/bin/bash

if [[ $# == 0 ]]; then
    echo "Debes indicar el nombre del servicio"
else
    echo "Iniciando el servicio $1"
fi;