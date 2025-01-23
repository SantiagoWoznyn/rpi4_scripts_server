Resumen :
paso 1 saltear
antes que nada hacer un sudo apt update y sudo apt upgrade

--------------------------------------------------------------------------------
paso 1 si sos principiante si no pasas al modo normal :
    https://github.com/SantiagoWoznyn/rpi4_scripts_server/blob/main/web_gui_manager_server/readme.md
    
    desde aca vamos a instalar un webgui manager
    como casa os, como webmin, como cockpit

IMPORTANTE:ESTE PASO LO PODEMOS SALTEAR, ES DECIR EL PRIMER PASO, YA QUE CON SOLO OPENMEDIAVAULT
YA TENEMOS TODO LO NECESARIO, MAS LOS PLUGINS ETC, DIGAMOS SI EN UN FUTURO LOS WEBFUI MANAGER
NO LOS USAS, LO VAMOS A TENER QUE DESINTALAR, WEBMIN PUEDE SERVIR PARA ALGO
DIGAMOS QUE ESTE PASO ES PARA PRINCIPANTES

------------------------------------------------------------------------------------------

segundo :
    https://github.com/SantiagoWoznyn/rpi4_scripts_server/blob/main/script%20rpi4/rpi4_install.sh    
    instala el rpi4_install , un script que hace un update completo,
        instala zerotier, docker, y docker compose

            {verificar si docker compose esta instalado PORQUE YA VEO QUE EL SCRIPT SOLO TE INSTALA todo
            menos docker compose, verificar zerotier y docker tambien}

                sudo docker-compose --version

            sino esta instalado :::

            instalar docker compose :::

                VERSION=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r .tag_name)
                sudo curl -L "https://github.com/docker/compose/releases/download/$VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

                sudo chmod +x /usr/local/bin/docker-compose

                sudo docker-compose --version

    PODES EJECUTAR YA INSTALAR DOCKERAPSS A TRAVES DE LOS SCRIPTS

tecero :
    instala omv 

    https://github.com/SantiagoWoznyn/rpi4_scripts_server/blob/main/OMV7_RPI4b.txt
    
