#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
sudo mkdir -p "$PrefixPath/$InputFolderPath"
sudo chmod 777 "$PrefixPath/$InputFolderPath/"