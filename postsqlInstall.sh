#!/bin/bash
#
# This script will install postgresql v15 on fedora 38

sudo dnf module -y install postgresql:15/server 
#initialzing first data base
sudo postgresql-setup --initdb 
sudo systemctl enable --now postgresql
#local host listen or something
sudo grep listen_addresses /var/lib/pgsql/data/postgresql.conf 
sudo grep -v -E "^#|^$" /var/lib/pgsql/data/pg_hba.conf 
#sudo useradd fedoraSQLServer


