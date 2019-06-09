---
title:  Ready to Test Again
summary: "(QA Persona) With Delphix, data never ties up test environments"
series: "Act II"
weight: 5
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_5.html
folder: tcw
toc: false
---

In a normal testing scenario, a failed test might mean that you would have to tie up the QA environment until a
developer can login to diagnose, triage, and remediate. With the Delphix DDP, data is never actually deleted or
destroyed, except by policy. This means we can free up our environments for further testing, development, etc.,
as we can recall the previous data state into our data pods at any given time.

In this scene, we are going to refresh the data in our `Test` data pod and manually redeploy the Application to a stable state,
just to demonstrate the features stated above...

### YOUR STEPS FOR THIS SCENE:

1. Activate the Delphix Engine tab
2. Login as qa, if your login has timed out.
    {% include custom/image_popout.html file="actii/automated_testing_4.png" %}
3. Click on `Test` 
    {% include custom/image_popout.html file="actii/automated_testing_6.png" %}
4. Click the REFRESH icon (purple rectangle)
   {% include custom/image_popout.html file="actii/ready_to_test_again_1.png" %}
5. Click `REFRESH` in the dialog box to confirm (purple rectangle)
   {% include custom/image_popout.html file="actii/ready_to_test_again_2.png" %}
6. Monitor your refresh progress
   {% include custom/image_popout.html file="actii/ready_to_test_again_3.png" %}
7. Once the refresh is complete, we need to redeploy the QA app from a stable state.
This takes about 60 seconds.
8. Open a terminal window and type `deploy_qa HEAD~3`
   {% include custom/image_popout.html file="actii/ready_to_test_again_4.png" %}
   {% include custom/image_popout.html file="actii/ready_to_test_again_5.png" %}
8. Once that is complete, click the `Patients QA` bookmark to refresh the page
   {% include custom/image_popout.html file="actii/ready_to_test_again_6.png" %}
9. You should now see `Patients QA` populated with the masked data from production, in a "test ready" state.
If you click on the `Users` button, you should see we are back to the correct users. 
   {% include custom/image_popout.html file="actii/ready_to_test_again_7.png" %}

{% include links.html %}