#!/bin/bash
EXPECTED_FILES="e1.py e2.py e3.py e4.py e5.py"
for i in ${EXPECTED_FILES};
do
    test -f $i && echo "$i:OK" || echo "$i:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.json" -print
find . -iname "*.py" -print
echo "------------------------"
