#!/bin/bash
for dir in $(find . -maxdepth 1 -iname "[a-z,A-Z]*" -type d | grep -v BACKUPS); do cp -v test.html $dir/P05/html/; done
