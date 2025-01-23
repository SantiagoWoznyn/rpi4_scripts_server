una vez desplegado el docker y funcionando:

si queremos accionar desde la terminal en modo root debemos hacer esto con el docker

ingregamos asi:

  docker exec -it --user root <nombre_del_contenedor> bash

ejemplos:

  docker exec -it --user root ubuntu_kasmspace-ubuntu-desktop-1 bash
  docker exec -it --user root kali_desktop bash

-----------------------------------------------------------------------------------------------
 y ejecutamos :

    echo "kasm-user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
