---
title:  We're Building!
summary: "We’re Building! (Dev Persona)"
series: "Act I"
weight: 3
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_3.html
folder: tdc
toc: false
---

We’ve now kicked off an automated build job, that should take around 50 seconds.

Here is the sequence of automation:

1. Jenkins is notified via a git commit hook.
2. Jenkins executes the `Deploy to Dev` job, which does the following against our `Dev Instance`:
   * a maven job to build and deploy the application changes via a new WAR file
   * a Datical job to analyze and package the database object changes from our committed SQL scripts
   * a Datical job to forecast and deploy the packaged changes

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Click on the Jenkins Tab and `login` as Admin (upper right hand corner)
3. Click Enable Auto Refresh (this ensures we see the latest info)
4. Watch the builds
5. After the builds are done, the deploy job will have a red circle
   {% include custom/image_popout.html file="acti/were_building_1.png" %}
{% include links.html %}
