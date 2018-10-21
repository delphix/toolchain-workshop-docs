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

In this scene, we are going to execute the `Nightly Test Data Catalog Build` job in Jenkins. This job gets the latest data from Production and prepares it for consumption for our development and testing requirements.

Here is the sequence of automation:

1. Jenkins executes a REST request to Delphix to snapshot the production database.
2. Jenkins executes a REST request to Delphix to refresh of the `Employee Test Data Catalog Master` from the latest production snapshot
3. Delphix refreshes the `Employee Test Data Catalog Master` with a masked copy of the production database.
4. Jenkins executes a subsetting job (via [Jailer](http://jailer.sourceforge.net/){:target="_blank"})
5. Jenkins executes a REST request to Delphix to bookmark the `Employee Test Data Catalog Master` and to make that bookmark available to Delphix Self Service.
6. Repeat steps 4 and 5 until all the subsetting jobs are complete.

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Click on the Jenkins Tab
3. Execute the `Nightly Test Data Catalog Build`. This job sequence can take 12-15 minutes to complete.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_1.png" %}
4. Click the `Test Data Pipeline` tab to watch the sequence of jobs execute.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_2.png" %}
5. While the job is progressing, move to the next scene.

{% include links.html %}