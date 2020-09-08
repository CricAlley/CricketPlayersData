#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [ -d "$PrefixPath/$InputFolderPath" ]; then sudo rmdir -R "$HOME/$InputFolderPath"; fi
sudo mkdir -p "$PrefixPath/$InputFolderPath"
sudo chmod 777 "$PrefixPath/$InputFolderPath/"