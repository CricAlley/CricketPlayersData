#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [[ -d "$PrefixPath/$InputFolderPath/" ]]; then sudo rm -d -R "$PrefixPath/$InputFolderPath"; fi;
sudo mkdir -p "$PrefixPath/$InputFolderPath"
sudo chmod 777 "$PrefixPath/$InputFolderPath"
# sudo mkdir "$PrefixPath/$InputFolderPath/Temp"
# sudo chmod 777 "$PrefixPath/$InputFolderPath/Temp"
# echo "Files present in $PrefixPath/$InputFolderPath"
# ls "$PrefixPath/$InputFolderPath"
# echo "Files present in $PrefixPath/$InputFolderPath/Temp"
# ls "$PrefixPath/$InputFolderPath/Temp"
# wget -P $PrefixPath/$InputFolderPat/Temp https://cricsheet.org/downloads/odis_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/odis_male.zip -d $PrefixPath/$InputFolderPath/odis_male
# wget -P $PrefixPath/$InputFolderPath/Temp https://cricsheet.org/downloads/t20s_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/t20s_male.zip -d $PrefixPath/$InputFolderPath/t20s_male
# wget -P $PrefixPath/$InputFolderPath/Temp https://cricsheet.org/downloads/bbl_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/bbl_male.zip -d $PrefixPath/$InputFolderPath/bbl_male
# wget -P $PrefixPath/$InputFolderPath/Temp https://cricsheet.org/downloads/cpl_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/cpl_male.zip -d $PrefixPath/$InputFolderPath/cpl_male
# wget -P $PrefixPath/$InputFolderPath/Temp https://cricsheet.org/downloads/ipl_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/ipl_male.zip -d $PrefixPath/$InputFolderPath/ipl_male
# wget -P $PrefixPath/$InputFolderPath/Temp https://cricsheet.org/downloads/ntb_male.zip
# unzip $PrefixPath/$InputFolderPath/Temp/ntb_male.zip -d $PrefixPath/$InputFolderPath/ntb_male
# rm -d -R $PrefixPath/$InputFolderPath/Temp/