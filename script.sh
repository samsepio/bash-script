echo "nombre del archivo a sobrescribir: "
read archivo;
shred -f -n 5 $archivo;
echo "quieres eliminar el archivo sobrescrito: s/n "
read remove;
if [[ $remove = *s* ]]
then
	rm -r $archivo
else
	echo "el archivo fue sobrescrito pero no eliminado"
fi
