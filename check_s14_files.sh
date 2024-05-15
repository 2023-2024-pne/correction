#!/bin/bash
EXPECTED_FILES="webserver1.py webserver2.py webserver3.py webserver4.py webserver-e1.py webserver-e2.py webserver-e3.py blue.html error.html green.html index.html pink.html"
for i in ${EXPECTED_FILES};
do
    test -f $i && echo "$i:OK" || echo "$i:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.py" -print
echo "------------------------"
