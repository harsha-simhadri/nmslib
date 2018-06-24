for Mval in 32 128
do
    for efCval in  64 256
    do
	for efSval in 32 64
	do
	    similarity_search/release/experiment -s l2  --distType float \
					       -i /mnt/bing_kann/metis/metisvector.txt \
					       -q /mnt/bing_kann/metis/metis2kquery.txt \
					       --threadTestQty 32 -k 32 \
					       --cachePrefixGS /mnt/bing_kann/metis/met_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/bing_kann/metis/out_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/bing_kann/metis/log_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/bing_kann/metis/index_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done
