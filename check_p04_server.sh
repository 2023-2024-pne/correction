#!/bin/bash
curl http://127.0.0.1:8080/info/A
curl http://127.0.0.1:8080/info/C
curl http://127.0.0.1:8080/info/G
curl http://127.0.0.1:8080/info/T
curl http://127.0.0.1:8080/index.html
curl http://127.0.0.1:8080/
curl http://127.0.0.1:8080/error.html

curl http://127.0.0.1:8080/unexistant | grep -i error
