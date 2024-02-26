#!/bin/bash
FECHA=$(date +"%Y-%m-%d")
cor1='\033[1;31m'
cor2='\033[0;34m'
cor3='\033[1;35m'
clear
scor='\033[0m'
echo -e "\E[44;1;37m       ELEGIR   UNA   OPCION      \E[0m"
echo -e "[\033[1;36m 1:\033[1;31m] \033[1;37m• \033[1;32mINSTSLAR UDP CUSTOM (HTTP CUSTOM) \033[1;31m"
echo -e "[\033[1;36m 2:\033[1;31m] \033[1;37m• \033[1;33mINSTALAR RESQUEST (SOCKSIP TUNNEL) \033[1;31m    "
echo -e "[\033[1;36m 3:\033[1;31m] \033[1;37m• \033[1;33mVER PUERTOS ACTIVOS \033[1;31m      \E[0m"
echo  -e "[\033[1;36m 4:\033[1;31m] \033[1;37m• \033[1;33mVER CODIGO TARJET \033[1;31m  "
echo  -e  "[\033[1;36m 5:\033[1;31m] \033[1;37m• \033[1;33mINSTALAR PSIPHON 80 \033[1;31m  "
echo  -e  "[\033[1;36m 6:\033[1;31m] \033[1;37m• \033[1;33mPROBAR VELOCIDAD \033[1;31m  "
echo  -e "[\033[1;36m 7:\033[1;31m] \033[1;37m• \033[1;33mLimpiar Ram \033[1;31m"
echo  -e "[\033[1;36m 8:\033[1;31m] \033[1;37m• \033[1;33mBorrar Psiphon \033[1;31m "
echo  -e "[\033[1;36m 9:\033[1;31m] \033[1;37m• \033[1;33mVer Conectados \033[1;31m "

#leemos del teclado sentado
read n

case $n in
        1) clear
        wget https://raw.githubusercontent.com/http-custom/udpcustom/main/folder/udp-custom.sh -O install-udp
            echo -ne "\n\033[1;31mListo \033[1;33mPsiphon Iniciado o  \033[1;32mReiniciado!\033[0m"; read
           ;;
        2) clear
        wget https://raw.githubusercontent.com/rudi9999/SocksIP-udpServer/main/UDPserver.sh; chmod +x UDPserver.sh; ./UDPserver.sh ''
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