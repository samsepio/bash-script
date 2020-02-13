echo "nombre de directorio a copiar archivos: "
read nombre;
cd /$nombre;
echo "filtrar por extencion [s]o[N]: "
read extencion;
if [[ extencion = *s* ]]
then
	echo "extencion de los archivos a copiar: "
	read ext;
	cp *$ext cd --
	echo "todos los archivos con la extencion $ext fueron copiados"
elif [[ extencion = *N* ]]
then
	cp * cd --
	echo "todos los archivos del directorio $nombre fueron copiados"
else
	echo "terminado...!"
fi
