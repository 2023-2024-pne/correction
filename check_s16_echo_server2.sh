curl 2>/dev/null "http://localhost:8080/"
curl 2>/dev/null "http://localhost:8080/echo?msg=what"
curl 2>/dev/null "http://localhost:8080/echo?msg=what" | grep what || echo "ERROR[what]"
curl 2>/dev/null "http://localhost:8080/echo?msg=what&chk=on"
echo
curl 2>/dev/null "http://localhost:8080/echo?msg=what&chk=on" | grep WHAT || echo "ERROR[WHAT]"
