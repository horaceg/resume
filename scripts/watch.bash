#! /bin/bash

set -ex

ls *.{md,css,js,bash} | entr ./scripts/build.bash
