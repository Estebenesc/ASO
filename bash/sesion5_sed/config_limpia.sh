if [ $# -eq 0 ]; then
echo "Uso: $0 <fichero_configuracion>" 
exit 1
fi

FICHERO="$1"

if [ ! -f "$FICHERO" ]; then
echo "Error: el fichero '$FICHERO' no existe." 
exit 2
fi

sed -e '/^#/d' -e '/^$/d' "$FICHERO"