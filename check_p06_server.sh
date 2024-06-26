#!/bin/bash
curl 2>/dev/null http://localhost:8080/
curl 2>/dev/null "http://localhost:8080/ping?" | grep -i ok || echo "ERROR[ping]"
curl 2>/dev/null "http://localhost:8080/get?n=2" | grep -i -e "[A,C,T,G]" || echo "ERROR[get(seq)]"
curl 2>/dev/null "http://localhost:8080/get?n=2" | grep 2 || echo "ERROR[get(2)]"
curl 2>/dev/null "http://localhost:8080/gene?name=U5" | grep U5 || echo "ERROR[gene(U5)]"
curl 2>/dev/null "http://localhost:8080/gene?name=ADA" | grep ADA || echo "ERROR[gene(ADA)]"
curl 2>/dev/null "http://localhost:8080/gene?name=RNU6_269P" | grep RNU6_269P || echo "ERROR[gene(RNU6_269P)]"
curl 2>/dev/null "http://localhost:8080/gene?name=FRAT1" | grep FRAT1 || echo "ERROR[gene(FRAT1)]"
curl 2>/dev/null "http://localhost:8080/gene?name=FXN" | grep FXN || echo "ERROR[gene(FXN)]"
curl 2>/dev/null "http://localhost:8080/operation?user_seq=ACCGGGTTT&operation=Info" | grep -i 9 || echo "ERROR[info(len)]"
curl 2>/dev/null "http://localhost:8080/operation?user_seq=ACCGGGTTT&operation=Comp" | grep -i "TGGCCCAAA" || echo "ERROR[Comp]"
curl 2>/dev/null "http://localhost:8080/operation?user_seq=ACCGGGTTT&operation=Rev" | grep -i "TTTGGGCCA" || echo "ERROR[Rev]"
curl 2>/dev/null "http://localhost:8080/unexistant" | grep -i "error" || echo "ERROR[error.html]"
