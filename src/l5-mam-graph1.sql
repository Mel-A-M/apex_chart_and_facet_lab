Select trunc(us.USAGE_INTERVAL_START) FILE_DATE,
sum(us.num_rows) as us_num_rows
from usage.oci_usage_stats us group by
trunc(us.USAGE_INTERVAL_START) order by file_date;