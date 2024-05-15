#!/bin/bash
curl 2>/dev/null http://127.0.0.1:8080/index.html
curl 2>/dev/null http://127.0.0.1:8080/error.html
curl 2>/dev/null http://127.0.0.1:8080/unexistant | grep -i error || echo "ERROR"
curl 2>/dev/null http://127.0.0.1:8080/blue.html | grep -i blue || echo "ERROR"
curl 2>/dev/null http://127.0.0.1:8080/pink.html | grep -i pink || echo "ERROR"
curl 2>/dev/null http://127.0.0.1:8080/green.html | grep -i green || echo "ERROR" 
