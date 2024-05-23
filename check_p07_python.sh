#!/bin/bash
EXPECTED_FILES="e1.py e2.py e3.py e5.py"
export PYTHONPATH=../P00:../P01:../P03:../P06:${PYTHONPATH}
for i in ${EXPECTED_FILES};
do
    echo "------------ ${i} --------------"
    python3 ./"${i}"
    echo "--------------------------------"
done

echo "------------ e4.py --------------"
/usr/bin/expect <(cat <<EOF
	spawn /usr/bin/python3 ./e4.py
	expect ":"
	send "ANK2\r"
	interact
EOF
)
echo "---------------------------------"
