Improve the chart by adding a List of Values
--------------------------------------------

The chart currently has several limitations compared to the more
detailed charts on previous pages. Currently the chart shows the number
of rows generated for all tenancies who have data in the database.

A different approach would be to have a select list for the list of
tenancies, and then modifying the chart to use this page item to allow
you to review the data for all tenancies, and to contrast data for
individual tenancies.

You will use a Dynamic Action to refresh the chart whenever the tenancy
in the select list is changed. A Dynamic Action defines client-side
interactivity and based on a specific action such as a change in the
select list, it will perform specified functions, in this case, refresh
the chart region.

Return to App Builder by selecting **Edit Page 6** (your number may
vary) in the Developer Toolbar at the bottom of the screen.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image33.png){width="6.258333333333334in"
height="0.36666666666666664in"}

In the Gallery (central pane, below Layout), click the **Items** tab.

Click and hold on **Select List**. Drag the item up into the Layout pane
until it is in the *Items* section within *Data Uploaded* region. Once
the Items section expands and the dark yellow box appears, release the
mouse

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image34.png){width="6.25in" height="2.5in"}

In the *Property* pane on the right-hand side change the following:

*Identification*

**Name:** P6_TENANT

*Layout*

**Column Span:** 2 (this limits the size of the drop down box).

*List of Values*

> **Type:** SQL Query
>
> **SQL Query:** Use the following query, available as lab600-lov.sql in
> your scripts zip file.

select distinct tenant_name o, tenant_name r from usage.oci_usage order
by 1 ;

> **Display Extra Values :** Off
>
> **Display Null Values:** Off

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image35.png){width="2.8in" height="2.425in"}

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image36.png){width="2.1in" height="2.533333333333333in"}

In the *Rendering* pane on the left-hand side right click on P6_TENANT
and select **Create Dynamic Action.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image37.png){width="2.575in" height="2.7466666666666666in"}

In the right-hand *Property* editor set the following:

*Identification*

> **Name:** Set Tenancy

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image38.png){width="2.441666666666667in" height="1.65in"}

In the *Rendering* pane on the left-hand side, under P6_TENANT, *Dynamic
Actions, Set Tenancy, True* select **Show.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image39.png){width="2.8333333333333335in"
height="1.5833333333333333in"}

In the right-hand *Property* editor set the following:

*Identification*

> **Action:** Refresh

*Affected Elements*

> **Selection Type:** Region
>
> **Region:** Data Uploaded (your chart)

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image40.png){width="2.183333333333333in" height="3.075in"}

Now you will update the Chart so that it uses the new Select List value.

In the *Rendering* pane on the left-hand side, under *Content Body*,
select your **Data Uploaded** Chart.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image41.png){width="2.8333333333333335in" height="2.5in"}

In the right-hand *Property* editor set the following:

*Source*

> **Page Items to Submit:** P6_TENANT

Next you will add a new series to your graph.

In the *Rendering* pane on the left-hand side, right click *Series*, and
select **Create Series**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image42.png){width="2.7333333333333334in"
height="2.308333333333333in"}

In the *Property* pane on the right-hand side change the following:

*Identification*

**Name:** Rows uploaded per tenancy

*Source*

> **Location:** Local Database
>
> **Type:** SQL Query
>
> **SQL Query :** (This is available as lab600-graph2.sql)

Select trunc(us.USAGE_INTERVAL_START) FILE_DATE,

sum(us.num_rows) as us_num_rows

from usage.oci_usage_stats us

where us.tenant_name= :P6_TENANT group by

trunc(us.USAGE_INTERVAL_START) order by file_date;

> *Column Mapping*
>
> **Label:** FILE_DATE
>
> **Value:** US_NUM_ROWS

You can now select a tenancy and the graph will refresh with the number
of rows uploaded by that tenancy.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image43.png){width="6.266666666666667in"
height="2.3666666666666667in"}