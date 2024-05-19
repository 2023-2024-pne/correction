#!/bin/bash
curl 2>/dev/null "http://localhost:8080/listusers" || echo "ERROR[listusers]"
curl 2>/dev/null "http://localhost:8080/listusers" | jq || echo "ERROR[jq]"
python3 json-client-1.py || echo "ERROR[client1]"
python3 json-client-2.py || echo "ERROR[client2]"
