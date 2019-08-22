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
convert -size 500x70 xc:none -gravity center \
        -stroke black -strokewidth 2 -annotate 0 'Marco Cipriani' -font "Pacifico-Regular" -pointsize 40 \
        -background none -shadow 100x3+0+0 +repage \
        -stroke none -fill white -annotate 0 'Marco Cipriani' -font "Pacifico-Regular" -pointsize 40 \
        "$file" +swap -gravity south-east -geometry +2-1 \
        -composite -quality 80 ""$(dirname "$(realpath "$file")")"/${filename}.$extension"
