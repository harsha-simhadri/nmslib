for Mval in 128 256
do
    for efCval in  128 256
    do
	for efSval in 32 128
	do
	    similarity_search/release/experiment -s l2  --distType float \
					       -i /mnt/bing_kann/tp3.5/tp3.5_new/tp35_base.txt \
					       -q /mnt/bing_kann/tp3.5/tp3.5_new/tp35_query.txt \
					       --threadTestQty 32 -k 100 \
					       --cachePrefixGS /mnt/bing_kann/tp3.5/tp3.5_new/tp3.5_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/bing_kann/tp3.5/tp3.5_new/out_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/bing_kann/tp3.5/tp3.5_new/log_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/bing_kann/tp3.5/tp3.5_new/index_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done
