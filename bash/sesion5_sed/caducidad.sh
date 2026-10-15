#!/bin/bash

FICHERO="login.defs"
DIAS="$1"

if [[ ! "$DIAS" =~ ^[0-9]{1,3}$ ]]; then
    echo "Error: $DIAS no es un número de días válido"
    exit 1
fi

if [[ ! -f "$FICHERO" ]]; then
    echo "Error: No se encuentra el fichero $FICHERO en el directorio actual"
    exit 1
fi

VALOR_ANTERIOR=$(grep -E '^*PASS_MAX_DAYS' "$FICHERO" | head -n 1)


sed -i.bak -E "s/^( *PASS_MAX_DAYS +)[0-9]+/\1$DIAS/" "$FICHERO"


VALOR_NUEVO=$(grep -E '^ *PASS_MAX_DAYS' "$FICHERO" | head -n 1)


echo "Antes: $VALOR_ANTERIOR"
echo "Después: $VALOR_NUEVO"