#! /usr/bin/env fish

date

pandoc -s  --from markdown --to html -H (echo "<script>" (cat script.js) "</script>" | psub) -c style.css -o resume.html resume.md

pandoc -s --from markdown --to html -V margin-top=0 -V margin-left=0 -V margin-right=0 -V margin-bottom=0 -V papersize=letter -c style.css -o horace_guy.pdf resume.md
