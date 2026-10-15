if [ $# -eq 0 ]; then
echo "Uso: $0 " 
exit 1
fi

FICHERO="$1" 

if [ ! -f "$FICHERO" ]; then
echo "Error: el fichero '$FICHERO' no existe." 
exit 2
fi

sed -E 's/@(gmail|hotmail).com/@alu.edu.gva.es/g' "$FICHERO"