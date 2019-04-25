#!/bin/sh
while true
do
  git pull origin master
  python crawlImages.py
  python editIndex.py
  git add index.html
  git push origin master
  sleep 100
done
