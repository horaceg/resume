#! /bin/bash

set -ex

ls *.{md,css,js} | entr ./build.bash
