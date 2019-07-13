#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
    kill $jekyll_pid
    echo "Interrupted"
    exit 0
}

cd "$(dirname "$0")"

while true; do
    if [[ -n "" ]]; then
        kill "$jekyll_pid"
    fi
    rm -r _site
    JEKYLL_ENV=development bundle exec jekyll serve --host=0.0.0.0 --incremental &
    jekyll_pid=$!
    notify-send --urgency=low -i terminal "Jekyll" "Restarter"
    read -p "$(echo -e "Press enter to restart the website \n ")"
done
