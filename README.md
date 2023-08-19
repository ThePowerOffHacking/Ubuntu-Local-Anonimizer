# Ubuntu-Local-Anonimizer
Anonimizador de Sitemas Linux a nivel local (Testeado en Ubuntu)
===========================================================================================================================
  _   _ _                 _           _                    _      _                      _           _              
 | | | | |__  _   _ _ __ | |_ _   _  | |    ___   ___ __ _| |    / \   _ __   ___  _ __ (_)_ __ ___ (_)_______ _ __ 
 | | | | '_ \| | | | '_ \| __| | | | | |   / _ \ / __/ _` | |   / _ \ | '_ \ / _ \| '_ \| | '_ ` _ \| |_  / _ \ '__|
 | |_| | |_) | |_| | | | | |_| |_| | | |__| (_) | (_| (_| | |  / ___ \| | | | (_) | | | | | | | | | | |/ /  __/ |   
  \___/|_.__/ \__,_|_| |_|\__|\__,_| |_____\___/ \___\__,_|_| /_/   \_\_| |_|\___/|_| |_|_|_| |_| |_|_/___\___|_|   
                                                              
===========================================================================================================================

Ubuntu Local Anonimizer es un script diseñado para anonimizar el S.O Ubuntu a nivel local (Antes de conectarse a internet)

- Este script ha sido programado 100% en bash.
- Testeado en Ubuntu pero podría funcionar (o no) en diferentes distribuciones.

[PROCESOS DE ANONIMIZER]

# APAGA LA TARJETA DE RED WIFI Y CABLEADA
# CAMBIA LAS DIRECCIONES MAC DE LAS TARJETAS DE RED
# CAMBIA EL HOSTNAME TEMPORAL Y PERMANENTE
# ACTIVA EL FIREWALL
# ENCIENDE LAS TARJETAS DE RED
# CAMBIA LA ZONA HORARIA LOCAL
# DESACTIVA LA CÁMARA
# MUTEA EL MICROFONO
# DESACTIVA EL BLUETOOTH
# ELIMINA EL HISTORIAL DE COMANDOS DE BASH
# ELIMINA LOS ARCHIVOS TEMPORALES DE LA CARPETA /TMP/
# ELIMINA LOS LOGS DE LA CARPETA /VAR/LOG/
# VACÍA LA PAPELERA
# UNA VEZ HECHO TODO SE CONECTA AL WIFI


[ESTE SCRIPT NO HACE]

Este script No se conecta a TOR ni a una VPN/Proxi  (Tu eres el único que puede decidir como cifrar tu conexión)
Este script No configura servidores DNS privados    (Puedes configurarlos manualmente en la config de tu red Wifi es fácil y permanente,
                                                    no tendría sentido re-configurarlos cada vez que se ejecute la herramienta)
                                                    
==============================================================================================================================

[REQUISITOS]

sudo apt install -y net-tools trash-cli macchanger sox figlet ufw alsa-utils kmod network-manager

===========================================================================================================================

[CONFIGURACIÓN DE VARIABLES]

Dirigete al script Anonimizer.sh y modifica estas variables según tus necesidades:

0. Variables TarjetaDeRed --> En estas variables ingresa los nombres de tus tarjetas de Red Wifi y Cableada
1. Variable TimeZonee --> Ingresa aquí la zona horaria que va a Spoofear tu ordenador. (Opcional)
2. Variable SSID y PASS --> Ingresa aquí el SSID y la Contraseña de tu Red Wi-Fi
3. Variable Hostnames ---> En este apartado puedes cambiar la lista de hostnames si lo deseas.

------------------------------------------------------------------------------------------------------------------------------
[CONFIGURAR/DESCONFIGURAR ANONIMIZER EN EL ARRANQUE DEL SISTEMA]

Ejecuta el Script BootConfig.sh y elige la opción que quieras.
------------------------------------------------------------------------------------------------------------------------------

[UTILIZAR ANONIMIZER SIN CONFIGURARLO EN EL ARRANQUE DEL SISTEMA]

Ejecuta el Script "Anonimizer.sh" este es el script que contiene la carga útil de Anonimizer, es todo lo que necesitas hacer.

------------------------------------------------------------------------------------------------------------------------------

===========================================================================================================================


[TIPS COMPLEMENTARIOS A ANONIMIZER PARA MEJORAR EL ANONIMATO Y LA PRIVACIDAD]

Además de utilizar el Script Anonimizer.sh es necesario implementar diferentes técnicas y configuraciones complementarias 
para mejorar todavía más la seguridad, privacidad y anonimato del Ordenador

Aquí van una lista de configuraciones y comandos que pueden ayudarte con eso: (Probadas y Testeadas en Ubuntu)

===========================================================================================================================
[CONFIGURACIÓN DEL WIFI]
===========================================================================================================================
Accede a los ajustes de tu Red Wifi y selecciona:

1. Desmarca la casilla Hacer visible para otros usuarios
2. Desmarca la casilla Conectar Automáticamente
3. Desactivar Metodo IPV6
4. Configura los DNS de la Red Wifi por unos privados (Cloudflare es: 1.1.1.1,1.0.0.1)
===========================================================================================================================

===========================================================================================================================
[CONFIGURAR WAYLAND]
===========================================================================================================================
El administrador de pantalla predeterminado para el entorno de escritorio GNOME es GDM3.
por lo tanto para poder activar "Wayland" deberemos modificar su archivo de configuración:

----------------------------------------------------------------------------------------------------------------------------
PASO 1: (Abrir el fichero de configuración)
 
sudo nano /etc/gdm3/custom.conf
----------------------------------------------------------------------------------------------------------------------------
PASO 2:

Busca #Wayland=false y cambialo por Wayland=true

Una vez echo eso guarda los cambios.
----------------------------------------------------------------------------------------------------------------------------
PASO 3:

Reincia GDM3 para que se apliquen los cambios.

sudo systemctl restart gdm3
----------------------------------------------------------------------------------------------------------------------------
PASO 4:

Para comprobar si Wayland se ha activado correctamente podemos usar el siguiente comando:

echo $XDG_SESSION_TYPE
===========================================================================================================================

===========================================================================================================================
[CONFIGURACIÓN DE PRIVACIDAD EN UBUNTU]
===========================================================================================================================
Entra en Configuración/Privacidad

----------------------------------------------------------------------------------------------------------------------------
1. En el apartado "Conectividad" desactiva la comprobación de conectividad.
----------------------------------------------------------------------------------------------------------------------------
2. Apaga el apartado "Servicios de Ubicación"
----------------------------------------------------------------------------------------------------------------------------
3. Desactiva el apartado "Historico de Archivos"
----------------------------------------------------------------------------------------------------------------------------
4. En el apartado "Papelera y archivos temporales"

- Activa eliminar los archivos temporales automáticamente
- Periodo para eliminar archivos temporales: 1 día
----------------------------------------------------------------------------------------------------------------------------
5. En el apartado "Diagnosticos" desactiva la opción de enviar informes de error a Canonical
===========================================================================================================================

===========================================================================================================================
[DESACTIVAR MICROFONO, CÁMARA, BLUETOOTH]
===========================================================================================================================

[1] Desactivar/Activar Bluetooth

sudo systemctl start bluetooth
sudo systemctl stop bluetooth

[2] Desactivar/Activar Bluetooth en el arranque:

sudo systemctl disable bluetooth
sudo systemctl enable bluetooth

----------------------------------------------------------------------------------------------------------------------------

[1] Desactivar/Activar la cámara de forma permanente en Ubuntu

Paso 1. Abre el gestor de blacklists con "sudo nano /etc/modprobe.d/blacklist.conf"
Paso 2. Dirigete a la última línea del archivo y escribe "blacklist uvcvideo"
Paso 3. Guarda los cambios y sal.

Para quitar la cámara de la lista negra abre el archivo y elimina la línea "blacklist uvcvideo"


[2] Desactivar/Activar la cámara de forma temporal en Ubuntu

sudo modprobe uvcvideo      #Activa la cámara
sudo modprobe -r uvcvideo   #Desactiva la cámara

----------------------------------------------------------------------------------------------------------------------------

[1] Desactivar/Activar Micrófono en Ubuntu a nivel Temporal

amixer set Capture nocap >/dev/null   #Desactiva
amixer set Capture cap >/dev/null     #Activa

===========================================================================================================================

===========================================================================================================================
[CAMBIAR DIRECCIÓN MAC Y HOSTNAME]
===========================================================================================================================

[1] CAMBIAR DIRECCIÓN MAC

sudo ifconfig TarjetaDeRed down
sudo macchanger -r TarjetaDeRed
sudo ifconfig TarjetaDeRed up

----------------------------------------------------------------------------------------------------------------------------

[2] CAMBIAR HOSTNAME

#Cambiar Hostname de forma temporal:

sudo hostname <nuevo hostname>

#Cambiar Hostname de forma permanente:

sudo hostnamectl set-hostname <nuevo hostname>

===========================================================================================================================

===========================================================================================================================
[HISTORIAL DE COMANDOS EN BASH]
===========================================================================================================================

[1] VER EL HISTORIAL DE COMANDOS

history

----------------------------------------------------------------------------------------------------------------------------

[2] ELIMINAR EL HISTORIAL DE COMANDOS [FULL]

echo "" > ~/.bash_history && history -c
===========================================================================================================================

===========================================================================================================================
[ARCHIVOS TEMPORALES]
===========================================================================================================================

[1] VER ARCHIVOS TEMPORALES

ls /tmp/
----------------------------------------------------------------------------------------------------------------------------

[2] ELIMINAR ARCHIVOS TEMPORALES

sudo rm -r /tmp/*
===========================================================================================================================

===========================================================================================================================
[UFW / UBUNTU FIREWALL]
===========================================================================================================================

Instalar Ubuntu Firewall  ---> sudo apt install ufw
Activar Ubuntu Firewall   ---> sudo ufw enable
Verifiar Status           ---> sudo ufw status
Reiniciar servicio de UFW ---> sudo ufw reload
Resetear UFW de fábrica   ---> sudo ufw reset

Si sabes configurar FireWalls recomiendo que añadas reglas a tu elección.

Es recomendable resetear UFW de fábrica cada vez que reinicies el ordenador, esto podría ayudarte a expulsar alguien 
que haya conseguido añadir reglas a tu Firewall para conectarse a tu máquina
===========================================================================================================================

===========================================================================================================================
[MANTEN EL SISTEMA ACTUALIZADO]
===========================================================================================================================

1. Cuando existan actualizaciones del sistema, instalalas.
2. Utiliza el siguiente comando a diario para actualizar los repositorios: "sudo apt update && sudo apt upgrade -y"

sudo apt update >/dev/null 2>&1 && sudo apt upgrade -y >/dev/null 2>&1
===========================================================================================================================

===========================================================================================================================
[ELIMINAR LOGS] (Volverán a aparecer cuando reinicies)
===========================================================================================================================

cd /var/log

sudo rm auth.log  >> Guarda los logs de las veces que te autenticas como sudo
sudo rm dpkg.log  >> Guarda los logs de los programas que descargas

BORRAR TODOS LOS LOGS >> sudo rm -r /var/log/*
===========================================================================================================================


