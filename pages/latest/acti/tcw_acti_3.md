---
title:  Updating the Data Repository
summary: "(Dev/QA Persona) Changes to Production should be represented in lower environments"
series: "Act I"
weight: 3
last_updated: October 21, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_3.html
folder: latest
toc: false
---

In an actual deployment, fresh data - such as masked copies of Production - would be made available automatically on a scheduled basis, ex. every night after the close of business.
But, for the purposes of this workshop, it makes more sense to allow the student of the workshop to manually initiate the job.

In this scene, we are going to execute the `Data Pipeline` job in Jenkins.
This job gets the latest data from Production and prepares it for consumption for our development and testing requirements.

We'll have time to discuss what is happening in the next scene.

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346609588" %}
1. Bring Chrome to the foreground
2. Click on the Jenkins bookmark
3. Login to the Jenkins instance ([credentials](credentials.html))
   {% include custom/image_popout.html file="acti/were_building_again_3.png" %}
4. Execute the `Data Pipeline` job. This job sequence can take 12-15 minutes to complete.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_1.png" %}
5. Click the `Data Pipeline` job to watch the sequence execute.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_2.png" %}
6. When the job is complete, you should have all green checks across the screen.
But, let's go to the next scene while the job is running.
   {% include custom/image_popout.html file="acti/updating_the_data_catalog_3.png" %}

{% include links.html %}