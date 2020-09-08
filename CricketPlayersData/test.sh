#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [[ -d "$PrefixPath/$InputFolderPath" ]]; then sudo rm -d "$PrefixPath/$InputFolderPath"; fi;
sudo mkdir -p "$PrefixPath/$InputFolderPath"
sudo chmod -R 777 "$PrefixPath/$InputFolderPath"