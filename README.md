# Oracle APEX Reporting and Faceted Search

## Lab Introduction

![Autonomous](./images/apex.png)

In this hands-on lab, you will get first-hand experience of using Oracle Cloud, **Oracle Autonomous Database (ADB)** and **Oracle APEX **.

**Oracle Autonomous Database (ADB)** delivers a self-driving, self-securing,self-repairing database service that can instantly scale to meet demands. The service supports two workload types:

-   **Oracle Autonomous Data Warehouse (ADW)** provides an autonomous warehousing environment, associated with fast query performance.

-   **Oracle Autonomous Transaction Processing (ATP)** provides an autonomous online transaction processing and mixed workload environment.

For the purpose of this lab, we will use **ATP** so all the steps will be related to this database service.

In this lab you will enhance an existing application to use the APEX reporting functionality to visually report on the resource usage within an Oracle Cloud Tenancy. You will also create a faceted search report on one of the tables within this application.

The \'OCI Usage and Cost Report\' application provides a visual representation of usage in your tenancy. As your tenancy is newly provisioned it will not have any full days of usage recorded. In this lab you will use a sample data set containing multiple days of data, sized to keep the data set within the storage size of an Always Free Autonomous Database. You will load this data using the REST API.

If in the future you want to generate the input data on your own tenancy please see this project on github, which talks you through the extraction process, and how to collect the data.
<https://github.com/oracle/oci-python-sdk/blob/master/examples/usage_reports_to_adw/step_by_step_installation.md>

**Objectives**

-   Import data into your database using the REST API

-   Use APEX reporting functionality to enhance visualise the data

-   Add Faceted Search functionality to your application.

To run the lab, you will need an Oracle Free Tier Account, with a provisioned ATP instance  This pre-requisite guide will take you step-by-step through how to get the account and set the instance up, to be ready to start the lab.

## Table of Contents

[Get Started - Signing Up for your Oracle Cloud Free Tier Account](/Lab0/README.md)
- Create Your Free Trial Account
- Sign in to Your Account

[Lab 1 - Provisioning your Autonomous Database instance](/Lab1/README.md)

- Create Your Autonomous Database Instance
- Quick Walk-through

[Lab 2 - Creating your APEX Workspace](/Lab200/README.md)

- Create your APEX Workspace
- Create an end-user account

[Lab 3 - Use REST to load data into your application](/Lab300/README.md)

- Use SQL Workshop to create destination tables
- Use REST to load data into your application.

[Lab 4 - Add a Chart to your application](/Lab400/README.md)

- Import the Usage application
- Add a simple chart to the application

[Lab 5 - Enhance your chart](/Lab500/README.md)

- Add a list of values to your chart

[Lab 6 - Use Faceted Search](/Lab600/README.md)

- Create a Faceted Search report on your application.
- Explore how to change the faceted search

[Next Steps](/Next/README.md)
- Upgrade Instances to Paid
- Want to Learn More?
- Troubleshooting

## Pre-requisites

There are no pre-requisite steps for this lab. All the necessary steps are documented in the lab. 

## Let's Get Started

At this point, you are ready to start learning!

---

Sign Up for your Oracle Cloud Free Tier to [**Get Started!**](./Lab000/README.md)
