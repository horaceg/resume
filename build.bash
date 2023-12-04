#! /bin/bash

set -ex

date

pandoc -s --from markdown --to html \
    -H <(echo "<script>" $(cat script.js) "</script>") \
    -c style.css -o index.html resume.md

# pandoc --verbose -s --from markdown --to html \
#     -V margin-top=0 -V margin-left=0 -V margin-right=0 -V margin-bottom=0 \
#     -V papersize=letter \
#     -c style.css <(head -n -4 resume.md) \
#     | sed '/<body>/c\<body class="markdown-body">' \
#     | weasyprint - output.pdf

mkdir -p public
cp *.{html,css} public/
cp rendered/*.pdf public/
