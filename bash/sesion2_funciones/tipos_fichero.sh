#!/bin/bash
contar_por_ext(){

    find ~/"$1" -maxdepth 1 -type f -name "*.$2" | wc -l
}

contar_por_ext datos csv