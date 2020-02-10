echo "eliga su opcion C=crear E=eliminar: "
read opcion;
if [[ $opcion = *c* ]]
then
	echo "nombre del archivo a crear: "
	read archivo;
	touch $archivo;
	echo "archivo creado correctamente"
elif [[ $opcion = *e* ]]
then
	echo "nombre de el archivo a eliminar: "
	read delete;
	sudo rm -r $delete;
	echo "archivo eliminado correctamente"
else
	echo "opcion no encontrada"
fi
