curl 2>/dev/null "http://localhost:8080/" || echo "ERROR[index]"
curl 2>/dev/null "http://localhost:8080/echo?msg=asdf" || echo "ERROR[msg]"
