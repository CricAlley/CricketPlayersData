#!/bin/bash
inputfolderpath="$1"
prefixpath="$2"
sudo mkdir -p "$prefixpath/$inputfolderpath"
sudo chmod 777 "$prefixpath/$inputfolderpath"