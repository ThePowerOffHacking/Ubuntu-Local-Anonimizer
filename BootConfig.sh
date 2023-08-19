#!/bin/bash

Menu() {
    clear
    echo
    echo "[+] Elige una opción:"
    echo
    echo "[1] Configurar Anonimizer en el arranque"
    echo "[2] Desconfigurar Anonimizer del arranque"
    echo

    read -p " " culodegorila
    if [[ $culodegorila == "1" ]]; then
        Config
    elif [[ $culodegorila == "2" ]]; then
        Desconfig
    else
        Menu
    fi
}

Config() {
clear
echo
echo "[*] Configurando Anonimizer en el Arranque"
sleep 1

 # Comprueba si ya está instalado
ls /usr/bin/.Anonimizzer > /dev/null
   if [[ $? == "0" ]]; then
  	echo "[+] Parece que Anonimizer ya está configurado en caso de error. Prueba a desconfigurarlo y vuélvelo a intentar."
  	exit
    fi
sudo mkdir -p /usr/bin/.Anonimizzer # Crea una carpeta donde se guardarán los archivos
sudo cp * /usr/bin/.Anonimizzer    # Envía todos los archivos de Anonimizer a la carpeta
sudo cp Redirect.sh ~/.config/autostart/         # Envía el script a la carpeta autostart
sudo cp Anonimizer.desktop ~/.config/autostart/    # Envía el .desktop a la carpeta autostart

echo
echo "[!] Proceso finalizado (Necesita reinicio)."
exit
}

Desconfig() {
    clear
    echo
    echo "[!] Desconfigurando Anonimizer en el arranque ...."
    echo
    sudo rm -r /usr/bin/.Anonimizzer
    sudo rm ~/.config/autostart/Redirect.sh ~/.config/autostart/Anonimizer.desktop
    echo
    echo
    echo "[!] Proceso finalizado"
    exit
}

Menu

