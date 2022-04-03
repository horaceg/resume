#! /bin/bash

set -e

date

pandoc -s --from markdown --to html \
    -H <(echo "<script>" $(cat script.js) "</script>") \
    -c style.css -o index.html resume.md

pandoc -s --from markdown --to html \
    -V margin-top=0 -V margin-left=0 -V margin-right=0 -V margin-bottom=0 \
    -V papersize=letter \
    -c style.css -o horace_guy.pdf <(head -n -4 resume.md)

mkdir -p public
cp *.{html,css,pdf} public/
