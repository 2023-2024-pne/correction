#!/bin/bash
EXPECTED_FILES="html/info/A.html html/info/C.html html/info/G.html html/info/T.html html/error.html html/index.html e2.py e3.py e4.py e5.py webserver.py"
for efile in ${EXPECTED_FILES};
do
    test -f "${efile}" && echo "$efile:OK" || echo "$efile:FAIL"
done
