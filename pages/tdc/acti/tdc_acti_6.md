---
title:  We're Building! (Again)
summary: "(Dev Persona) Deploying the build with the correct SQL"
series: "Act I"
weight: 6
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_6.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

The `Deploy to Dev` job is triggered automatically again. This time the `Package Database Object Changes` should complete successfully. The complete process can take around 8 minutes.

Here is the sequence of automation:

1. Jenkins is notified via a git commit hook.
2. Jenkins executes the `Deploy to Dev` job, which does the following against our `Dev Instance`:
   * a maven job to build and deploy the application changes via a new WAR file
   * a Datical job to analyze and package the database object changes from our committed SQL scripts
   * a Datical job to forecast and deploy the packaged changes

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Click on the Jenkins Tab
3. Click Enable Auto Refresh (if not enabled already)
4. Watch the builds
5. After the builds are done, the deploy job will have a blue circle
   {% include custom/image_popout.html file="acti/were_building_again_1.png" %}
{% include links.html %}