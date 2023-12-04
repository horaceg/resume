#! /bin/bash

set -ex

ls *.{md,css,js,bash} | entr ./build.bash
