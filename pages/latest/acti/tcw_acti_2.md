---
title:  Add some data to Production
summary: "(Dev Persona) Manually inspecting our build for success"
series: "Act I"
weight: 2
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_2.html
folder: latest
toc: false
---

Data pods are usually copies of active sources, like production applications. That means the data in your source applications continue to change after you have created your data pods. Data pods in the Delphix Dynamic Data Platform (DDP) are fully autonomous and read/write capable. This translates to two very important benefits:

* Changes to your data sources do not impact your data pods
* Changes to data pods do not impact other data pods or data sources, like production

In this scene, we are going to add a new patient to our production instance. In a later scene, we will leverage this data in the non-production instances.

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346602281" %}
1. Bring Chrome to the foreground
2. Click on the `Patients PROD` button on the bookmark bar.
3. Log in to the production instance of the Patients application using [credentials](credentials.html){:target="_blank"}  
    {% include custom/image_popout.html file="acti/the_app_1.png" %}
4. If you logged in successfully, you should see a list of patients in your browser  
    {% include custom/image_popout.html file="acti/the_app_2.png" %}
5. Click the + icon to open the `Add Patient` form.
   {% include custom/image_popout.html file="acti/add_some_data_to_production_1.png" %}
6. Fill out the form with fictitious information. Give it a silly city name. We will use this value later. Then click `Save`.
   {% include warning.html content="Though these labs are isolated, they are not secure. Do not enter real information." %}
   {% include custom/image_popout.html file="acti/add_some_data_to_production_2.png" %}
7. Enter the silly city name from the previous step into the search field. Your patient record should show in the search results below. 
   {% include custom/image_popout.html file="acti/add_some_data_to_production_3.png" %}

{% include links.html %}