#!/bin/bash

# Colors
white="\033[1;37m"
grey="\033[0;37m"
purple="\033[0;35m"
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
purple="\033[0;35m"
cyan="\033[0;36m"
cafe="\033[0;33m"
fiuscha="\033[0;35m"
blue="\033[1;34m"
tp="\e[0m"


if [[ $USER = "root" ]] ; then
    echo "ok" &> /dev/null
else
    echo -e "$green sudo bash $red AlvatadorGamePlatform.sh${tp} $blueİle Deneyin!"
    exit 1
fi


# spinner
spinlong ()
{
    bar=" +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
    barlength=${#bar}
    i=0
    while ((i < 100)); do
        n=$((i*barlength / 100))
        printf "\e[00;32m\r[%-${barlength}s]\e[00m" "${bar:0:n}"
        ((i += RANDOM%5+2))
        sleep 0.02
    done
    echo -e "[${green}OK${tp}]"
}



cat banner/banner1 |lolcat
echo ""
echo -e "$red---------------Game Platform------------------" 
echo -e "$yellow"
echo -e "[1] Atm Oyunu                    [2] Hesap Makinesi" 
echo -e "[3] Sayı Tahmin                  [4] Taş Kağıt Makas" 
echo -e "[5] TicTacToe"
echo ""
echo -e "$red---------------Game Platform------------------"
echo -e "$blue"
echo -n "istediğiniz Oyunun Yanında Yazan Sayıyı Yazınız!  :"
    read n

if [[ $n = "1" ]] ; then
     echo -e "Atm Oyunu Başlatılıyor"
     spinlong
     cd game/
     python3 atmoyunu.py
     cd ..
     sleep 5
     bash AlvatadorGamePlatform.sh
     fi

if [[ $n = "2" ]] ; then
     echo -e "Hesap Makinesi Başlatılıyor"
     spinlong
     cd game/
     bash hesapmakinesi.sh
     cd ..
     sleep 5
     bash AlvatadorGamePlatform.sh
     fi

if [[ $n = "3" ]] ; then
     echo -e "Sayı Tahmin Başlatılıyor"
     spinlong
     cd game/
     python3 sayitahmin.py
     cd ..
     sleep 5
     bash AlvatadorGamePlatform.sh
     fi     

if [[ $n = "4" ]] ; then
     echo -e "Taş Kağıt Makas Başlatılıyor"
     spinlong
     cd game/
     python3 taskagitmakas.py
     cd ..
     sleep 5
     bash AlvatadorGamePlatform.sh
     fi 

if [[ $n = "5" ]] ; then
     echo -e "Taş Kağıt Makas Başlatılıyor"
     spinlong
     cd game/
     python3 tictactoe.py
     cd ..
     sleep 5
     bash AlvatadorGamePlatform.sh
     fi      






