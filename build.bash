#! /bin/bash

set -ex

date

mkdir -p public

cp style.css public/

pandoc -s --from markdown --to html \
    -c style.css -o public/index.html resume.md

cwd=$(pwd)
pnpm exec node print.js $cwd/public/index.html public/horace_guy.pdf
