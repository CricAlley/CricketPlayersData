#!/bin/bash
inputfolderpath="$1"
prefixpath="$2"
if [ -d $prefixpath/$inputfolderpath ]; then sudo rm -d -r $prefixpath/$inputfolderpath; fi;
sudo mkdir -p $prefixpath/$inputfolderpath
sudo chmod 777 $prefixpath/$inputfolderpath
sudo mkdir "$prefixpath/$inputfolderpath/temp"
sudo chmod 777 "$prefixpath/$inputfolderpath/temp"
echo "files present in $prefixpath/$inputfolderpath"
ls "$prefixpath/$inputfolderpath"
echo "files present in $prefixpath/$inputfolderpath/temp"
ls "$prefixpath/$inputfolderpath/temp"
wget -P "$prefixpath/$inputfolderpath/temp" https://cricsheet.org/downloads/odis_male.zip
unzip $prefixpath/$inputfolderpath/temp/odis_male.zip -d "$prefixpath/$inputfolderpath/odis_male"
wget -P $prefixpath/$inputfolderpath/temp https://cricsheet.org/downloads/t20s_male.zip
unzip $prefixpath/$inputfolderpath/temp/t20s_male.zip -d "$prefixpath/$inputfolderpath/t20s_male"
wget -P $prefixpath/$inputfolderpath/temp https://cricsheet.org/downloads/bbl_male.zip
unzip $prefixpath/$inputfolderpath/temp/bbl_male.zip -d "$prefixpath/$inputfolderpath/bbl_male"
wget -P $prefixpath/$inputfolderpath/temp https://cricsheet.org/downloads/cpl_male.zip
unzip $prefixpath/$inputfolderpath/temp/cpl_male.zip -d "$prefixpath/$inputfolderpath/cpl_male"
wget -P $prefixpath/$inputfolderpath/temp https://cricsheet.org/downloads/ipl_male.zip
unzip $prefixpath/$inputfolderpath/temp/ipl_male.zip -d "$prefixpath/$inputfolderpath/ipl_male"
wget -P $prefixpath/$inputfolderpath/temp https://cricsheet.org/downloads/ntb_male.zip
unzip $prefixpath/$inputfolderpath/temp/ntb_male.zip -d "$prefixpath/$inputfolderpath/ntb_male"
rm -d -r $prefixpath/$inputfolderpath/temp