CREATE EXTERNAL TABLE testing.sql_queries
(id int, description string, tuples bigint, duration timestamp)
row format delimited fields terminated by '|'
location '/user/impadmin/testing/sql'
tblproperties ('serialization.null.format'='')