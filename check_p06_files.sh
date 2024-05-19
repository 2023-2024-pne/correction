#!/bin/bash
EXPECTED_FILES="Seq2-server.py html/index.html html/ping.html html/get.html html/gene.html html/operation.html html/error.html"
for f in ${EXPECTED_FILES};
do
    test -f "${f}" && echo "$f:OK" || echo "$f:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.py" -print
echo "------------------------"
