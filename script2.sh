dias=`cat nombres.txt | wc -l`

suma=0

for i in `seq 1 $dias`; do

    num=`cat precipitaciones.txt | tail -$i | head -1 | awk '{print $2}'`

    suma=$((suma + num))

done

media=$((suma / dias))

echo "La media de precipitaciones es $media"
