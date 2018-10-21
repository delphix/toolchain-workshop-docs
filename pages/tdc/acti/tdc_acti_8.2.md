---
title:  Viewing the Data Catalog
summary: "(Dev/QA Persona) What does a self-service data catalog look like?"
series: "Act I"
weight: 8.2
last_updated: October 21, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_8.2.html
folder: tdc
toc: false
---

Self Service in the Delphix DDP provides software builders (Dev, Test, etc) with the ability to simply find, select, and provision the data they need, when they need it. The Delphix DDP also provides many other powerful self service controls, some of which will be covered in later scenes. 

In this scene, we will login to the DDP self service and watch the population of the data catalog as the job from the previous scene is completed.

### YOUR STEPS FOR THIS SCENE:

1. Bring the Delphix Engine tab to the foreground
2. Logout, if you are currently logged in.
3. Login as the dev user. The password is delphix
   {% include custom/image_popout.html file="actii/bugs_happen_2.png" %}
4. If this is your first login, you will be prompted to change the password. Set the password to delphix
   {% include custom/image_popout.html file="actii/bugs_happen_3.png" %}
5. You should now be in the Data Operations screen. Click on Dev Data Pod
   {% include custom/image_popout.html file="actii/bugs_happen_4.png" %}
6. You should now see the timeline for Dev Data Pod. Click on the Bookmarks button.
   {% include custom/image_popout.html file="actii/bugs_happen_5.png" %}
7. Your bookmarks section will be empty, because the dev user has not created any bookmarks yet for their data pod. Click Available.
   {% include custom/image_popout.html file="actii/bugs_happen_6.png" %}
8. You should now see bookmarks that have been shared with you via the `Nightly Test Data Catalog Build`.
   {% include custom/image_popout.html file="acti/viewing_the_data_catalog_1.png" %}
9. Bookmarks are searchable. Search for the bookmark that corresponds to today's Data Catalog items currently being generated. In the example below, today is October 21, 2018.
   {% include custom/image_popout.html file="acti/viewing_the_data_catalog_2.png" %}
10. You might not see anything at the moment, but as the `Nightly Test Data Catalog Build` progresses, you will see new bookmarks become available.
{% include links.html %}