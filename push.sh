#!/bin/bash
git add -A
read -p "Message: " msg
git commit -a -m "$msg"
git push origin master
