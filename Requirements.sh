echo
echo "[*] Instalando requisitos"
echo
sudo apt install -y net-tools trash-cli macchanger sox figlet ufw alsa-utils kmod network-manager
Error=$?
if [[ $Error == "0" ]];; then
	sleep 0.1
else
	echo "Ocurrieron errores"
	exit 1
fi				

