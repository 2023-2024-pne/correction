#!/bin/bash
EXPECTED_FILES="html/info/A.html html/info/C.html html/info/G.html html/info/T.html html/error.html html/index.html bases2-webserver.py"
for f in ${EXPECTED_FILES};
do
    test -f "${f}" && echo "$f:OK" || echo "$f:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.py" -print
echo "------------------------"
