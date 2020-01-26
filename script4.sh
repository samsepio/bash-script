echo "nombre del archivo: "
read archivo;
sudo mv $archivo /usr/bin
echo "quieres que el archivo sea ejecutable s/n : "
read opcion;
if [[ $opcion = *s* ]]
then
	cd /usr/bin
	chmod 777 $archivo;
else
	echo "el archivo fue movido a /usr/bin pero no es ejecutable"
fi

