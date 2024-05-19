for i in test*py;
do
    echo "------------ $i -------------"
    python3 ./${i}
    echo "-----------------------------"
done
