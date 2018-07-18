for Mval in 64 256
do
    for efCval in  128 256
    do
	for efSval in 32 64
	do
	    similarity_search/debug/experiment -s l2  --distType float \
					       -i /mnt/SIFT1B/bigann_base10M.txt \
					       -q  /mnt/SIFT1B/bigann_query.txt \
					       --threadTestQty 32 -k 32 \
					       --cachePrefixGS /mnt/SIFT1B/base10M_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/SIFT1B/out_base10M_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/SIFT1B/log_base10M_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/SIFT1B/index_base10M_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done
