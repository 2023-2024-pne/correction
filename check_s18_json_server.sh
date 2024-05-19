#!/bin/bash
test -z "${1}" && PORT=8080
curl 2>/dev/null "http://localhost:${PORT}/listusers" || echo "ERROR[listusers]"
curl 2>/dev/null "http://localhost:${PORT}/listusers" | jq || echo "ERROR[jq]"
python3 json-client-1.py || echo "ERROR[client1]"
python3 json-client-2.py || echo "ERROR[client2]"
