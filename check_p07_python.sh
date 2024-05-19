#!/bin/bash
EXPECTED_FILES="e1.py e2.py e3.py e5.py"
for i in ${EXPECTED_FILES};
do
    PYTHONPATH=../P01 python3 ./"${i}"
done

/usr/bin/expect <(cat <<EOF
	spawn /usr/bin/python3 ./e4.py
	expect ":"
	send "ANK2\r"
	interact
EOF
)
