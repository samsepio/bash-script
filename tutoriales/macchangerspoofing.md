como ya sabemos cuando alguien le pone seguridad enserio a su internet utilisa ip spoofing o mac spoofing por ejemplo en mi colegio para uno conectarse a la red de internet debe estar su direccion mac registrada esto es porque es esta res se utilisa un filtrado de mac en la cual si la direccion mac no aparese en la lista asi tenga la contraseña con va a poder conectarse algo que resulta seguro pero que es muy facil de evadir con mac spoofing solamente me pongo la direccion mac de algun equipo que si este conectado a internet es decir que este la liste del filtrado de mac para esto existe para saber estas direccion mac podemos utilisar nmap o ir directamente a la pc que tiene acceso y sacar su direccion mac en caso de que esto no sea posible podemos utilisar nmap

	-----nmap -A -v -v 192.168.1.0/24 le da una gran cantidad de información, incluso por LO que en algunos casos
	-----nmap -sP 192.168.1.0/24 da las direcciones mac e ip. Muy Útil también
	-----sudo nmap -PU 192.168.1.0/24 explica cada dirección ip

Despues de Descubrir una direccion mac que este conectada a la red procederemos a utilisar macchanger

	-----ifconfig wlan1 down
	-----macchanger -r wlan1

listo ahora suplantamos la direccion mac

	----macchanger -m [direccion mac suplantacion] wlan1

#listo ahora ya tendriamos acceso al internet	
