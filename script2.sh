if netcat -z google.com 80;
then
	echo "tienes conexion a internet"
else
	echo "no tienes conexion a internet "
fi
