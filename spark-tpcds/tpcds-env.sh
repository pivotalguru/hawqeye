#!/bin/bash

set -e

LOCAL_PWD=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

FLATFILE_HDFS_ROOT=/user/${USER}/tpcds_spark
FLATFILE_HDFS_REPORTS=/user/${USER}/reports
FLATFILE_HDFS_TESTING=/user/${USER}/testing
GEN_DATA_SCALE=1
DSDGEN_THREADS_PER_NODE=12
SQL_VERSION="spark"
MULTI_USER_COUNT="5"
HIVE_HOSTNAME="ip-172-31-60-110.ec2.internal"
HIVE_PORT=10000
SPARK_HOSTNAME="ip-172-31-60-112.ec2.internal"
SPARK_PORT=10015

#if set to 1, rollout.sh will re-run this step.  
#if set to 0, rollout.sh will skip this step if it has successfully completed already.
compile="0"
gen_data="0"
ddl="1"
load="1"
sql="1"
reports="1"
multi_user="1"
