# Lab 100 - Provisioning your Autonomous Database instance

![Autonomous Databases](/images/adb_banner2.png)

This lab walks you through the steps to get started using the **Oracle Autonomous Data Warehouse Database (ADW)**. You will provision a new database in just few minutes.

Oracle Autonomous Databases have the following characteristics:

**Self-driving**
Automates database provisioning, tuning, and scaling.

Provisions highly available databases, configures and tunes for specific workloads, and scales compute resources when needed, all done automatically.

**Self-securing**
Automates data protection and security.

Protect sensitive and regulated data automatically, patch your database for security vulnerabilities, and prevent unauthorized access—all with Oracle Autonomous Database.

**Self-repairing**
Automates failure detection, failover, and repair.

Detect and protect from system failures and user errors automatically and provide failover to standby databases with zero data loss.

## Create a new Autonomous Data Warehouse Datatabase

Click on the hamburger **MENU** link at the upper left corner of the page.

This will produce a drop-down menu, where you should select **Autonomous Data Warehouse.**

![Oracle Cloud Web Console](/images/lab100_1.png)

This will take you to the management console page.



[You can learn more about compartments in this link](https://docs.cloud.oracle.com/en-us/iaas/Content/Identity/Tasks/managingcompartments.htm).

To create a new instance, click the blue **Create Autonomous Database** button.

![Create ADB](/images/lab100_2.png)

Enter the required information and click the **Create Autonomous Database** button at the bottom of the form. For the purposes of this lab, use the information below:

>**Compartment:** Verify that a compartment (*\<tenancy_name\>*) is selected.

By default, any OCI tenancy has a default ***root*** compartment, named after the tenancy itself. The tenancy administrator (default root compartment administrator) is any user who is a member of the default Administrators group. For the lab purpose, you can use ***root***.

> **Display Name:** Enter the display name for your ADW Instance. For this demo purpose, I have called my database **ADW_OAC**.
>
> **Database Name:** Enter any database name you choose that fits the requirements for ADW. The database name must consist of letters and numbers only, starting with a letter. The maximum length is 14 characters. You can leave the name provided. That field is not a mandatory one.
>
> **Workload Type:** Autonomous Data Warehouse
>
> **Deployment Type:** Shared Infrastructure
>
> **Always Free:** On

You can select Always Free configuration to start enjoying your Free Autonomous Database. You will have see the Always Free logo next to the name of your database:

![Always Free Logo](/images/always_free_logo.png)

[We have selected 'Always Free Tier On'. To learn more about this option check the following link](https://www.oracle.com/uk/cloud/free/#always-free).

![ADB Creation Details](/images/lab100_3.png)

> **Choose Database version:** 19c
>
> **CPU Count:** 1
>
> **Storage Capacity (TB):** 0.02
>
> **CPU Count and Storage Capacity (TB)** are defined by default for the Always Free Tier.
>
> **Auto scaling:** Off

![ADB Creation Storage](/images/lab100_4.png)

Under **Create administration credentials** section:

> **Administrator Password:** Enter any password you wish to use noting the specific requirements imposed by ADW. A suggested password for this lab is ADWwelcome-1234.
>
> ***Reminder:** Note your password in a safe location as this cannot be easily reset.*

Under **Choose network access** section:

> Select **'Allow secure access from everywhere'**: *On*
>
> Select **Configure access control rules:** *Off*

![ADB Creation Password](/images/lab100_5.png)

Under **Choose a license type** section, choose **License Type: Licence Included*.

When you have completed the required fields, scroll down and click on the blue **Create Autonomous Database** button at the bottom of the form:

![ADB Creation](/images/lab100_6.png)

The Autonomous Database **Details** page will show information about your new instance. You should notice the various menu buttons that help you manage your new instance -- because the instance is currently being provisioned all the management buttons are greyed out.

![ADB Creation Provisioning](/images/lab100_7.png)

A summary of your instance status is shown in the large box on the left. In this example, the colour is amber and the status is **Provisioning.**

![ADB Creation Provisioning Amber](/images/lab100_8.png)

After a short while, the status will change to **Available** and the "ADW" box will change colour to green:

![ADB Creation Provisioning Green](/images/lab100_9.png)

Once the Lifecycle Status is **Available**, additional summary information about your instance is populated, including workload type and other details.

The provisioning process should take **under 5 minutes**.

After having the Autonomous Database instance **created** and **available**, you can get a message window asking you to upgrade from 18c to 19c if you have selected 18c as a database version during the provisioning. You can **upgrade** the database release if you wish after the hands-on session, otherwise the upgrade process can take a **few minutes** and you can miss a few exercises during the session.

This page is known as the **Autonomous Database Details Page**. It provides you with status information about your database, and its configuration. Get **familiar** with the buttons and tabs on this page.


![ADB Creation Details](/images/lab100_adw_ready.png)

Remember: You will have visible the Always Free logo next to the name of your database:

![Always Free Logo](/images/always_free_logo.png)

## It works

You have just created an Autonomous Database with the latest features of Oracle Databases.

## Congratulations, you are ready for the next Lab!

---

[**<<<<< Go to Get Started**](../Lab0/README.md) | [Home](../README.md) | [**Go to Lab 2 >>>>>**](../Lab2/README.md)
