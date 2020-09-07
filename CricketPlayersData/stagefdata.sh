#!/bin/bash
InputFolderpath=$1
PrefixPath=$2
if [ -d "$PrefixPath/$InputFolderpath" ]; then sudo rm -d -r $PrefixPath/$InputFolderpath; fi
sudo mkdir -p $PrefixPath/$InputFolderpath/Temp
sudo chmod 777 -r $PrefixPath/$InputFolderpath
echo "file in $PrefixPath/$InputFolderpath"
ls $PrefixPath/$InputFolderpath
echo "files in $PrefixPath/$InputFolderpath/Temp"
ls $PrefixPath/$InputFolderpath/Temp
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
rm -d -r $PathPrefix/$InputFolderPath/Temp
