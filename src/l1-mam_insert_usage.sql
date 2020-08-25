

insert into "USAGE"."OCI_COST_TAG_KEYS"
(TENANT_NAME,TAG_KEY)
select col001, col002
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_cost_tag_keys.csv', 'GET')
, p_file_name=> 'oci_cost_tag_keys.csv', p_skip_rows=> 1 )
);

insert into "USAGE"."OCI_USAGE_TAG_KEYS"
(TENANT_NAME,TAG_KEY)
select col001, col002
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_usage_tag_keys.csv', 'GET')
, p_file_name=> 'oci_usage_tag_keys.csv', p_skip_rows=> 1 )
);


insert into "USAGE"."OCI_USAGE_STATS"
(TENANT_NAME,FILE_ID, USAGE_INTERVAL_START, NUM_ROWS, UPDATE_DATE,AGENT_VERSION)
select col001, col002, to_date(col003,'DD-MON-RR HH24:MI:SS'),col004,to_date(col005,'DD-MON-YYYY HH24:MI:SS'),col006
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_usage_stats.csv', 'GET')
, p_file_name=> 'oci_usage_stats.csv', p_skip_rows=> 1 )
);

insert into "USAGE"."OCI_COST_STATS"
(TENANT_NAME,FILE_ID, USAGE_INTERVAL_START, NUM_ROWS, COST_MY_COST,UPDATE_DATE,AGENT_VERSION,COST_MY_COST_OVERAGE,COST_CURRENCY_CODE)
select col001, col002, to_date(col003,'DD-MON-YYYY HH24:MI:SS'),col004,col005,to_date(col006,'DD-MON-YYYY HH24:MI:SS'),col007,col008,col009
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_cost_stats.csv', 'GET')
, p_file_name=> 'oci_cost_stats.csv', p_skip_rows=> 1 )
);


insert into "USAGE"."OCI_COST_REFERENCE"
(TENANT_NAME,REF_TYPE,REF_NAME)
select col001, col002, col003
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_cost_reference.csv', 'GET')
, p_file_name=> 'oci_cost_reference.csv', p_skip_rows=> 1 )
);


insert into "USAGE"."OCI_COST"
(
TENANT_NAME , 
FILE_ID , 
USAGE_INTERVAL_START,
USAGE_INTERVAL_END,
PRD_SERVICE ,
PRD_RESOURCE , 
PRD_COMPARTMENT_ID , 
PRD_COMPARTMENT_NAME ,
PRD_COMPARTMENT_PATH , 
PRD_REGION,
PRD_AVAILABILITY_DOMAIN ,
USG_RESOURCE_ID,
USG_BILLED_QUANTITY,
USG_BILLED_QUANTITY_OVERAGE,
COST_SUBSCRIPTION_ID, 
COST_PRODUCT_SKU , 
PRD_DESCRIPTION ,
COST_UNIT_PRICE,
COST_UNIT_PRICE_OVERAGE, 
COST_MY_COST,
COST_MY_COST_OVERAGE, 
COST_CURRENCY_CODE ,
COST_BILLING_UNIT , 
COST_OVERAGE_FLAG ,
IS_CORRECTION, 
TAGS_DATA  
)
select col001, col002, 
to_date(col003,'DD-MON-YYYY HH24:MI:SS'),
to_date(col004,'DD-MON-YYYY HH24:MI:SS'),
col005,col006,col007,col008,col009,
col010,col011,col012,col013,col014,col015,
col016,col017,col018,col019,col020,col021,
col022,col023,col024,col025,col026
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_cost.csv', 'GET')
, p_file_name=> 'oci_cost.csv', p_skip_rows=> 1 )
);




insert into "USAGE"."OCI_USAGE" 
(	TENANT_NAME  , 
	FILE_ID , 
	USAGE_INTERVAL_START,
	USAGE_INTERVAL_END,
	PRD_SERVICE,
	PRD_RESOURCE , 
	PRD_COMPARTMENT_ID, 
	PRD_COMPARTMENT_NAME,
	PRD_COMPARTMENT_PATH, 
	PRD_REGION ,
	PRD_AVAILABILITY_DOMAIN ,
	USG_RESOURCE_ID ,
	USG_BILLED_QUANTITY,
	USG_CONSUMED_QUANTITY,
	USG_CONSUMED_UNITS , 
	USG_CONSUMED_MEASURE ,
	IS_CORRECTION, 
	TAGS_DATA 
) 
select col001, col002, 
to_date(col003,'DD-MON-YYYY HH24:MI:SS'),
to_date(col004,'DD-MON-YYYY HH24:MI:SS'),
col005,col006,col007,col008,col009,
col010,col011,col012,col013,col014,col015,
col016,col017,col018
from table
( apex_data_parser.parse
(  p_content=> apex_web_service.make_rest_request_b('https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_usage.csv', 'GET')
, p_file_name=> 'oci_usage.csv', p_skip_rows=> 1 )
);






