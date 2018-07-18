for Mval in 64 128
do
    for efCval in  128 
    do
	for efSval in 32
	do
	    similarity_search/release/experiment -s l2  --distType float \
					       -i /mnt/bing_kann/qna/qna.txt \
					       -q /mnt/bing_kann/qna/qnakdtreeagiv4_2kquery.txt \
					       --threadTestQty 32 -k 32 \
					       --cachePrefixGS /mnt/bing_kann/qna/qna_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/bing_kann/qna/out_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/bing_kann/qna/log_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/bing_kann/qna/index_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done
