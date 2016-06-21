CREATE EXTERNAL TABLE et_web_site (
    web_site_sk int ,
    web_site_id varchar(16) ,
    web_rec_start_date timestamp,
    web_rec_end_date timestamp,
    web_name varchar(50),
    web_open_date_sk int,
    web_close_date_sk int,
    web_class varchar(50),
    web_manager varchar(40),
    web_mkt_id int,
    web_mkt_class varchar(50),
    web_mkt_desc varchar(100),
    web_market_manager varchar(40),
    web_company_id int,
    web_company_name varchar(50),
    web_street_number varchar(10),
    web_street_name varchar(60),
    web_street_type varchar(15),
    web_suite_number varchar(10),
    web_city varchar(60),
    web_county varchar(30),
    web_state varchar(2),
    web_zip varchar(10),
    web_country varchar(20),
    web_gmt_offset decimal(5,2),
    web_tax_percentage decimal(5,2)
)
row format delimited fields terminated by '|'
location '/user/impadmin/tpcds_parquet/web_site'
tblproperties ('serialization.null.format'='')
;
