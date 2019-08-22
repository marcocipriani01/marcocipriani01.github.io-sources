#!/bin/bash
file="$1"
if [ -z "$file" ]; then
    if [ -n $(which zenity)"" ]; then
        file="$(zenity --file-selection --filename="$(pwd)/blog")"
        if [ -z "$file" ]; then
            exit 0
        fi
    else
        read -e -p "Input image:" file
    fi
fi
filename=$(basename -- "$file")
extension="${filename##*.}"
filename="${filename%.*}"
convert "$file" -resize 130x130 -quality 80 ""$(dirname "$(realpath "$file")")"/${filename}-thumb.$extension"
