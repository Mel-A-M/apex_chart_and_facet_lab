Prepare the APEX Workspace
==========================

For this lab you will create a new workspace.

Login to APEX via the administration console as the ADMIN user

Select **Manage Workspaces** and then **Create Workspace**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image1.png){width="4.45in" height="2.408333333333333in"}

Use the following information to complete the form:

> **Database User:** USAGE
>
> **Password**: APEXwelcome-1234
>
> **Workspace Name:** USAGE

Then select **Create Workspace.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image2.png){width="6.25in" height="4.666666666666667in"}

Logout as the Admin user by selecting the icon in the top right hand
side of the screen and selecting Sign Out.

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image3.png){width="3.691666666666667in"
height="3.4166666666666665in"}

Preparing the Environment
-------------------------

Open the APEX login screen. If you do not have a direct link or an open
browser window to this page you can access it by returning to the
Service Console of your Autonomous Database, select Development, and
then Apex.

Login to APEX using:

> **Workspace name**: USAGE
>
> **User name**: USAGE
>
> **Password:** APEXWelcome-1234
>
> ![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image4.png){width="4.408333333333333in"
> height="5.458333333333333in"}

### 

### Create an End User Account

Your application end user will login with their own account, so they do
not have direct access to the underlying database or APEX application.

On the top right hand of the page there is an Administration button.
Select this and choose **Manage Users and Groups.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image5.png){width="2.975in" height="3.683333333333333in"}

Select **Create User.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image6.png){width="6.233333333333333in"
height="1.9083333333333334in"}

Complete the form with the following information:

> **Username:** usageaudit
>
> **Email:** \<your email address\>
>
> **User is a workspace administrator:** Set to No
>
> **User is a developer:** Set to No
>
> **Password:** APEXwelcome-1234
>
> **Require Change of Password on First Use:** No

Select **Create User.**

![](C:/Users/MEASHWOR/Documents/ADB-APEX/lab600/media/image7.png){width="6.258333333333334in"
height="5.433333333333334in"}

[**<< Go to Lab 1**](../lab100/README.md) | [Home](../README.md) | [**Go to Lab 3>>>>>**](../Lab300/README.md)