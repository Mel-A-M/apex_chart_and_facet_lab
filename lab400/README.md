Import the Application
----------------------

As part of the workshop preparation you downloaded a zip file containing
the lab script files. If you have not done so already, unzip this file
so you can access the files it contains.

At the top of the Workspace home page, click the **App Builder** menu
and select **Import**.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image20.png){width="6.266666666666667in"
height="1.5333333333333334in"}

Use the **Choose File** button to select \'lab600-apex-app.sql\' from
the lab scripts zip file.

Select **Next**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image21.png){width="6.266666666666667in"
height="4.033333333333333in"}

On the *\"File Import Confirmation\"* screen do not make any changes and
select **Next**.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image22.png){width="3.45207895888014in"
height="2.3916666666666666in"}

On the *\"Install Database Application\"* screen no changes are
required, select **Install Application**.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image23.png){width="6.258333333333334in"
height="4.383333333333334in"}

On the *\"Install Application -- Supporting Objects\"* screen no changes
are required, select **Next.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image24.png){width="6.25in" height="4.5in"}

On the *\"Install Application -- Confirmation\"* select **Install**.

On the final screen of the wizard, select **Edit Application**.

Review the APEX Application
---------------------------

On the *App Builder* page for your new application, select **Run
Application**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image25.png){width="6.258333333333334in" height="3.2in"}

This will open the Application in a new browser tab.

If prompted, login to the application as **usageaudit** with the
password you set for the user.

Examine the information provided by this application by selecting the
*Current State* and selecting the tenancy \'apexdemo\'. Experiment with
selecting different dates, different compartments.

In this demo data set you only have a fixed 13 full days of data
available, downloaded from another tenancy.

If you like this application, please follow the installation
instructions that includes the process for configuring the data
collection agent and using it to collect data on your tenancies.

<https://github.com/oracle/oci-python-sdk/blob/master/examples/usage_reports_to_adw/step_by_step_installation.md>

Select *Data Statistics*. This page gives some information about the
data in the database. Your end user has asked you to enhance this page
to add some information about the number of rows loaded into the
database per day.

Return to the *App Builder* page for your new application, select the
**Data Statistics** page to open it for editing.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image26.png){width="6.25in" height="5.083333333333333in"}

Create a new region for your Chart by selecting **Chart** in
centre-bottom of your page and dragging it onto the layout region. This
new chart should be placed below the existing Usage Statistics tables,
but above the Footer.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image27.png){width="6.266666666666667in" height="4.25in"}

On the right hand side change the properties of your new Chart as
follows:

***Identification***

**Title**: Data Uploaded

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image28.png){width="2.5416666666666665in"
height="2.0416666666666665in"}

In the *Rendering* pane on the left-hand side, expand **Data Uploaded**
and select **Attributes**

Set the chart type to Bar.

*Chart*

> **Type:** Bar

*Appearance*

> **Template:** Standard
>
> **Template Options:**
>
> **Accent:** Accent 15

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image29.png){width="6.258333333333334in"
height="4.158333333333333in"}

In the *Rendering* pane on the left-hand side, expand **Series** and
select **New**

In the *Property* pane on the right-hand side change the following:

*Identification*

**Name:** OCI Usage Stats Rows

*Source*

> **Location:** Local Database
>
> **Type:** SQL Query
>
> **SQL Query :** (This is available as lab600-graph1.sql)

Select trunc(us.USAGE_INTERVAL_START) FILE_DATE,

sum(us.num_rows) as us_num_rows

from usage.oci_usage_stats us group by

trunc(us.USAGE_INTERVAL_START) order by file_date;

> *Column Mapping*
>
> **Label:** FILE_DATE
>
> **Value:** US_NUM_ROWS
>
> ![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image30.png){width="6.25in" height="4.166666666666667in"}

In the *Rendering* pane on the left-hand side, expand **Axes** and
select **X.**

In the *Property* pane on the right-hand side change the following:

*Identification*

**Title:** Date Captured

In the *Rendering* pane on the left-hand side, expand **Axes** and
select **Y.**

In the *Property* pane on the right-hand side change the following:

*Identification*

**Title:** Number of Rows.

*Value*

> **Format:** Decimal

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image31.png){width="5.183333333333334in"
height="6.566666666666666in"}

Check your changes to the chart by selecting **Save** and then **Run.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image32.png){width="6.25in" height="2.4166666666666665in"}


--------------------------------------------

