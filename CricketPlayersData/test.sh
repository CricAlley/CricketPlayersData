#!/bin/bash
InputFolderPath=$1
PrefixPath=$2
if [ -d "$PrefixPath/$InputFolderPath" ]; then echo "Path exists"; fi