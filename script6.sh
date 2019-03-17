directorio=$1
lineas=`ls -l $directorio | grep .txt$ | wc -l`

suma=0

for i in `seq 1 $lineas`; do

    fichero=`ls -l $directorio | grep .txt$ | tail -$i | head -1 | awk '{print $9}'`
    rm $directorio/$fichero

done

echo "Se han borrado $lineas ficheros"