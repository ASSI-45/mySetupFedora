#!/bin/bash


# to make dnf not slow as shit
sudo echo "max_parallel_downloads=10" >> ~/etc/dnf/dnf.conf
sudo echo "fastestmirror=true" >> ~/etc/dnf/dnf.conf
sudo echo "deltarpm=true" >> ~/etc/dnf/dnf.conf

#update
sudo dnf update

# installing important stuff

# installing diffrent repo's
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm

sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

rpm -q cronie cronie-anacron
# multimedia
sudo dnf -y install vlc
sudo dnf -y install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
sudo dnf -y install lame\* --exclude=lame-devel
sudo dnf -y group upgrade --with-optional Multimedia
sudo dnf -y update && upgrade
sudo dnf -y install cronie cronie-anacron
#change hostname
sudo hostnamectl set-hostname "ASN"

#changing to the best DE
echo "00000000000000000"
echo "00000000000000000"
echo "00000000000000000"
echo "00000000000000000"

sudo dnf swap @gnome-desktop @kde-desktop

echo "NOW UPATE AND REBOOT!!!!!!!"
