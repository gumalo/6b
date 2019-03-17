dias=`cat nombres.txt | wc -l`

echo "No llovió los días:"

for i in `seq 1 $dias`; do

    num=`cat precipitaciones.txt | tail -$i | head -1 | awk '{print $2}'`

    dia=`cat precipitaciones.txt | tail -$i | head -1 | awk '{print $1}'`

    if [ $num = 0 ]; then

	case $dia in
	    1|8)
		echo "- lunes"
		;;
	    2|9)
		echo "- martes"
		;;
	    3|10)
		echo "- miércoles"
		;;
	    4)
		echo "- jueves"
		;;
	    5)
		echo "- viernes"
		;;
	    6)
		echo "- sábado"
		;;
	    *)
		echo "- domingo"
		;;
	esac

    fi

done