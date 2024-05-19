#!/bin/bash
EXPECTED_FILES="error.html index.html json-client-1.py json-client-2.py json-client-e2.py json-server.py json-server-e2.py people-1.json people-2.json people-3.json people-e1.json test-json-1.py test-json-2.py test-json-3.py test-json-e1.py"
for i in ${EXPECTED_FILES};
do
    test -f $i && echo "$i:OK" || echo "$i:FAIL"
done
echo "------------------------"
find . -iname "*.html" -print
find . -iname "*.json" -print
find . -iname "*.py" -print
echo "------------------------"
