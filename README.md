# 𝘜𝘣𝘶𝘯𝘵𝘶-𝘓𝘰𝘤𝘢𝘭-𝘈𝘯𝘰𝘯𝘪𝘮𝘪z𝘦𝘳 🎭

Ubuntu Local Anonimizer es un script diseñado para anonimizar el S.O Ubuntu a nivel local (Antes de conectarse a internet)

- Este script ha sido programado 100% en bash.
- Testeado en Ubuntu pero podría funcionar (o no) en diferentes distribuciones.

# Instalación de Ubuntu-Local-Anonimizer

# Paso 1 Descargar la herramienta y los requisitos

- git clone https://github.com/ThePowerOffHacking/Ubuntu-Local-Anonimizer.git
- cd Ubuntu-Local-Anonimizer
- chmod +x Requirements.sh
- bash Requirements.sh

# Paso 2 Configurar las Variables

- nano Anonimizer.sh

Dirigete al script Anonimizer.sh y modifica estas variables según tus necesidades:

- Variables TarjetaDeRed  --> En estas variables ingresa los nombres de tus tarjetas de Red Wifi y Cableada
- Variable TimeZone       --> Ingresa aquí la zona horaria que va a Spoofear tu ordenador. (Opcional)
- Variable SSID y PASS    --> Ingresa aquí el SSID y la Contraseña de tu Red Wi-Fi
- Variable Hostnames      --> En este apartado puedes cambiar la lista de hostnames si lo deseas.

# Ejecución de Ubuntu-Local-Anonimizer
bash Anonimizer.sh

# Configurar Anonimizer en el arranque del sistema

- bash BootConfig.sh
- Selecciona la opción nº 1
- reboot

# Desconfigurar Anonimizares en el arranque del sistema

- bash BootConfig.sh
- Selecciona la opción nº 2- 
  
[Anonimizer.webm](https://github.com/ThePowerOffHacking/Ubuntu-Local-Anonimizer/assets/142690061/6d28ec78-5f04-412b-baea-235fd4f5f7c9)

# [DISCLAIMER]

Este script NO es la formula mágica de el anonimato,existen medidas adicionales que deberas implementar en tu sistema para mejorar la privacidad y el anonimato pero desde luego, tu rastro estará más cubierto cuando lo utilices.

# [PROCESOS DE ANONIMIZER]

Anonimizer puede configurarse para que se ejecute cada vez que enciende el ordenador (Recomendable)

- APAGA LA TARJETA DE RED WIFI Y CABLEADA
- SPOOFEA LAS DIRECCIONES MAC DE LAS TARJETAS DE RED
- SPOOFEA EL HOSTNAME TEMPORAL Y PERMANENTE
- ACTIVA EL FIREWALL
- ENCIENDE LAS TARJETAS DE RED
- SPOOFEA LA ZONA HORARIA LOCAL
- DESACTIVA LA CÁMARA
- MUTEA EL MICROFONO
- DESACTIVA EL BLUETOOTH
- ELIMINA EL HISTORIAL DE COMANDOS DE BASH
- ELIMINA LOS ARCHIVOS TEMPORALES DE LA CARPETA /TMP/
- ELIMINA LOS LOGS DE LA CARPETA /VAR/LOG/
- VACÍA LA PAPELERA
- UNA VEZ HECHO TODO SE CONECTA AL WIFI
- UNA VEZ COMPLETADO EL PROCESO DE ANONIMIZACIÓN EL SCRIPT SE AUTODESTRUIRÁ

# [ESTE SCRIPT NO HACE]

- Este script No se conecta a TOR ni a una VPN/Proxi  
(Tu eres el único que puede decidir como cifrar tu conexión)

- Este script No configura servidores DNS privados    
(Puedes configurarlos manualmente en la config de tu red Wifi es fácil y permanente,
no tendría sentido re-configurarlos cada vez que se ejecute la herramienta)
                                                    
# [REQUISITOS]

sudo apt install -y net-tools trash-cli macchanger sox figlet ufw alsa-utils kmod network-manager

![Anonimizer](https://github.com/ThePowerOffHacking/Ubuntu-Local-Anonimizer/assets/142690061/ee58d852-c81d-42fc-ad1a-d40bb8bb636e)

