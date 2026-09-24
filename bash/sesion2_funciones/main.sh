#!bin/bash
menu() {
     while true; do
     echo "1. Sumar"
     echo "2. Restar"
     echo "3. Multiplicar"
     echo "4. Dividir"
     echo "0. Salir"
     read -p "Seleccione una opción: " opcion
     case $opcion in
         1)
             sumar
             ;;
         2)
             restar
             ;;
         3)
             multiplicar
             ;;
         4)
             dividir
             ;;
         0) exit 0
            ;;
         *)
            echo "Entrada no valida"
            ;;

     esac
 done
}
sumar() {
    read -p "Ingrese el primer número: " num1
    read -p "Ingrese el segundo número: " num2
    resultado=$((num1 + num2))
    echo  "El resultado de la suma es: $resultado"
}
restar() {
    read -p "Ingrese el primer número: " num1
    read -p "Ingrese el segundo número: " num2
    resultado=$((num1 - num2))
    echo "El resultado de la resta es: $resultado"
    }
multiplicar() {
    read -p "Ingrese el primer número: " num1
    read -p "Ingrese el segundo número: " num2
    resultado=$((num1 * num2))
    echo "El resultado de la multiplicación es: $resultado"
}
dividir() {
     read -p "Ingrese el primer número: " num1
    read -p "Ingrese el segundo número: " num2
    resultado=$((num1 / num2))
    echo "El resultado de la división es: $resultado"
}
 
menu