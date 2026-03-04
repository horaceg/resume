#! /bin/bash

set -ex

ls *.{md,css,js,bash} | entr pixi run ./scripts/build.bash
