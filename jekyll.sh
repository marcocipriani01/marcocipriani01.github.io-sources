#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
    kill $jekyll_pid
    echo "Interrupted"
    exit 0
}

bundle exec jekyll serve --host=0.0.0.0 --incremental &
jekyll_pid=$!
while true; do
    read -p "$(echo -e "Press enter to restart \n ")"
    kill $jekyll_pid
    bundle exec jekyll serve --host=0.0.0.0 &
    jekyll_pid=$!
done
