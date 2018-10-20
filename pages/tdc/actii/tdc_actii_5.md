---
title:  Trust, but Verify
summary: "(QA Persona) Let's do a manual test, to be sure"
series: "Act II"
weight: 5
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_actii_5.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Our automated test completed successfully, but let’s just do a manual check to be sure.

In this scene, we are going to refresh the the QA Instance webpage, validate the results, and then do a manual test and validate the results again.

### YOUR STEPS FOR THIS SCENE:

1. Activate the QA Instance tab
2. Click the QA Instance bookmark to refresh the page
3. Click the First button to update the record count.
4. Validate you see the record we added to production in Act I
    * Remember the data will be masked.
5. Delete the record we added to production (should be EMPLOYEE_ID 1)
   {% include custom/image_popout.html file="actii/trust_but_verify_1.png" %}
6. Click the First button to update the record count.
7. Validate you do not see the record we added to production in Act I and that the record count is now 999997
   {% include custom/image_popout.html file="actii/trust_but_verify_2.png" %}
{% include links.html %}
