#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [[ -d "$PrefixPath/$InputFolderPath" ]]; then sudo rm -d -R $PrefixPath/$InputFolderPath; fi;
sudo mkdir -p "$PrefixPath/$InputFolderPath"
sudo chmod 777 "$PrefixPath/$InputFolderPath/"