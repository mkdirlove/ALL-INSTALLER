#! /bin/bash

###############################################################################################
#                                   ALL IN ONE TOOL INSTALLER                                 #
#                                                                                             #
# AUTHOR   : JAYSON CABRILLAS SAN BUENAVENTURA                                                #
# GITHUB   : https://github.com/mkdirlove                                                     #
# FACEBOOK : https://web.facebook.com/mkdirlove.git                                           #
#                                                                                             #
###############################################################################################
#
#
#
#
#
###############################################################################################
#                                   TOOLS INTALLER SECTION                                    #
###############################################################################################

clear
function install_FBTOOL () {
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/FBTOOL
}

function install_HOST-FINDER () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/HOST-FINDER
} 

function install_AIR-KIT () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/AIR-KIT 
}

function install_DEVICE-INFO () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/DEVICE-INFO
}

function install_SSLSTRIP-NG () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/SSLSTRIP-NG
}

function install_WIFI-EUTER () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/WIFI-EUTER
}

function install_WI-TOOLKIT () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/WI-TOOLKIT
}

function install_BLUE-PINGER () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/BLUE-PINGER
}

function install_SPAM-EMAIL () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/SPAM-EMAIL
}

function install_WEATHER () {	
	cd TOOLS
	xterm -hold -e git clone https://github.com/mkdirlove/WEATHER
}

###############################################################################################
#                               ABOUT TOOLS / TOOLS INFORMATION                               #
###############################################################################################

function about_FBTOOL () {
	whiptail --title "ABOUT FBTOOL" --msgbox "Facebook hacking toolkit written in Python." 8 45
}

function about_HOST-FINDER () {
	whiptail --title "ABOUT HOST-FINDER" --msgbox "Host / IP scanner using NMAP." 8 45
}

function about_AIR-KIT () {
	whiptail --title "ABOUT AIR-KIT" --msgbox "Simple network attack automation." 8 45
}

function about_DEVICE-INFO () {
	whiptail --title "ABOUT DEVICE-INFO" --msgbox "Device information fetcher over Local Area network." 8 45
}

function about_SSLSTRIP-NG () {
	whiptail --title "ABOUT SSLSTRIP-NG" --msgbox "A simpe automated man in the middle attack tool." 8 45
}

function about_WIFI-EUTER () {
	whiptail --title "ABOUT WIFI-EUTER" --msgbox "A tool that can deauth clients on your network." 8 45
}

function about_WI-TOOLKIT () {
	whiptail --title "ABOUT WI-TOOLKIT" --msgbox "A Termux tool for WIFI hacking." 8 45
}

function about_BLUE-PINGER () {
	whiptail --title "ABOUT BLUE-PINGER" --msgbox "Bluetooth ping of death." 8 45
}

function about_SPAM-EMAIL () {
	whiptail --title "ABOUT SPAM-EMAIL" --msgbox "Email spammer written in Python that supports GMAIL, YAHOO, OUTLOOK, & HOTMAIL." 8 45
}

function about_WEATHER () {
	whiptail --title "ABOUT WEATHER" --msgbox "A simple bash script that prints weather repots in a given city" 8 45
}



###############################################################################################
#                                       FOLLOW ME ON                                          #
###############################################################################################

function follow_ME () {
	FOLLOW=$(whiptail --title "FOLLOW ME ON" --checklist \
    "Please follow me on my social media account!!!" 15 60 4 \
    "FACEBOOK" "https://web.facebook.com/mkdirlove.git" ON \
    "GITHUB" "https://github.com/mkdirlove" ON 3>&1 1>&2 2>&3)

exitstatus=0

if [ $exitstatus = 0 ]; then
	xdg-open https://web.facebook.com/mkdirlove.git && xdg-open https://github.com/mkdirlove
else
	main
fi
}


###############################################################################################
#                                       ABOUT ALL TOOLS                                       #
###############################################################################################

function ABOUT_ALL () {
	while [ 2 ]
    do
	ABOUT=$(whiptail --title "ABOUT THE TOOLS / INFORMATIONS"  --menu "" 25 50 18 \
        "01)" "ABOUT FBTOOL"   \
	    "02)" "ABOUT HOST-FINDER"  \
	    "03)" "ABOUT AIR-KIT" \
	    "04)" "ABOUT DEVICE-INFO" \
	    "05)" "ABOUT SSLSTRIP-NG" \
	    "06)" "ABOUT WIFI-EUTER" \
	    "07)" "ABOUT WI-TOOLKIT" \
	    "08)" "ABOUT BLUE-PINGER" \
	    "09)" "ABOUT SPAM-EMAIL" \
	    "10)" "ABOUT WEATHER" \
        "00)" "BACK TO MAIN MENU" 3>&1 1>&2 2>&3
		)

		case $ABOUT in
        "01)")
            about_FBTOOL
        ;;
        "02)")
            about_HOST-FINDER
        ;;
        "03)")
            about_AIR-KIT
        ;;
		"04)")
           about_DEVICE-INFO
        ;;
        "05)")
            about_SSLSTRIP-NG
        ;;
        "06)")
            about_WIFI-EUTER
        ;;
		"07)")
            about_WI-TOOLKIT
        ;;
        "08)")
            about_BLUE-PINGER
        ;;
        "09)")
            about_SPAM-EMAIL
        ;;
		"10)")
            about_WEATHER
        ;;
		"00)")
            whiptail --title "BACK TO MAIN MENU" --msgbox "Do you want to proceed?" 8 45
			main
        ;;
    esac
	done
}

###############################################################################################
#                                       SHOW INSTALLED TOOLS                                  #
###############################################################################################

function show_TOOLS () {
	tools=$(cd TOOLS && ls)
	whiptail --title "SHOW INSTALLED TOOLS" --msgbox "$tools" 15 50
}

###############################################################################################
#                                       RUN INSTALLED TOOLS                                   #
###############################################################################################

function run_TOOLS () {
	while [ 2 ]
    do
	RUN=$(whiptail --title "RUN INSTALLED TOOLS"  --menu "" 25 50 18 \
        "01)" "RUN FBTOOL"   \
	    "02)" "RUN HOST-FINDER"  \
	    "03)" "RUN AIR-KIT" \
	    "04)" "RUN DEVICE-INFO" \
	    "05)" "RUN SSLSTRIP-NG" \
	    "06)" "RUN WIFI-EUTER" \
	    "07)" "RUN WI-TOOLKIT" \
	    "08)" "RUN BLUE-PINGER" \
	    "09)" "RUN SPAM-EMAIL" \
	    "10)" "RUN WEATHER" \
        "00)" "BACK TO MAIN MENU" 3>&1 1>&2 2>&3
		)

		case $RUN in
        "01)")
            python2 /ALL-INSTALLER/TOOLS/FBTOOL/fbtool-v1.py
        ;;
        "02)")
           bash /ALL-INSTALLER/TOOLS/HOST-FINDER/host-finder.sh
        ;;
        "03)")
            sudo bash /ALL-INSTALLER/TOOLS/AIR-KIT/orig.sh
        ;;
		"04)")
		   bash /ALL-INSTALLER/TOOLS/DEVICE-INFO/install.sh
           bash /ALL-INSTALLER/TOOLS/DEVICE-INFO/device-info.sh
        ;;
        "05)")
            sudo bash /ALL-INSTALLER/TOOLS/SSLSTRIP-NG/encrypted-sslstrip-ng.sh
        ;;
        "06)")
            sudo bash /ALL-INSTALLER/TOOLS/WIFI-EUTER/intaller.sh
			sudo bash /ALL-INSTALLER/TOOLS/WIFI-EUTER/wifi-euter.sh
        ;;
		"07)")
            sudo bash /ALL-INSTALLER/TOOLS/WI-TOOLKIT/install.sh
			sudo python2 /ALL-INSTALLER/TOOLS/WI-TOOLKIT/wi-toolkit.py
        ;;
        "08)")
            sudo bash /ALL-INSTALLER/TOOLS/BLUE-PINGER/blue-pinger.sh
        ;;
        "09)")
            python2 /ALL-INSTALLER/TOOLS/SPAM-EMAIL/spam-email.py
        ;;
		"10)")
            bash /ALL-INSTALLER/TOOLS/WEATHER/weather.sh
        ;;
		"00)")
            whiptail --title "BACK TO MAIN MENU" --msgbox "Do you want to proceed?" 8 45
			main
        ;;
    esac
	done
}


###############################################################################################
#                                     LOAD THE INSTALLER MENU                                 #
###############################################################################################

function load_TOOL () {
	{
	for ((i=0; i<=100; i+=20)); do
		sleep 1
		echo $i
	done
} | whiptail --gauge "LOADING THE ALL IN ONE TOOL INSTALLER, PLEASE WAIT..." 6 60 0
}


###############################################################################################
#                                           MAIN MENU                                         #
###############################################################################################

function main () {
while [ 1 ]
do
CHOICE=$(
whiptail --title "ALL IN ONE TOOL INSTALLER" --menu "" 25 50 18 \
	"01)" " INSTALL FBTOOL"   \
	"02)" " INSTALL HOST-FINDER"  \
	"03)" " INSTALL AIR-KIT" \
	"04)" " INSTALL DEVICE-INFO" \
	"05)" " INSTALL SSLSTRIP-NG" \
	"06)" " INSTALL WIFI-EUTER" \
	"07)" " INSTALL WI-TOOLKIT" \
	"08)" " INSTALL BLUE-PINGER" \
	"09)" " INSTALL SPAM-EMAIL" \
	"10)" " INSTALL WEATHER" \
	"11)" " ABOUT ALL TOOLS" \
	"12)" " ABOUT THE AUTHOR" \
	"13)" " SHOW INSTALLED TOOLS" \
	"14)" " RUN INSTALLED TOOLS" \
	"15)" " FOLLOW ME" \
	"16)" " ABOUT" \
	"00)" " EXIT"  3>&2 2>&1 1>&3	
)

result1=$(echo "Please press ENTER to proceed main menu.")
case $CHOICE in
	"01)")   
		install_FBTOOL | whiptail --gauge "INSTALLING FBTOOL" 6 60 0
	;;
	"02)")   
	    install_HOST-FINDER | whiptail --gauge "INSTALLING HOST-FINDER" 6 60 0
	;;

	"03)")   
	    install_AIR-KIT | whiptail --gauge "INSTALLING AIR-KIT" 6 60 0
        ;;

	"04)")   
	    install_DEVICE-INFO | whiptail --gauge "INSTALLING DEVICE-INFO" 6 60 0
        ;;

	"05)")   
        install_SSLSTRIP-NG | whiptail --gauge "INSTALLING SSLSTRIP-NG" 6 60 0
        ;;

	"06)")   
		install_WIFI-EUTER | whiptail --gauge "INSTALLING WIFI-EUTER" 6 60 0
        ;;

	"07)")   
		install_WI-TOOLKIT | whiptail --gauge "INSTALLING WI-TOOLKIT" 6 60 0
        ;;

	"08)")   
		install_BLUE-PINGER | whiptail --gauge "INSTALLING BLUE-PINGER" 6 60 0
        ;;

	"09)")   
		install_SPAM-EMAIL | whiptail --gauge "INSTALLING SPAM-EMAIL" 6 60 0
        ;;

	"10)")   
		install_WEATHER | whiptail --gauge "INSTALLING WEATHER" 6 60 0
        ;;				

	"11)")   
		ABOUT_ALL
        ;;

	"12)")   
		whiptail \
        --title "ABOUT ME" \
        --msgbox "My name is Jayson Cabrillas San Buenaventura a 2nd year BSIT student to love build things that destroy other things..." 10 50
        ;;

	"13)")   
		show_TOOLS
        ;;

	"14)")
	    whiptail \
        --title "RUN INSTALLED TOOLS" \
        --msgbox "Please make sure that you have installed all the tools in the menu to be able to run." 10 50   
		run_TOOLS 
        ;;

	"15)")   
		follow_ME 
        ;;

	"16)")   
		whiptail \
        --title "ABOUT" \
        --msgbox "This is an open source tool for everyone, you can modify this if you want hahaha.... 

SPECIAL TNX TO : Warren Gonzaga" 10 50
        ;;				

	"00)") 
	    whiptail \
        --title "EXIT THE INSTALLER" \
        --msgbox "Are you sure that you want to exit the installer?" 8 45
        clear
		exit	
        ;;
esac
whiptail --title "RETURN TO MAIN MENU" --msgbox "$result1" 8 45
done
exit
}


###############################################################################################
#                                      CODE STARTS HERE                                       #
###############################################################################################

load_TOOL
main
