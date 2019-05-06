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

We’ve now kicked off an automated build of `Patients Pipeline`, that should take around 6 minutes. We will leverage this time to learn more about the underpinning automation. 

Here is the sequence of automation:

1. Jenkins is notified via a git post_update hook.
2. Jenkins executes the `Patients Pipeline` job against the `develop` branch, which does the following against our `Patients Dev`:
   * an Ansible role to compile the application
   * a Delphix job to refresh the development data pod
   * a Datical job to analyze and package the database object changes from our committed SQL scripts
   * a Datical job to forecast and deploy the packaged changes
   * an Ansible role to deploy the application

### YOUR STEPS FOR THIS SCENE:

1. Bring Chrome to the foreground
2. Click on the `Jenkins` bookmark
3. Click on `Patients Pipeline`
    {% include custom/image_popout.html file="acti/were_building_1.png" %}
4. You should see your build running. You can identify it by your commit message. Click that line.
    {% include custom/image_popout.html file="acti/were_building_2.png" %}
5. The build will stop with an error in the `Package and Test SQL Changes` stage
   {% include custom/image_popout.html file="acti/were_building_3.png" %}
{% include links.html %}
