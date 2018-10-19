---
title:  Oh Snap! A bug!
summary: "(QA Persona) A software defect is found in our code"
series: "Act I"
weight: 12
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_12.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

The `Automated Test` job has a red dot next to it now, which means the testing failed.

In this scene, we will first take a look in Bugzilla to ascertain what happened. Next, we will validate the bug report against what we see in QA. Finally, we will look at the corresponding bookmark on our QA data pod in the Delphix DDP.

### YOUR STEPS FOR THIS SCENE:

1. Activate the Bugzilla tab.
2. Click Browse
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_1.png" %}
3. Click TestComponent
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_2.png" %}
4. Click on the most recent job. It is #3 in the example below. The job name in the summary should match the Automated Testing job number you captured from the last scene.
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_3.png" %}
5. View the different objects in the bug. Can you figure out what went wrong?
6. Click after_test.png. Egads! All 1M employee records have been deleted! That’s not good.
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_4.png" %}
7. Let’s reconcile what we see in the screenshot against the QA environment. Activate the QA Instance tab
8. Click the QA Instance bookmark to refresh the page
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_5.png" %}
9. Ack!
   {% include custom/image_popout.html file="acti/oh_snap_a_bug_6.png" %}
10. Activate the Delphix Engine tab.
11. Login as qa, if your login has timed out.
    {% include custom/image_popout.html file="acti/oh_snap_a_bug_7.png" %}
12. Click on `QA Data Pod` 
    {% include custom/image_popout.html file="acti/oh_snap_a_bug_8.png" %}
13. Click on the most recent bookmark icon. Does it match the job number from the last scene? Does the bug tag on the bookmark match the defect in bugzilla?
14. The bookmark has been shared back with the developer. Let’s make the dev clean up their own mess.
    {% include custom/image_popout.html file="acti/oh_snap_a_bug_9.png" %}
{% include links.html %}