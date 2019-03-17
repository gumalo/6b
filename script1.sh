x=$1

secuencia=`cat nombres.txt | wc -l`

for i in `seq 1 $secuencia`; do
    
    nombre=`cat nombres.txt | head -$i | tail -1`
    mkdir $nombre  
    
    for j in `seq 1 $x`; do
	
	nomCar="personal$j"
	mkdir ./$nombre/$nomCar
    
    done

done
	
	

