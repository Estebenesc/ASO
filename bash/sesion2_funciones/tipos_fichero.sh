#!/bin/bash

contar_por_ext() {
    local carpeta="$1"
    local ext="$2"
    
  
    local cantidad
    cantidad=$(find "$carpeta" -maxdepth 1 -type f -name "*.$ext" | wc -l)
    
    echo "$cantidad"
}


directorio="$HOME/datos"


for extension in log txt csv; do
    total=$(contar_por_ext "$directorio" "$extension")
    echo "$extension  $total"
done