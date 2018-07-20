for Mval in 64 128
do
    for efCval in  128 
    do
	for efSval in 32
	do
	    similarity_search/release/experiment -s l2  --distType float \
					       -i /mnt/bing_kann/qna/qna_new/qna_base.txt \
					       -q /mnt/bing_kann/qna/qna_new/qna_query.txt \
					       --threadTestQty 32 -k 100 \
					       --cachePrefixGS /mnt/bing_kann/qna/qna_new/qna_gs_ --maxCacheGSRelativeQty 128 \
					       --method hnsw --createIndex M=${Mval},efConstruction=${efCval},searchMethod=0 \
					       --queryTimeParams efSearch=${efSval} \
					       -o /mnt/bing_kann/qna/qna_new/out_M${Mval}_efC${efCval}_efS${efSval} \
					       -l /mnt/bing_kann/qna/qna_new/log_M${Mval}_efC${efCval}_efS${efSval} \
					       -S /mnt/bing_kann/qna/qna_new/index_M${Mval}_efC${efCval}_efS${efSval} ;
	done
    done
done
