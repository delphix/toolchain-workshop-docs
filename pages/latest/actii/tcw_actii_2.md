---
title:  Automated Testing
summary: "(QA Persona) Testing our code"
series: "Act II"
weight: 2
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_2.html
folder: latest
toc: false
---

Once we pushed our code upstream, that triggered the next phase in the build sequence which includes building and testing in the QA environment.
The automated testing sequence takes about 5 to 6 minutes to complete. We will make use of the majority of that time in the next scene.

In this scene, we are going view the running automation sequence in Jenkins and view the jobs running against your QA data pod

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346610254" %}
1. Bring Chrome to the foreground
2. Activate the Jenkins tab
3. Click on `Patients Pipeline`
   {% include custom/image_popout.html file="actii/automated_testing_1.png" %}
4. Click on the running job for the `master` branch
   {% include custom/image_popout.html file="actii/automated_testing_2.png" %}
5. This is the current build which will include some automated testing.
   {% include custom/image_popout.html file="actii/automated_testing_3.png" %}
6. Open the Dynamic Data Platform bookmark in a new tab
7. Login as the qa user. The password is delphix
   {% include custom/image_popout.html file="actii/automated_testing_4.png" %}
8. If this is your first login, you will be prompted to change the password. Set the password to delphix
   {% include custom/image_popout.html file="actii/automated_testing_5.png" %}
9. You should now be in the Data Operations screen. Click on `Test`
   {% include custom/image_popout.html file="actii/automated_testing_6.png" %}
10. You should now see the timeline for `Test` data pod. In a couple minutes, or less, you should see the screen 
change and a status bar indicating the progress of “Operating on Container.” This change shows that your data pod 
is being refreshed with the latest data from production.
    {% include custom/image_popout.html file="actii/automated_testing_7.png" %}
11. When the refresh is complete, the self-service controls will change from gray to red and look like the below.
    {% include custom/image_popout.html file="actii/automated_testing_8.png" %}

{% include links.html %}