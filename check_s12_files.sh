#!/bin/bash
EXPECTED_FILES="echo-server.py webserver-1.py webserver-2.py e1.txt webserver-e2.py webserver-e3.py webserver-e4.py index.html"
for i in ${EXPECTED_FILES};
do
    test -f $i && echo "$i:OK" || echo "$i:FAIL"
done
