curl 2>/dev/null "http://localhost:8080/"
curl 2>/dev/null "http://localhost:8080/echo?msg=hello" || echo 'ERROR[hello]'
curl 2>/dev/null "http://localhost:8080/echo?msg=hello" | grep hello || echo 'ERROR[hello]'
curl 2>/dev/null "http://localhost:8080/echo?msg=what" || echo 'ERROR[what]'
curl 2>/dev/null "http://localhost:8080/echo?msg=what" | grep what || echo 'ERROR[what]'

