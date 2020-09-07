#!/bin/bash
InputFolderPath=$1
PathPrefix="/usr/local/cricalley"
if [ -d "$PathPrefix/$InputFolderPath" ]; then sudo rm -d -R $PathPrefix/$InputFolderPath; fi
sudo mkdir -p $PathPrefix/$InputFolderPath/
sudo chmod 777 $PathPrefix/$InputFolderPath
sudo mkdir $PathPrefix/$InputFolderPath/Temp
sudo chmod 777 $PathPrefix/$InputFolderPath/Temp
echo "Files present in $PathPrefix/$InputFolderPath/"
ls $PathPrefix/$InputFolderPath/
echo "Files present in $PathPrefix/$InputFolderPath/Temp"
ls $PathPrefix/$InputFolderPath/Temp/
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/odis_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/odis_male.zip -d $PathPrefix/$InputFolderPath/odis_male
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/t20s_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/t20s_male.zip -d $PathPrefix/$InputFolderPath/t20s_male
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/bbl_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/bbl_male.zip -d $PathPrefix/$InputFolderPath/bbl_male
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/cpl_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/cpl_male.zip -d $PathPrefix/$InputFolderPath/cpl_male
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/ipl_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/ipl_male.zip -d $PathPrefix/$InputFolderPath/ipl_male
wget -P $PathPrefix/$InputFolderPath/Temp https://cricsheet.org/downloads/ntb_male.zip
unzip $PathPrefix/$InputFolderPath/Temp/ntb_male.zip -d $PathPrefix/$InputFolderPath/ntb_male
rm -d -R $PathPrefix/$InputFolderPath/Temp
