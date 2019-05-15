---
title:  Updating the Data Catalog
summary: "(Dev/QA Persona) Changes to Production should be represented in lower environments"
series: "Act I"
weight: 8.1
last_updated: October 21, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_8.1.html
folder: tdc
toc: false
---

In an actual deployment, fresh data - such as masked copies of Production - would be made available automatically on a scheduled basis, ex. every night after the close of business. But, for the purposes of this demo, it makes more sense to allow the student of the workshop to manually initiate the job.

In this scene, we are going to execute the `Data Pipeline` job in Jenkins. This job gets the latest data from Production and prepares it for consumption for our development and testing requirements.

Here is the sequence of automation:

1. Jenkins executes a Golang binary (`snap_prod_refresh_mm`) that sends REST calls to the DDDP to:
   1. Snapshot the production database
   2. Refresh the `Patients Masked Master` data pod with the latest data from production and mask it.
2. Jenkins executes a REST request to Delphix to refresh of the `Patients Masked Master` from the latest production snapshot
3. Delphix refreshes the `Patients Masked Master` with a masked copy of the production database.
4. In parallel X 6
   1. Jenkins executes a subsetting job (simulated)
   2. Jenkins executes a REST request to Delphix to bookmark the `Patients Masked Master` and to make that bookmark available to Delphix Self Service.

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Click on the Jenkins Tab
3. Execute the `Data Pipeline` job. This job sequence can take 12-15 minutes to complete.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_1.png" %}
4. Click the `Data Pipeline` job to watch the sequence execute.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_2.png" %}
5. When the job is complete, you should have all green checks across the screen.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_3.png" %}

{% include links.html %}