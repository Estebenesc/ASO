#!bin/bash
clasificar_http(){
    if [[ $1 -ge 200 && $1 -le 299 ]]; then
        echo "Exito"
    elif [[ $1 -ge 300 && $1 -le 399 ]]; then
        echo "Redirección"
    elif [[ $1 -ge 400 && $1 -le 499 ]]; then
        echo "Error en el cliente"
    elif [[ $1 -ge 500 && $1 -le 599 ]]; then
        echo "Error en el servidor"
    else echo "Entrada no valida, introduce un codigo de estado."
    fi
}
clasificar_http 200