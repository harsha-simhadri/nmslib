for Mval in 256 128
do
    for efCval in 256 128
    do
	for efSval in 128 32
	do
	    similarity_search/release/experiment -s l2  --distType float \
					       -i /mnt/SIFT1B/bigann_learn.txt \
					       -q  /mnt/SIFT1B/bigann_query.txt \
					       --threadTestQty 32 -k 32 \
					       --cachePrefixGS /mnt/SIFT1B/learn_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/SIFT1B/out_learn_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/SIFT1B/log_learn_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/SIFT1B/index_learn_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done

