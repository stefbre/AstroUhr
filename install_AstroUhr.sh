#! /bin/bash

red='\033[1;31m'
green='\033[0;32m'
white='\033[0;37m'
less='\033[0m'

echo "${red}Es wird KEINE Haftung uebernommen!!! \n\n${less}"
echo "${red}Dieses Script installiert eine Astro Uhr! Die PCHK muss installiert und funktionsfaehig sein! Es wird eine freie PCHK-Lizenz benoetigt!\n\n${less}"
echo "${red}Es wird einige Zeit in Anspruch nehmen, zuerst werden die benoetigten Programme installiert.\n\n${less}"

echo "${white}\n\nSchritt 1/7: Es wird nun flask installiert.\n\n${less}"
cd /usr/local
sudo apt-get install python3-flask -y
echo "${green}[##########------------------------------------------------------------]                     (14%)\r"

echo "${white}\n\nSchritt 2/7: Es wird nun der telnet-client installiert.\n\n${less}"
sudo apt-get install telnet -y
echo "${green}[####################--------------------------------------------------]                     (28%)\r"

echo "${white}\n\nSchritt 3/7: Es wird nun pip3 installiert.\n\n${less}"
sudo apt-get install python3-pip -y
echo "${green}[##############################----------------------------------------]                     (42%)\r"

echo "${white}\n\nSchritt 4/7: Es wird nun suntime installiert.\n\n${less}"
sudo pip3 install suntime
echo "${green}[########################################------------------------------]                     (56%)\r"

echo "${white}\n\nSchritt 5/7: Die Daten der Astro Uhr werden nun heruntergeladen und entpackt.\n\n${less}"
cd /home/pi/
wget https://github.com/stefbre/AstroUhr/raw/master/AstroUhr.tar.gz
tar xfz AstroUhr.tar.gz
sudo rm AstroUhr.tar.gz
echo "${green}[##################################################--------------------]                     (70%)\r"

echo "${white}\n\nSchritt 6/7: Nun wird der Autostart eingerichtet.\n\n${less}"
cd /home/pi/AstroUhr
sudo mv AstroUhr.service /etc/systemd/system
sudo systemctl start AstroUhr.service
sudo systemctl enable AstroUhr.service
echo "${green}[############################################################----------]                     (84%)\r"

echo "${white}\n\nSchritt 7/7: Geschafft!\n\n${less}"
echo "${green}[######################################################################]                     (100%)\r"

echo "${red}Die AstroUhr laesst sich per Geraetename oder IP aufrufen. Das Passwort lautet: 1337 \n\n${less}"
echo "${red}Tragen Sie bitte in der Weboberflaeche Ihre Koordinaten, Wohnort sowie die PCHK Zugangsdaten ein! \n\n${less}"