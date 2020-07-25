#!bin/bash
#  CREADOR  : WILIAN LEGION ANONIMOUS

green="\e[0;32m\033[1m"
white="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquoise="\e[0;36m\033[1m"
gray="\e[1;90m"

clear
function banner {
	sleep 0.
	echo -e "$green
$green    ___  ______ ${white}   ___  ____  $green ____    ____  _  $green   
$green   /  _]|      T${white}  /  _]|    \ $green|    \  /    T| T    
$green  /  [_ |      |${white} /  [_ |  D  )$green|  _  YY  o  || |    
$green Y    _]l_j  l_j${white}Y    _]|    / $green|  |  ||     || l___ 
$green |   [_   |  |  ${white}|   [_ |    \ $green|  |  ||  _  ||     T
$green |     T  |  |  ${white}|     T|  .  Y$green|  |  ||  |  ||     |
$green l_____j  l__j  ${white}l_____jl__j\_j${green}l__j__jl__j__jl_____j
                                                   
$green    ____  ${white} _      __ __ ${green}   ___     
$green   |    \ ${white}| T    |  T  T${green}  /  _]$blue  |====================|
$green   |  o  )${white}| |    |  |  |${green} /  [_ $blue  | $red    HACKTHEBOX   $blue  |
$green   |     T${white}| l___ |  |  |${green}|    _]$blue  | $red       CODE       $blue |
$green   |  O  |${white}|     T|  :  |${green}|   [_ $blue  | $red    PENTESTING    $blue |
$green   |     |${white}|     |l     |${green}|     T$blue  | $red   PROFESSIONAL  $blue  |
$green   l_____j${white}l_____ll_____l${green}|_____l$blue  |====================|\n"

sleep 0.1                                                  
echo -ne "$red                W"
   sleep 0.1                                                
   echo -ne "I"                                             
   sleep 0.1                                                 
   echo -ne "L"                                              
   sleep 0.1                                                 
   echo -ne "I"                                              
   sleep 0.1                                                 
   echo -ne "A"                                             
   sleep 0.1                                                  
   echo -ne "N"                                              
   sleep 0.1                                                  
   echo -ne "$white L"                                     
   sleep 0.1
   echo -ne "E"                                              
   sleep 0.1                                                 
   echo -ne "G"                                              
   sleep 0.1                                                                                                            
   echo -ne "I"                                             
   sleep 0.1                                                 
   echo -ne "O"                                              
   sleep 0.1                                                
   echo -ne "N"                                             
   sleep 0.1                                                 
   echo -ne "$red A"
   sleep 0.1
   echo -ne "N"
   sleep 0.1                                                  
   echo -ne "O"
   sleep 0.1
   echo -ne "N"

   sleep 0.1
   echo -ne "I"
   sleep 0.1
   echo -ne "M"
   sleep 0.1
   echo -ne "O"
   sleep 0.1
   echo -ne "U"
   sleep 0.1
   echo -ne "S"
   sleep 0.1                                               
   echo -e "$white"



}


function dependencias {

	echo -e "\n"
	echo -e "${yellow}INSTALANDO PAQUETES NECESARIOS${white}\n"
	sleep 1
		echo -e "$yellow [*] ${gray}Instalando nodejs..."
		apt install nodejs > /dev/null 2>&1
		sleep 1
		echo -e "$yellow [*] ${gray}Instalando wget..."
		sleep 1
		apt install wget > /dev/null 2>&1
		echo -e "$yellow [*] ${gray}Instalando curl..."
		apt install curl > /dev/null 2>&1

		echo -e "$gray\n
      SI EL SCRIPT NO LE GENERA EL CODIGO DE INVITACION
   VISITE MI CANAL DE YOUTUBE EN EL CUAL ESTARE EXPLICANDO 
             EL USO CORRECTO DE ETERNAL_BLUE"
	     echo -e "
	              TUTORIAL DE USO 
	                  _| |_
                          \   /
                           \ /
 https://m.youtube.com/channel/UCjX_cfE4nfcQHCJmLuUPSXg\n"
		         
	printf "$yellow
PRESIONA ENTER PARA EMPEZAR..."
	read
	echo ""
	sleep 0.5
	echo -e "$gray OBTENIENDO CODIGO DE INVITACION DE HACKTHEBOX...$green\n"
	sleep 0.5


}

function ataque {
	sleep 1
		mv .cripto-code.js www.hackthebox.eu > /dev/null 2>&1
		cd www.hackthebox.eu > /dev/null 2>&1
		mv .cripto-code.js js > /dev/null 2>&1
		node .cripto-code.js inviteapi.min.js >> $HOME/box/www.hackthebox.eu/js/api.js > /dev/null 2>&1
		cd js 
		ls
		curl -XPOST https://www.hackthebox.eu/api/invite > /dev/null 2>&1
		sleep 0.5
		clear
		echo -e "$gray

 SI EL CODIGO ESTA EN FORMATO "ROOT13" CIERRE EL SCRIPT Y       
  VUELVA A EJECUTARLO HASTA QUE ESTE EN FORMATO "BASE64""
		echo -e "$green"
		echo -e "$yellow                                
  COPIA Y PEGA EL SIGUIENTE CODIGO QUE ESTA ENTRE
         COMILLAS AL LADO DE “data“:{"data":
               PARA DESENCRIPTARLO\n$green"
		curl -XPOST https://www.hackthebox.eu/api/invite/how/to/generate 
		echo ""
		read -p $' \n\e[1;33m (codigo) >> \e[0m' codigo
		echo -e "$yellow"
		echo -e $(echo  $codigo | base64 -d > /dev/null 2>&1)
		sleep 0.5
		echo -e "$green"
		clear
		echo -ne "$yellow
   COPIA Y PEGA EL SIGUIENTE CODIGO QUE ESTA ENTRE
        COMILLAS AL LADO DE “{data};(code):”
                 PARA DECODIFICARLO$green\n"
 echo -e "$green"

		curl -XPOST https://www.hackthebox.eu/api/invite/generate

		echo -e "$yellow\n"
		read -p $'\e[1;33m (codigo) >> \e[0m' codigo2
		sleep 1
		 echo -e "$yellow
	            FELICIDADES!

   ESTE ES SU CODIGO DE INVITACION DE HACKTHEBOX\n"
	      echo -ne "$green"
	      echo -e "     \t$(echo $codigo2 | base64 -d )"
	      echo -e "\n$white"


}
banner
dependencias
ataque
