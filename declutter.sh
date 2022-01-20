#/bin/sh
# some additional stuff
R='\033[;31m'
G='\033[0;32m'
B='\033[0;34m'
NC='\033[0m'

# check if user is root
if [ "$EUID" -ne 0 ]
	then echo -e "${R}Please run as root.${NC}"
	exit
fi

# update the system
echo -e "${G}>>> UPDATING SYSTEM <<<${NC}"
sudo apt update
sudo apt upgrade

# uninstall audio
echo -e "${R}>>> REMOVING AUDIO <<<${NC}"
sudo apt -y remove libasound* libvolume*

# uninstall bluetooth
echo -e "${R}>>> REMOVING BLUETOOTH <<<${NC}"
sudo apt -y remove bluez-audio bluez-cups bluez-gnome bluez-utils 

# uninstall dial-up capabilities
echo -e "${R}>>> REMOVING DIAL-UP CAPABILITIES <<<${NC}"
sudo apt -y remove ppp pppconfig pppoeconf wvdial

# uninstall snap store
echo -e "${R}>>> REMOVING SNAP STORE <<<${NC}"
sudo apt -y remove snapd

# uninstall ufw
echo -e "${R}>>> UNINSTALLING UFW <<<${NC}"
sudo apt -y remove ufw

# uninstall Canonical Ubuntu Server managment tool
echo -e "${R}>>> UNINSTALLING LANDSCAPE <<<${NC}"
sudo apt -y remove landscape-common

# uninstall other shit
echo -e "${R}>>> REMOVING OTHER <<<${NC}"
sudo apt -y remove motd-news-config mono-common 
# fonts
sudo apt -y remove ttf-arabeyes ttf-arphic-uming ttf-indic-fonts-core ttf-kochi-gothic ttf-kochi-mincho ttf-lao ttf-malayalam-fonts ttf-thai-tlwg ttf-ufonts-core
# gnome accessibility functions
sudo apt -y remove gnome-orca brltty brltty-x11 gnome-accessibility-themes gnome-mag libgnome-mag2
# VNC
sudo apt -y remove libgtk-vnc-*
# speech synthesizer
sudo apt -y remove espeak espeak-data libespeak1 libgnome-speech7
# IMO search protocol
sudo apt -y remove libbeagle1
# python tutorial
sudo apt -y remove diveintopython
# example content for various programs
sudo apt -y remove example-content
# gnome stuff
sudo apt -y remove gnome-games gnome-games-data gnome-cards-data
# totem media player
sudo apt -y remove totem totem-gstreamer totem-plugins totem-common totem-mozilla
# media player
sudo apt -y remove rhytmbox
# open office
sudo apt -y remove openoffice*

# clean up
echo -e "${B}>>> CLEANING UP <<<${NC}"
sudo apt clean
