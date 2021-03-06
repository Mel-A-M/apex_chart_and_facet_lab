CREATE TABLE "USAGE"."OCI_USAGE_TAG_KEYS" 
(	"TENANT_NAME" VARCHAR2(100) , 
	"TAG_KEY" VARCHAR2(100) ,
	 CONSTRAINT "OCI_USAGE_TAG_KEYS_PK" PRIMARY KEY ("TENANT_NAME", "TAG_KEY")
USING INDEX
TABLESPACE "DATA" ENABLE
) SEGMENT CREATION IMMEDIATE 
NOCOMPRESS LOGGING 
TABLESPACE "DATA" ;


CREATE TABLE "USAGE"."OCI_USAGE_STATS" 
(	"TENANT_NAME" VARCHAR2(100) , 
	"FILE_ID" VARCHAR2(30) , 
	"USAGE_INTERVAL_START" DATE,
	"NUM_ROWS" NUMBER, 
	"UPDATE_DATE" DATE,
	"AGENT_VERSION" VARCHAR2(30) , 
	 CONSTRAINT "OCI_USAGE_STATS_PK" PRIMARY KEY ("TENANT_NAME", "FILE_ID", "USAGE_INTERVAL_START") 
USING INDEX 
TABLESPACE "DATA" ENABLE
) SEGMENT CREATION IMMEDIATE 
COMPRESS BASIC LOGGING 
TABLESPACE "DATA" ;


CREATE TABLE "USAGE"."OCI_COST_TAG_KEYS"
(	"TENANT_NAME" VARCHAR2(100) , 
	"TAG_KEY" VARCHAR2(100) ,
	 CONSTRAINT "OCI_COST_TAG_KEYS_PK" PRIMARY KEY ("TENANT_NAME", "TAG_KEY")
USING INDEX 
TABLESPACE "DATA" ENABLE
) SEGMENT CREATION IMMEDIATE 
 NOCOMPRESS LOGGING 
TABLESPACE "DATA" ;


CREATE TABLE "USAGE"."OCI_COST_STATS"
(	"TENANT_NAME" VARCHAR2(100) , 
	"FILE_ID" VARCHAR2(30) , 
	"USAGE_INTERVAL_START" DATE,
	"NUM_ROWS" NUMBER, 
	"COST_MY_COST" NUMBER,
	"UPDATE_DATE" DATE,
	"AGENT_VERSION" VARCHAR2(30) , 
	"COST_MY_COST_OVERAGE" NUMBER, 
	"COST_CURRENCY_CODE" VARCHAR2(10) ,
	 CONSTRAINT "OCI_COST_STATS_PK" PRIMARY KEY ("TENANT_NAME", "FILE_ID", "USAGE_INTERVAL_START")
USING INDEX 
TABLESPACE "DATA" ENABLE
) SEGMENT CREATION IMMEDIATE 
COMPRESS BASIC LOGGING 
TABLESPACE "DATA" ;


CREATE TABLE "USAGE"."OCI_COST_REFERENCE" 
(	"TENANT_NAME" VARCHAR2(100) , 
	"REF_TYPE" VARCHAR2(100) ,
	"REF_NAME" VARCHAR2(1000) , 
	 CONSTRAINT "OCI_REFERENCE_PK" PRIMARY KEY ("TENANT_NAME", "REF_TYPE", "REF_NAME")
USING INDEX 
TABLESPACE "DATA" ENABLE
) SEGMENT CREATION IMMEDIATE 
 NOCOMPRESS LOGGING 
TABLESPACE "DATA"; 


CREATE TABLE "USAGE"."OCI_COST"
(	"TENANT_NAME" VARCHAR2(100) , 
	"FILE_ID" VARCHAR2(30) , 
	"USAGE_INTERVAL_START" DATE,
	"USAGE_INTERVAL_END" DATE,
	"PRD_SERVICE" VARCHAR2(100) ,
	"PRD_RESOURCE" VARCHAR2(100) , 
	"PRD_COMPARTMENT_ID" VARCHAR2(100) , 
	"PRD_COMPARTMENT_NAME" VARCHAR2(100) ,
	"PRD_COMPARTMENT_PATH" VARCHAR2(1000) , 
	"PRD_REGION" VARCHAR2(100) ,
	"PRD_AVAILABILITY_DOMAIN" VARCHAR2(100) ,
	"USG_RESOURCE_ID" VARCHAR2(1000) ,
	"USG_BILLED_QUANTITY" NUMBER,
	"USG_BILLED_QUANTITY_OVERAGE" NUMBER,
	"COST_SUBSCRIPTION_ID" NUMBER, 
	"COST_PRODUCT_SKU" VARCHAR2(10) , 
	"PRD_DESCRIPTION" VARCHAR2(1000) ,
	"COST_UNIT_PRICE" NUMBER,
	"COST_UNIT_PRICE_OVERAGE" NUMBER, 
	"COST_MY_COST" NUMBER,
	"COST_MY_COST_OVERAGE" NUMBER, 
	"COST_CURRENCY_CODE" VARCHAR2(10) ,
	"COST_BILLING_UNIT" VARCHAR2(1000) , 
	"COST_OVERAGE_FLAG" VARCHAR2(10) ,
	"IS_CORRECTION" VARCHAR2(10) , 
	"TAGS_DATA" VARCHAR2(4000)  
) SEGMENT CREATION IMMEDIATE 
 COMPRESS BASIC LOGGING
TABLESPACE "DATA" ;


CREATE TABLE "USAGE"."OCI_USAGE" 
(	"TENANT_NAME" VARCHAR2(100) , 
	"FILE_ID" VARCHAR2(30) , 
	"USAGE_INTERVAL_START" DATE,
	"USAGE_INTERVAL_END" DATE,
	"PRD_SERVICE" VARCHAR2(100) ,
	"PRD_RESOURCE" VARCHAR2(100) , 
	"PRD_COMPARTMENT_ID" VARCHAR2(100) , 
	"PRD_COMPARTMENT_NAME" VARCHAR2(100) ,
	"PRD_COMPARTMENT_PATH" VARCHAR2(1000) , 
	"PRD_REGION" VARCHAR2(100) ,
	"PRD_AVAILABILITY_DOMAIN" VARCHAR2(100) ,
	"USG_RESOURCE_ID" VARCHAR2(1000) ,
	"USG_BILLED_QUANTITY" NUMBER,
	"USG_CONSUMED_QUANTITY" NUMBER,
	"USG_CONSUMED_UNITS" VARCHAR2(100) , 
	"USG_CONSUMED_MEASURE" VARCHAR2(100) ,
	"IS_CORRECTION" VARCHAR2(10) , 
	"TAGS_DATA" VARCHAR2(4000)  
) SEGMENT CREATION IMMEDIATE 
 COMPRESS BASIC LOGGING
TABLESPACE "DATA"; 
