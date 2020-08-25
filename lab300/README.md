### Create the destination tables

### 

As part of the workshop preparation you downloaded a zip file containing
the lab script files. If you have not done so already, unzip this file
so you can access the files it contains.

At the top of the Workspace home page, click the **SQL Workshop** menu
and select **SQL Scripts**.

Use the **Choose File** button to select \'lab600_table_defs.sql\' from
the lab scripts zip file.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image8.png){width="6.266666666666667in"
height="3.8916666666666666in"}

Select **Upload.** In the *Upload Script* dialog select the **Browse**
button to select \'lab600_table_defs.sql\' from the lab scripts zip
file.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image9.png){width="6.266666666666667in"
height="3.691666666666667in"}

You can examine the contents of the script by using the **Edit**
(pencil) icon on the same line as your uploaded script. The script will
create several tables to hold the sample data.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image10.png){width="6.266666666666667in"
height="1.7083333333333333in"}

When you are happy with the script select **Run**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image11.png){width="6.258333333333334in"
height="2.316666666666667in"}

On the *Run Script* confirmation page, select **Run Now.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image12.png){width="6.266666666666667in"
height="3.7083333333333335in"}

The script will run and then you ware moved to a results screen. You
should have the words \"Table Created\" listed in the **Feedback**
column of the report. Return the SQL Scripts page by selecting **SQL
Scripts**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image13.png){width="6.266666666666667in"
height="3.5166666666666666in"}

Populating the Data
-------------------

The *apex_data_parser* is a PL/SQL package which provides an easy
interface to parse files from various file formats, including
comma-separated-values (.csv). It was introduced in APEX 19.1 and some
of the features are summarised in this blog post
<https://blogs.oracle.com/apex/super-easy-csv-xlsx-json-or-xml-parsing-about-the-apex_data_parser-package>.
The parser is implemented as a table function - so the developer
accesses parser results like a table. Therefore, the parser can utilize
INSERT \... SELECT statements to insert rows directly into a table from
the specified file.

The *apex_web_service.make_rest_request\_*b is a PL/SQL function which
invokes a RESTful style Web service and returns the results in a BLOB.
Utilizing this function within apex_data_parser will allow you to load
data using a REST API call to a website, directly into your table.

Here is a sample usage of the package, you will run a SQL script
containing similar statements to populate your database.

> insert into \"USAGE\".\"OCI_COST_TAG_KEYS\"
>
> (TENANT_NAME,TAG_KEY)
>
> select col001, col002
>
> from table
>
> ( apex_data_parser.parse
>
> ( p_content=\>
> apex_web_service.make_rest_request_b(\'https://raw.githubusercontent.com/melanieosc/APEX_Dataset/master/oci_cost_tag_keys.csv\',
> \'GET\')
>
> , p_file_name=\> \'oci_cost_tag_keys.csv\', p_skip_rows=\> 1 )
>
> );

This uses a REST request to GET the table data in csv format from the
github website, parses the csv using apex_data_parser and then insert
the data into your destination table.

Navigate to the SQL Scripts page if you are not already there by
selecting **SQL Workshop** and then **SQL Scripts.**

Select **Upload.** In the *Upload Script* dialog select the **Browse**
button to select \'lab600_insert_usage.sql\' from the lab scripts zip
file.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image14.png){width="6.258333333333334in"
height="3.9166666666666665in"}

You can examine the contents of the script by using the **Edit**
(pencil) icon on the same line as your uploaded script. The script will
use the *apex_data_parser* to populate the tables with sample data.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image15.png){width="6.258333333333334in"
height="2.6333333333333333in"}

Select to **Run** your script either from the *Edit* page or the *SQL
Scripts* page.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image16.png){width="6.258333333333334in"
height="3.566666666666667in"}

On the *Run Script* confirmation page, select **Run Now.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image17.png){width="6.266666666666667in" height="3.925in"}

The script will then be run, and it will not progress to the next screen
until it completes. You can see that the script has been submitted by
the page loading icon on the tab of your browser and the message
\"Waiting for \<your apex instance\>\" . An example using Chrome is
below.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image18.png){width="6.266666666666667in" height="2.8in"}

The expected run time of the script is approximately 5 minutes. When the
script completes you will be moved to a results screen. You should have
the row counts of the inserted rows listed in the **Feedback** column of
the report. Return the SQL Scripts page by selecting **SQL Scripts**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image19.png){width="6.258333333333334in"
height="3.0166666666666666in"}


----------------------