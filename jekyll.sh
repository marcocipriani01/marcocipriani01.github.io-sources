#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
    kill $jekyll_pid
    echo "Interrupted"
    exit 0
}

cd "$(dirname "$0")"

while true; do
    rm -r "_site" 2> /dev/null
    JEKYLL_ENV=development bundle exec jekyll serve --host=0.0.0.0 --incremental &
    jekyll_pid=$!
    read -p "$(echo -e "Press enter to restart the website or P for production \n")" opt
    rm -r "_site" 2> /dev/null
    kill "$jekyll_pid"
    if [[ "$opt" == "P" ]]; then
        JEKYLL_ENV=production bundle exec jekyll build -d "DeployedWebsiteHTML"
        cd "DeployedWebsiteHTML/"
        git status
        git add -A
        read -p "Message: " msg
        git commit -a -m "$msg"
        git push origin master
        cd ..
    fi
done
