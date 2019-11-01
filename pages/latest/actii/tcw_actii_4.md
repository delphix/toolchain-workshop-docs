---
title:  Oh Snap! A bug!
summary: "(QA Persona) A software defect is found in our code"
series: "Act II"
weight: 4
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_4.html
folder: latest
toc: false
---

Our Job completed, but the build is unstable (orange with an `!`).
It appears that our tests have failed in the `Automated Testing` phase.

In this scene, we will first take a look at the test artifacts in Jenkins to ascertain what happened.
Next, we will login to Bugzilla and validate the bug report against what we see in QA.
Finally, we will look at the corresponding bookmark on our `Test` data pod in the Delphix DDP.

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346610470" %}
1. Activate the Jenkins tab
2. Click on the `Tests` button (in purple rectangle below)
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_1.png" %}
3. We can see from this screen that the `Add Duplicate User` test failed (a duplicate user was allowed)
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_2.png" %}
4. The test failure created a bug. Let's check that out.
5. Activate the Bugzilla tab.
6. Click Browse
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_3.png" %}
7. Click TestComponent
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_4.png" %}
8. Click on the most recent job. It is #3 in the example below.
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_5.png" %}
9. Scrolling to the bottom of the bug, we can see the test results and reported failure.
   {% include custom/image_popout.html file="actii/oh_snap_a_bug_6.png" %}
10. Let’s reconcile what we see in the bug report and test results against the QA environment.
Click the `Patients QA` bookmark.
11. Log in to the QA instance of the Patients application using [credentials](credentials.html){:target="_blank"}  
    {% include custom/image_popout.html file="actii/oh_snap_a_bug_7.png" %}
12. If you logged in successfully, you should see a list of patients in your browser  
    {% include custom/image_popout.html file="actii/oh_snap_a_bug_8.png" %}
13. The test report indicated that it failed because it was able to add a duplicate user. Click the `Users` button (purple rectangle below)
14. Ack! We do have to users with the same username `mcred`. This could cause significant issues as our product rollout expands.
    {% include custom/image_popout.html file="actii/oh_snap_a_bug_9.png" %}
15. Activate the Dynamic Data Platform tab.
16. Login as qa, if your login has timed out.
    {% include custom/image_popout.html file="actii/automated_testing_4.png" %}
17. Click on `Test` 
    {% include custom/image_popout.html file="actii/automated_testing_6.png" %}
18. Click on the most recent bookmark icon.
Does it match the job number from Jenkins?
Does the bug tag on the bookmark match the defect in bugzilla?
    {% include custom/image_popout.html file="actii/oh_snap_a_bug_10.png" %}
19. The bookmark has been shared back with the developer. Let’s make the dev clean up their own mess.

{% include links.html %}