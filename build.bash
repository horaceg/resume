#! /bin/bash

set -ex

date

pandoc -s --from markdown --to html \
    -c style.css -o index.html resume.md

cwd=$(pwd)
node print.js $cwd/index.html horace_guy.pdf

mkdir -p public
cp *.{html,css} public/
cp horace_guy.pdf public/
