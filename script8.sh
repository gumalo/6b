ip=`ip -4 addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | tail -1`

ipG="192.168.0."

for i in `seq 1 254`; do

    existente=`ping -c 3 192.168.0.$i | head -7 | tail -1 | awk '{print $4}'`

    if [ $existente != "0" ]; then

	echo "- $ipG$i"

    fi
done