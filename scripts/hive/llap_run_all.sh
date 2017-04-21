#!/bin/bash

QUERY_FILES="/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query*.sql"


#QUERY_FILES=("/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query75.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query76.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query80.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query82.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query84.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query85.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query87.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query88.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query90.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query93.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query94.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query95.sql" "/opt/hp/CS300M/utils/hive-testbench-hivehp/sample-queries-tpcds/query96.sql")

SF=$1
RUN=$2
FILETYPE=$3
SETTINGS=$4
skip=n
echo "Running LLAP Queries"
#  for f in $QUERY_FILES

  for f in ${QUERY_FILES[@]}
   do
    fn=`basename $f`
#    if [ "$fn" == "query29.sql" ]
#      then
#        skip=n
#        continue
#    elif [ "$skip" == "y" ]
#    then
#     continue
#    fi

    echo "Executing Query: "$fn
   ./llap_run_tpcds_queries.sh $fn $SF $RUN $FILETYPE $SETTINGS
 done
  wait
  sleep 5
 echo "Query Execution Completed"