#!/usr/bin/bash


SYSTEM=$(uname -o)
if [ "${SYSTEM}" == "GNU/Linux" ]; then
        bin="/bin"
        apt="sudo apt-get"
else
echo "[+] Termux..."
sleep 2
if [ "${SYSTEM}" == "Android" ]; then
        bin="/data/data/com.termux/files/usr/bin"
        apt="pkg"
else
        bin="/bin"
        apt="apt-get"
fi
fi






clear
echo -e '\e[1;32m
        
░█████╗░░░░░░██╗██╗░░░██╗░██████╗████████╗░█████╗░███╗░░██╗██████╗░░█████╗░
██╔══██╗░░░░░██║██║░░░██║██╔════╝╚══██╔══╝██╔══██╗████╗░██║██╔══██╗██╔══██╗
███████║░░░░░██║██║░░░██║╚█████╗░░░░██║░░░███████║██╔██╗██║██║░░██║██║░░██║
██╔══██║██╗░░██║██║░░░██║░╚═══██╗░░░██║░░░██╔══██║██║╚████║██║░░██║██║░░██║
██║░░██║╚█████╔╝╚██████╔╝██████╔╝░░░██║░░░██║░░██║██║░╚███║██████╔╝╚█████╔╝
╚═╝░░╚═╝░╚════╝░░╚═════╝░╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░

██████╗░░█████╗░███╗░░██╗████████╗░█████╗░██╗░░░░░██╗░░░░░░█████╗░
██╔══██╗██╔══██╗████╗░██║╚══██╔══╝██╔══██╗██║░░░░░██║░░░░░██╔══██╗
██████╔╝███████║██╔██╗██║░░░██║░░░███████║██║░░░░░██║░░░░░███████║
██╔═══╝░██╔══██║██║╚████║░░░██║░░░██╔══██║██║░░░░░██║░░░░░██╔══██║
██║░░░░░██║░░██║██║░╚███║░░░██║░░░██║░░██║███████╗███████╗██║░░██║
╚═╝░░░░░╚═╝░░╚═╝╚═╝░░╚══╝░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚══════╝╚═╝░░╚═╝                                         
      

                                                       
                                                       
\e[0m\e[1;33m
 
██╗░░██╗██╗░░░██╗███╗░░██╗████████╗███████╗██████╗░  ██████╗░███████╗██╗░░██╗████████╗███████╗██████╗░
██║░░██║██║░░░██║████╗░██║╚══██╔══╝██╔════╝██╔══██╗  ██╔══██╗██╔════╝╚██╗██╔╝╚══██╔══╝██╔════╝██╔══██╗
███████║██║░░░██║██╔██╗██║░░░██║░░░█████╗░░██████╔╝  ██║░░██║█████╗░░░╚███╔╝░░░░██║░░░█████╗░░██████╔╝
██╔══██║██║░░░██║██║╚████║░░░██║░░░██╔══╝░░██╔══██╗  ██║░░██║██╔══╝░░░██╔██╗░░░░██║░░░██╔══╝░░██╔══██╗
██║░░██║╚██████╔╝██║░╚███║░░░██║░░░███████╗██║░░██║  ██████╔╝███████╗██╔╝╚██╗░░░██║░░░███████╗██║░░██║
╚═╝░░╚═╝░╚═════╝░╚═╝░░╚══╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝  ╚═════╝░╚══════╝╚═╝░░╚═╝░░░╚═╝░░░╚══════╝╚═╝░░╚═╝                                



                                              
\e[4;32;41mAJUSTA LA PANTALLA PARA QUE LAS LETRAS DE ARRIBA SE PUEDAN VER. PELLIZCA PARA MIMINIZAR:v\e[0m'
sleep 5.0
echo -e  '\e[1;36mBuscame en \e[4;34mG\e[0m\e[4;31mo\e[0m\e[4;33mo\e[0m\e[4;34mg\e[0m\e[4;32ml\e[0m\e[4;31me\e[0m\e[1;36m y en \e[1;30;47mY\e[0m\e[1;30;47mo\e[0m\e[1;30;47mu\e[0m\e[1;37;41mT\e[0m\e[0m\e[1;37;41mu\e[0m\e[0m\e[1;37;41mb\e[0m\e[0m\e[1;37;41me\e[0m
\e[1;36mComo: \e[4;32;41mCryptoLocker002\033[0m'
sleep 5.0
echo -e '\033[0m\033[1;32m

░█████╗░░█████╗░████████╗██╗░░░██╗░█████╗░██╗░░░░░██╗███████╗░█████╗░███╗░░██╗██████╗░░█████╗░
██╔══██╗██╔══██╗╚══██╔══╝██║░░░██║██╔══██╗██║░░░░░██║╚════██║██╔══██╗████╗░██║██╔══██╗██╔══██╗
███████║██║░░╚═╝░░░██║░░░██║░░░██║███████║██║░░░░░██║░░███╔═╝███████║██╔██╗██║██║░░██║██║░░██║
██╔══██║██║░░██╗░░░██║░░░██║░░░██║██╔══██║██║░░░░░██║██╔══╝░░██╔══██║██║╚████║██║░░██║██║░░██║
██║░░██║╚█████╔╝░░░██║░░░╚██████╔╝██║░░██║███████╗██║███████╗██║░░██║██║░╚███║██████╔╝╚█████╔╝
╚═╝░░╚═╝░╚════╝░░░░╚═╝░░░░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░

██████╗░░█████╗░░██████╗░██╗░░░██╗███████╗████████╗███████╗░██████╗
██╔══██╗██╔══██╗██╔═══██╗██║░░░██║██╔════╝╚══██╔══╝██╔════╝██╔════╝
██████╔╝███████║██║██╗██║██║░░░██║█████╗░░░░░██║░░░█████╗░░╚█████╗░
██╔═══╝░██╔══██║╚██████╔╝██║░░░██║██╔══╝░░░░░██║░░░██╔══╝░░░╚═══██╗
██║░░░░░██║░░██║░╚═██╔═╝░╚██████╔╝███████╗░░░██║░░░███████╗██████╔╝
╚═╝░░░░░╚═╝░░╚═╝░░░╚═╝░░░░╚═════╝░╚══════╝░░░╚═╝░░░╚══════╝╚═════╝░

                                 
\033[0m'
${apt} update
${apt} upgrade

echo -e '\033[0m\033[1;36m

██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░░█████╗░███╗░░██╗██████╗░░█████╗░  ███╗░░██╗░█████╗░██████╗░███████╗
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██╔══██╗████╗░██║██╔══██╗██╔══██╗  ████╗░██║██╔══██╗██╔══██╗██╔════╝
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░███████║██╔██╗██║██║░░██║██║░░██║  ██╔██╗██║██║░░██║██║░░██║█████╗░░
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██╔══██║██║╚████║██║░░██║██║░░██║  ██║╚████║██║░░██║██║░░██║██╔══╝░░
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██║░╚███║██████╔╝╚█████╔╝  ██║░╚███║╚█████╔╝██████╔╝███████╗
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░  ╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝

██╗██████╗░
╚═╝██╔══██╗
░░░██║░░██║
░░░██║░░██║
██╗██████╔╝
╚═╝╚═════╝░
                                             
                                                                                                                     
\033[0m'
${apt} install nodejs -y
${apt} install ffmpeg libwebp -y
${apt} install wget -y
${apt} install imagemagick -y
${apt} install tesseract-ocr -y
npm i node-tesseract-ocr
npm i @adiwajshing/baileys@3.4.1
echo -e '\033[0m\033[1;31m

██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░░█████╗░███╗░░██╗██████╗░░█████╗░
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██╔══██╗████╗░██║██╔══██╗██╔══██╗
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░███████║██╔██╗██║██║░░██║██║░░██║
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██╔══██║██║╚████║██║░░██║██║░░██║
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██║░╚███║██████╔╝╚█████╔╝
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░

███████╗███████╗███╗░░░███╗██████╗░███████╗░██████╗░
██╔════╝██╔════╝████╗░████║██╔══██╗██╔════╝██╔════╝░
█████╗░░█████╗░░██╔████╔██║██████╔╝█████╗░░██║░░██╗░
██╔══╝░░██╔══╝░░██║╚██╔╝██║██╔═══╝░██╔══╝░░██║░░╚██╗
██║░░░░░██║░░░░░██║░╚═╝░██║██║░░░░░███████╗╚██████╔╝
╚═╝░░░░░╚═╝░░░░░╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝░╚═════╝░

\033[0m'

${apt} install termimage
${apt} install toilet
${apt} install cowsay
echo -e '\033[0m\033[1;35m

░░░░░██╗██╗░░░██╗░░░░░██╗██╗░░░██╗  ██╗░░██╗██████╗░
░░░░░██║██║░░░██║░░░░░██║██║░░░██║  ╚██╗██╔╝██╔══██╗
░░░░░██║██║░░░██║░░░░░██║██║░░░██║  ░╚███╔╝░██║░░██║
██╗░░██║██║░░░██║██╗░░██║██║░░░██║  ░██╔██╗░██║░░██║
╚█████╔╝╚██████╔╝╚█████╔╝╚██████╔╝  ██╔╝╚██╗██████╔╝
░╚════╝░░╚═════╝░░╚════╝░░╚═════╝░  ╚═╝░░╚═╝╚═════╝░
\033[0m'

${apt} install neofetch
neofetch
echo -e '\033[0m\033[1;33m

░██████╗░██████╗░░█████╗░░█████╗░██╗░█████╗░░██████╗  ██████╗░░█████╗░██████╗░
██╔════╝░██╔══██╗██╔══██╗██╔══██╗██║██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██╔══██╗
██║░░██╗░██████╔╝███████║██║░░╚═╝██║███████║╚█████╗░  ██████╔╝██║░░██║██████╔╝
██║░░╚██╗██╔══██╗██╔══██║██║░░██╗██║██╔══██║░╚═══██╗  ██╔═══╝░██║░░██║██╔══██╗
╚██████╔╝██║░░██║██║░░██║╚█████╔╝██║██║░░██║██████╔╝  ██║░░░░░╚█████╔╝██║░░██║
░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝░╚════╝░╚═╝╚═╝░░╚═╝╚═════╝░  ╚═╝░░░░░░╚════╝░╚═╝░░╚═╝

██████╗░██████╗░███████╗███████╗███████╗██████╗░██╗██████╗░
██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝██╔══██╗██║██╔══██╗
██████╔╝██████╔╝█████╗░░█████╗░░█████╗░░██████╔╝██║██████╔╝
██╔═══╝░██╔══██╗██╔══╝░░██╔══╝░░██╔══╝░░██╔══██╗██║██╔══██╗
██║░░░░░██║░░██║███████╗██║░░░░░███████╗██║░░██║██║██║░░██║
╚═╝░░░░░╚═╝░░╚═╝╚══════╝╚═╝░░░░░╚══════╝╚═╝░░╚═╝╚═╝╚═╝░░╚═╝

██████╗░░█████╗░████████╗░█████╗░██╗░░██╗███████╗██╗░░░░░  ██╗██████╗░
██╔══██╗██╔══██╗╚══██╔══╝██╔══██╗██║░░██║██╔════╝██║░░░░░  ╚═╝██╔══██╗
██████╔╝███████║░░░██║░░░██║░░╚═╝███████║█████╗░░██║░░░░░  ░░░██║░░██║
██╔══██╗██╔══██║░░░██║░░░██║░░██╗██╔══██║██╔══╝░░██║░░░░░  ░░░██║░░██║
██║░░██║██║░░██║░░░██║░░░╚█████╔╝██║░░██║███████╗███████╗  ██╗██████╔╝
╚═╝░░╚═╝╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚═╝╚══════╝╚══════╝  ╚═╝╚═════╝░                                      
\033[0m'
 sleep 3.0
echo -e '\033[0m\033[1;31m
VERIFICANDO SI TODO ESTA CORRECTO
\033[0m'

echo -e '\033[0m\033[1;36m

██╗░░░██╗███████╗██████╗░██╗███████╗██╗░█████╗░░█████╗░███╗░░██╗██████╗░░█████╗░  
██║░░░██║██╔════╝██╔══██╗██║██╔════╝██║██╔══██╗██╔══██╗████╗░██║██╔══██╗██╔══██╗  
╚██╗░██╔╝█████╗░░██████╔╝██║█████╗░░██║██║░░╚═╝███████║██╔██╗██║██║░░██║██║░░██║  
░╚████╔╝░██╔══╝░░██╔══██╗██║██╔══╝░░██║██║░░██╗██╔══██║██║╚████║██║░░██║██║░░██║  
░░╚██╔╝░░███████╗██║░░██║██║██║░░░░░██║╚█████╔╝██║░░██║██║░╚███║██████╔╝╚█████╔╝  ██╗██╗██╗
░░░╚═╝░░░╚══════╝╚═╝░░╚═╝╚═╝╚═╝░░░░░╚═╝░╚════╝░╚═╝░░╚═╝╚═╝░░╚══╝╚═════╝░░╚════╝░  ╚═╝╚═╝╚═╝
 \033[0m'
 cd
 cd  Ratchel-linux
npm install package.json
 sleep 3.0

 echo -e '\033[0m\033[1;32m

███████╗███████╗███╗░░░███╗██████╗░███████╗░██████╗░
██╔════╝██╔════╝████╗░████║██╔══██╗██╔════╝██╔════╝░
█████╗░░█████╗░░██╔████╔██║██████╔╝█████╗░░██║░░██╗░
██╔══╝░░██╔══╝░░██║╚██╔╝██║██╔═══╝░██╔══╝░░██║░░╚██╗
██║░░░░░██║░░░░░██║░╚═╝░██║██║░░░░░███████╗╚██████╔╝
╚═╝░░░░░╚═╝░░░░░╚═╝░░░░░╚═╝╚═╝░░░░░╚══════╝░╚═════╝░

██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░░█████╗░██████╗░░█████╗░
██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██╔══██╗██╔══██╗██╔══██╗
██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░███████║██║░░██║██║░░██║
██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██╔══██║██║░░██║██║░░██║
██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██████╔╝╚█████╔╝
╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░░╚════╝░
                                                            
\033[0m'


sleep 3.0
echo -e '\033[0m\033[1;32m

███╗░░██╗░█████╗░██████╗░███████╗  ██╗███╗░░██╗░██████╗████████╗░█████╗░██╗░░░░░░█████╗░██████╗░░█████╗░
████╗░██║██╔══██╗██╔══██╗██╔════╝  ██║████╗░██║██╔════╝╚══██╔══╝██╔══██╗██║░░░░░██╔══██╗██╔══██╗██╔══██╗
██╔██╗██║██║░░██║██║░░██║█████╗░░  ██║██╔██╗██║╚█████╗░░░░██║░░░███████║██║░░░░░███████║██║░░██║██║░░██║
██║╚████║██║░░██║██║░░██║██╔══╝░░  ██║██║╚████║░╚═══██╗░░░██║░░░██╔══██║██║░░░░░██╔══██║██║░░██║██║░░██║
██║░╚███║╚█████╔╝██████╔╝███████╗  ██║██║░╚███║██████╔╝░░░██║░░░██║░░██║███████╗██║░░██║██████╔╝╚█████╔╝
╚═╝░░╚══╝░╚════╝░╚═════╝░╚══════╝  ╚═╝╚═╝░░╚══╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═════╝░░╚════╝░
 \033[0m'
 npm i 
 sleep 3.0
 echo "  [+] Ejecute npm start"

