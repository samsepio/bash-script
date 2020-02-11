echo "directorio a contar el numero de archivos: "
read contar;
echo "total de archivos del directorio $contar..."
cd /$contar
ls | wc -l
echo "todo se ejecuto correctamente"

