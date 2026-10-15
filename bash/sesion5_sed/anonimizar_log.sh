if [ $# -eq 0 ]; then
echo "Uso: $0 " 
exit 1
fi

FICHERO="$1" 

if [ ! -f "$FICHERO" ]; then
echo "Error: el fichero '$FICHERO' no existe." 
exit 2
fi

sed -E 's/[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}.[0-9]{1,3}/X.X.X.X/g' "$FICHERO" > "$FICHERO".anonimo