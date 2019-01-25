#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
    kill $jekyll_pid
    echo "Interrupted"
    exit 0
}

cd "$(dirname "$0")"

rm -r _site

JEKYLL_ENV=development bundle exec jekyll serve --host=0.0.0.0 --incremental &
jekyll_pid=$!
while true; do
    read -p "$(echo -e "Press enter to restart \n ")"
    kill $jekyll_pid
    JEKYLL_ENV=development bundle exec jekyll serve --host=0.0.0.0 --incremental &
    jekyll_pid=$!
done
