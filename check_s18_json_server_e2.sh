#!/bin/bash
test -z "${1}" && PORT=8080
curl 2>/dev/null "http://localhost:${PORT}/" || echo "ERROR[index]"
curl 2>/dev/null "http://localhost:${PORT}/listusers" || echo "ERROR[listusers]"
curl 2>/dev/null "http://localhost:${PORT}/listusers" | jq || echo "ERROR[jq]"
curl 2>/dev/null "http://localhost:${PORT}/unexistant" | grep -i error || echo "ERROR[error]"
python3 json-client-e2.py || echo "ERROR[client2]"
