#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [ -d "$PrefixPath/$InputFolderPath" ]; then echo "I am not noob"; else echo "i am noob"; fi