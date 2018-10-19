---
title:  Let’s test again, with real data
summary: "(Dev Persona) Test our fix on a larger sample set"
series: "Act II"
weight: 4
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_actii_4.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Let’s bring our original data back into our data pod and test against that, just to test our patch again against realistic data.

In this scene, we are going to switch back to our original data branch to test with the data we were originally working against.

### YOUR STEPS FOR THIS SCENE:

1. Activate the Delphix Engine tab.
2. Login as dev, if your login has timed out.
   {% include custom/image_popout.html file="actii/lets_test_again_1.png" %}
3. Click on Dev Data Pod, if you had to login again.
   {% include custom/image_popout.html file="actii/lets_test_again_2.png" %}
4. Click on Branches.
   {% include custom/image_popout.html file="actii/lets_test_again_3.png" %}
5. Click on default.
6. Click Activate.
   {% include custom/image_popout.html file="actii/lets_test_again_4.png" %}
7. Click Activate in the dialogue box, to confirm.
   {% include custom/image_popout.html file="actii/lets_test_again_5.png" %}
8. When the Activating progress bar is complete, proceed to the next step.
   {% include custom/image_popout.html file="actii/lets_test_again_6.png" %}
9. Activate the Dev Instance tab
10. Refresh the page by clicking the Dev Instance bookmark
11. Validate the dev data from Act I has been restored. Delete the employee you had added previously. This should be employee 1.
12. Delete the employee you had added previously. This should be employee 1.
    {% include custom/image_popout.html file="actii/lets_test_again_7.png" %}
13. Great! Our patch appears to have worked. Only one employee has been deleted. Time to push our changes upstream.
    {% include custom/image_popout.html file="actii/lets_test_again_8.png" %}
14. Repeat the steps from [Works in My Environment!](tdc_acti_9.html) but substituting your branch name , ex `bug-2` in place of `TWITTER`
{% include links.html %}
