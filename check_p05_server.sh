#!/bin/bash
curl 2>/dev/null http://127.0.0.1:8080/info/A.html | grep -i pink || echo "ERROR [info/A]"
curl 2>/dev/null http://127.0.0.1:8080/info/C.html | grep -i yellow || echo "ERROR [info/C]"
curl 2>/dev/null http://127.0.0.1:8080/info/G.html | grep -i blue || echo "ERROR [info/G]"
curl 2>/dev/null http://127.0.0.1:8080/info/T.html | grep -i pink || echo "ERROR [info/T]"
curl 2>/dev/null http://127.0.0.1:8080/index.html || echo "ERROR [no index]"
curl 2>/dev/null http://127.0.0.1:8080/ || echo "ERROR:[no root]"
curl 2>/dev/null http://127.0.0.1:8080/test.html || echo "ERROR [unable to access test.html]"
curl 2>/dev/null http://127.0.0.1:8080/unexistant | grep -i error || echo "ERROR [wrong error handling]"
