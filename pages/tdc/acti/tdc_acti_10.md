---
title:  Automated Testing
summary: "(QA Persona) Testing our code"
series: "Act I"
weight: 10
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_10.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Once we pushed our code upstream, that triggered an automation testing sequence. The automated testing sequence takes about 5 to 6 minutes to complete. We will make use of the majority of that time in the next scene.

In this scene, we are going view the running automation sequence in Jenkins and view the jobs running against your QA data pod

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Activate the Jenkins tab
3. View the running jobs in the Build Executor Status box
   {% include custom/image_popout.html file="acti/automated_testing_1.png" %}
4. Activate the Delphix Engine tab
5. Login as the qa user. The password is delphix
   {% include custom/image_popout.html file="acti/automated_testing_2.png" %}
6. If this is your first login, you will be prompted to change the password. Set the password to delphix
   {% include custom/image_popout.html file="acti/automated_testing_3.png" %}
7. You should now be in the Data Operations screen. Click on `QA Data Pod` 
   {% include custom/image_popout.html file="acti/automated_testing_4.png" %}
8. You should now see the timeline for `QA Data Pod` . In a couple minutes, or less, you should see the screen change and a status bar indicating the progress of “Operating on Container.” This change shows that your data pod is being refreshed with the latest data from production.
   {% include custom/image_popout.html file="acti/automated_testing_5.png" %}

{% include links.html %}