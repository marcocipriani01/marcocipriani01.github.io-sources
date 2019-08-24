#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
    kill $jekyll_pid
    echo "Interrupted."
    exit 0
}

cd "$(dirname "$0")"

echo -e "========= marcocipriani01.github.io website builder ========="

echo -e "******** Opening Chrome ********"
/opt/google/chrome/chrome http://0.0.0.0:4000/
/opt/google/chrome/chrome http://0.0.0.0:4000/admin

while true; do
    echo -e "******** Cleaning files ********"
    if [[ -d "_site" ]]; then
        rm -r "_site"
    fi
    echo -e "******** Starting Jekyll ********"
    echo -e "Press enter to restart Jekyll or type P for production build!\n"
    JEKYLL_ENV=development bundle exec jekyll serve --host=0.0.0.0 --incremental &
    jekyll_pid=$!
    sleep 2
    read -p "Ready for user input." opt
    
    kill "$jekyll_pid"
    if [[ "$opt" == "P" ]]; then
        echo -e "******** Production build ********"
        JEKYLL_ENV=production bundle exec jekyll build -d "DeployedWebsiteHTML"
        
        echo -e "******** Git repo configuration ********"
        git config --global credential.helper 'cache --timeout=3600' 2> /dev/null
        git config --global credential.helper cache 2> /dev/null
        read -p "Message: " msg
        git add -A
        git commit -a -m "$msg"
    
        echo -e "******** Pushing sources to GitHub ********"
        git push origin master
        cd "DeployedWebsiteHTML/"
        git add -A
        git commit -a -m "$msg"
        echo -e "******** Pushing built website to GitHub Pages ********"
        git push origin master
        cd ..
        echo -e "******** Done ********\n"
    fi
done
