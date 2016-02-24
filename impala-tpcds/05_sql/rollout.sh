#!/bin/bash
set -e

PWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
source $PWD/../tpcds-env.sh
source $PWD/../functions.sh

step=sql
init_log $step

for i in $(ls *.$QUERY_TYPE.*.sql); do
	id=`echo $i | awk -F '.' '{print $1}'`
	schema_name=`echo $i | awk -F '.' '{print $2}'`
	table_name=`echo $i | awk -F '.' '{print $3}'`

	start_log
	tuples=$(impala-shell -i $IMP_HOST -d $TPCDS_DBNAME -f $i | wc -l)
	#impala-shell -i $IMP_HOST -d $TPCDS_DBNAME -f $i 
	#tuples="0"
	log $tuples
done
end_step $step

