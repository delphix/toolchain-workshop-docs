---
title:  Add some data to Production
summary: "(Dev Persona) Manually inspecting our build for success"
series: "Act I"
weight: 8
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_8.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Data pods are usually copies of active sources, like production applications. That means the data in your source applications continue to change after you have created your data pods. Data pods in the Delphix Dynamic Data Platform (DDP) are fully autonomous and read/write capable. This translates to two very important benefits:

* Changes to your data sources do not impact your data pods
* Changes to data pods do not impact other data pods or data sources, like production

In this scene, we are going to add a new employee to our production instance and then validate the data of the development and QA application instances.

### YOUR STEPS FOR THIS SCENE:

1. Click the Prod Instance tab
2. Click the Prod Instance bookmark to refresh (note: Do not use the browser refresh button)
3. Use the `Add Employee` form to add someone else to the Employees application. Just make up a Twitter handle. Specify ‘1’ for your Employee ID. Click Add to complete the submission
4. Validate you see your new employee record on the top row of the form and that the changes to Dev were not introduced into Prod
5. Click the First button to refresh the total rows count (known bug)
6. Validate you now see 1000001 records in Production
7. Go to the Dev Instance and QA Instance tabs and click their bookmarks to refresh the pages.
8. Validate your data in each environment is unique.
   {% include custom/image_popout.html file="acti/validate_our_build_1.png" %}
{% include links.html %}
{:start="9"}
9. Execute the 'Nightly Test Data Catalog Build' in Jenkins 
    * Ensure you are logged into Jenkins as Admin (1)
    * Click the 'Build button' (2)
    * This should take around 8 minutes to complete
    {% include custom/image_popout.html file="acti/nightly_catalog_build.png" %}
