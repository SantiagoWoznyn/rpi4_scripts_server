instalar casa os
curl -fsSL https://get.casaos.io | sudo bash
--------------------------------------------------------------------------------------
instalar el script que esta en :
    https://github.com/SantiagoWoznyn/rpi4_scripts_server/blob/main/script%20rpi4/raspbios_debian_sc.sh

--------------------------------------------------------------------------
verificar si docker compose esta instalado
    sudo docker-compose --version

sino esta instalado :::

  instalar docker compose :::

VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)
sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo docker-compose --version

-------------------------------------------------------------------
instalar omv para rpi4

https://wiki.omv-extras.org/doku.php?id=omv7:raspberry_pi_install 

RESUMEN: 
https://github.com/SantiagoWoznyn/scripts/blob/main/script%20rpi4/OMV7_RPI4b.txt

cambiar el puerto DESPUES DE INSTALARLO

login via SSH
run 
sudo omv-firstaid

Option-2 "configure web control panel"
  select port
 do not select por 80
 elegir 5080 por ejemplo

-------------------------------------------------------------------
empezar a instalar las dockerapps en :
        https://github.com/SantiagoWoznyn/rpi4_scripts_server/tree/main/script%20rpi4/dockersc
