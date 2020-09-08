#!/bin/bash
inputfolderpath=$1
prefixpath=$2
# if [ -d $(prefixpath)/$(inputfolderpath) ]; then sudo rm -d -r $(prefixpath)/$(inputfolderpath); fi;
sudo mkdir -p "$prefixpath//$inputfolderpath"
sudo chmod 777 "$prefixpath//$inputfolderpath"