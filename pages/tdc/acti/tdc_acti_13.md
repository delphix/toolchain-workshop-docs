---
title:  Ready to Test Again
summary: "(QA Persona) With Delphix, data never ties up test environments"
series: "Act I"
weight: 13
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_13.html
folder: tdc
toc: false
---

In a normal testing scenario, a failed test might mean that you would have to tie up the QA environment until a developer can login to diagnose, triage, and remediate. With the Delphix DDP, data is never actually deleted or destroyed, except by policy. This means we can free up our environments for further testing, development, etc., as we can recall the previous data state into our data pods at any given time.

In this scene, we are going to refresh our `QA Data Pod` with data from production, just to demonstrate the features stated above..

### YOUR STEPS FOR THIS SCENE:

1. Activate the Delphix Engine tab
2. Login as qa, if your login has timed out.
   {% include custom/image_popout.html file="acti/ready_to_test_again_1.png" %}
3. Click on `QA Data Pod`, if you had to login again
   {% include custom/image_popout.html file="acti/ready_to_test_again_2.png" %}
4. Click the Refresh icon
   {% include custom/image_popout.html file="acti/ready_to_test_again_3.png" %}
5. Click Refresh in the dialog box to confirm
   {% include custom/image_popout.html file="acti/ready_to_test_again_4.png" %}
6. Monitor your refresh progress
   {% include custom/image_popout.html file="acti/ready_to_test_again_5.png" %}
7. When the refresh is complete, activate the QA Instance tab
8. Click the `QA Instance` bookmark to refresh the page
   {% include custom/image_popout.html file="acti/ready_to_test_again_6.png" %}
9. You should now see QA populated with the most recent data from production, including your employee record
    * Your record will now be masked since there is a masking job associated with your QA VDB.
   {% include custom/image_popout.html file="acti/ready_to_test_again_7.png" %}

{% include links.html %}