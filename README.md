# Ubuntu-Local-Anonimizer

Ubuntu Local Anonimizer es un script diseñado para anonimizar el S.O Ubuntu a nivel local (Antes de conectarse a internet)

- Este script ha sido programado 100% en bash.
- Testeado en Ubuntu pero podría funcionar (o no) en diferentes distribuciones.

# [PROCESOS DE ANONIMIZER]

- APAGA LA TARJETA DE RED WIFI Y CABLEADA
- CAMBIA LAS DIRECCIONES MAC DE LAS TARJETAS DE RED
- CAMBIA EL HOSTNAME TEMPORAL Y PERMANENTE
- ACTIVA EL FIREWALL
- ENCIENDE LAS TARJETAS DE RED
- CAMBIA LA ZONA HORARIA LOCAL
- DESACTIVA LA CÁMARA
- MUTEA EL MICROFONO
- DESACTIVA EL BLUETOOTH
- ELIMINA EL HISTORIAL DE COMANDOS DE BASH
- ELIMINA LOS ARCHIVOS TEMPORALES DE LA CARPETA /TMP/
- ELIMINA LOS LOGS DE LA CARPETA /VAR/LOG/
- VACÍA LA PAPELERA
- UNA VEZ HECHO TODO SE CONECTA AL WIFI

# [ESTE SCRIPT NO HACE]

Este script No se conecta a TOR ni a una VPN/Proxi  
(Tu eres el único que puede decidir como cifrar tu conexión)

Este script No configura servidores DNS privados    
(Puedes configurarlos manualmente en la config de tu red Wifi es fácil y permanente,
no tendría sentido re-configurarlos cada vez que se ejecute la herramienta)
                                                    
# [REQUISITOS]

sudo apt install -y net-tools trash-cli macchanger sox figlet ufw alsa-utils kmod network-manager

# [CONFIGURACIÓN DE VARIABLES]

Dirigete al script Anonimizer.sh y modifica estas variables según tus necesidades:

0. Variables TarjetaDeRed --> En estas variables ingresa los nombres de tus tarjetas de Red Wifi y Cableada
1. Variable TimeZonee     --> Ingresa aquí la zona horaria que va a Spoofear tu ordenador. (Opcional)
2. Variable SSID y PASS   --> Ingresa aquí el SSID y la Contraseña de tu Red Wi-Fi
3. Variable Hostnames     --> En este apartado puedes cambiar la lista de hostnames si lo deseas.

# [CONFIGURAR/DESCONFIGURAR ANONIMIZER EN EL ARRANQUE DEL SISTEMA]

Ejecuta el Script BootConfig.sh y elige la opción que quieras.

# [UTILIZAR ANONIMIZER SIN CONFIGURARLO EN EL ARRANQUE DEL SISTEMA]

Ejecuta el Script "Anonimizer.sh" este es el script que contiene la carga útil de Anonimizer, es todo lo que necesitas hacer.
