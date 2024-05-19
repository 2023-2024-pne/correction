#!/bin/bash
curl 2>/dev/null "http://localhost:8080/" || echo "ERROR[index]"
curl 2>/dev/null "http://localhost:8080/listusers" || echo "ERROR[listusers]"
curl 2>/dev/null "http://localhost:8080/listusers" | jq || echo "ERROR[jq]"
python3 json-client-e2.py || echo "ERROR[client2]"
