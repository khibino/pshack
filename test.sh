#! /bin/sh

set -e

make test0

./test0

gs test0.ps
