#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       ELEGIR   UNA   OPCION      \E[0m"
echo -e "[\033[1;36m 1:\033[1;31m] \033[1;37m• \033[1;32mINSTALAR UDP CUSTOM \033[1;31m"
echo -e "[\033[1;36m 2:\033[1;31m] \033[1;37m• \033[1;33mDESINSTALAR UDP CUSTOM \033[1;31m    "
echo -e "[\033[1;36m 3:\033[1;31m] \033[1;37m• \033[1;33mVER PUERTOS ACTIVOS \033[1;31m      \E[0m"

#leemos del teclado sentado
read n

case $n in
        1) clear
        wget https://raw.githubusercontent.com/http-custom/udpcustom/main/folder/udp-custom.sh -O install-udp && chmod +x install-udp && ./install-udp ''
            echo -ne "\n\033[1;31mLISTO \033[1;33mUDP CUSTOM  \033[1;32m¡INSTALADO!\033[0m"; read
           ;;
        2) clear
  systemctl stop udp-custom &>/dev/null
  systemctl disable udp-custom &>/dev/null
  # systemctl stop udp-request &>/dev/null
  # systemctl disable udp-request &>/dev/null
  # systemctl stop autostart &>/dev/null
  # systemctl disable autostart &>/dev/null
  rm -rf /etc/systemd/system/udp-custom.service
  # rm -rf /etc/systemd/system/udp-request.service
  # rm -rf /etc/systemd/system/autostart.service
  rm -rf /usr/bin/udp-custom
  rm -rf /root/udp/udp-custom
  # rm -rf /root/udp/udp-request
  # rm -rf /usr/bin/udp-request
  rm -rf /root/udp/config.json
  rm -rf /etc/UDPCustom/udp-custom
  # rm -rf /usr/bin/udp-request
  # rm -rf /etc/UDPCustom/autostart.service
  # rm -rf /etc/UDPCustom/autostart
  # rm -rf /etc/autostart.service
  # rm -rf /etc/autostart
  rm -rf /usr/bin/udpgw
  rm -rf /etc/systemd/system/udpgw.service
  systemctl stop udpgw &>/dev/null
  rm -rf /usr/bin/udp
           echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read 
            ;;
        3) clear
            netstat -tnpl
             sleep 6
           ;; 
        4) clear
        cd /root/psi&&cat /root/psi/server-entry.dat;echo ''
       echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
           ;;
        5) cd /root && mkdir psi && cd /root/psi && wget https://raw.githubusercontent.com/Psiphon-Labs/psiphon-tunnel-core-binaries/master/psiphond/psiphond && chmod 777 psiphond && ./psiphond --ipaddress 0.0.0.0 --protocol FRONTED-MEEK-OSSH:80 generate && screen -dmS PSI ./psiphond run && cat /root/psi/server-entry.dat;echo ''
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
         ;;
        6) speedtest
             sleep 6
             ;;
        7)     sync & sysctl -w vm.drop_caches=3 
           menu2   ;;
         8)  rm -rf /root/psi
             menu2;;
          9)  ./verconectados.sh
        echo -ne "\n\033[1;31mEnter \033[1;33m Para volver al  \033[1;32mMenu2!\033[0m"; read
             ;;
        *) echo "OPCION INCORREPTA ";;
esac