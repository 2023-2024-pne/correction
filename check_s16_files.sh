#!/bin/bash
EXPECTED_FILES="html/form-1.html html/form-2.html echo-server-e1.py html/form-e1.html html/error.html echo-server-e2.py html/form-e2.html"
for i in ${EXPECTED_FILES};
do
    test -f $i && echo "$i:OK" || echo "$i:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.py" -print
echo "------------------------"
