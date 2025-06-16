#! /bin/bash

set -ex

date

pandoc -s --from markdown --to html \
    -H <(echo "<script>" $(cat script.js) "</script>") \
    -c style.css -o index.html resume.md

node print.js ./index.html rendered/horace_guy.pdf

mkdir -p public
cp *.{html,css} public/
cp rendered/*.pdf public/
