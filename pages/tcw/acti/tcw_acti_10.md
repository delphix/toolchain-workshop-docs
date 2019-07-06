---
title:  We're Building! (Again)
summary: "(Dev Persona) Deploying the build with the correct SQL"
series: "Act I"
weight: 10
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_10.html
folder: tcw
toc: false
---

We’ve again triggered an automated build of `Patients Pipeline`. again. This time the `Package Database Object Changes` should complete successfully. The complete process can take around 4-8 minutes.

Here is the sequence of automation:

1. Jenkins is notified via a git post_update hook.
2. Jenkins executes the `Patients Pipeline` job against the `develop` branch, which does the following against our `Patients Dev`:
   * an Ansible role to compile the application
   * a Delphix job to refresh the development data pod
   * a Datical job to analyze and package the database object changes from our committed SQL scripts
   * a Datical job to forecast and deploy the packaged changes
   * an Ansible role to deploy the application

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346609992" %}
1. Bring Chrome to the foreground
2. Click on the `Jenkins` bookmark
3. Click on `Patients Pipeline`
   {% include custom/image_popout.html file="acti/were_building_again_1.png" %}
4. You should see your build running. You can identify it by your commit message. Click that line.
   {% include custom/image_popout.html file="acti/were_building_again_2.png" %}
5. OPTIONAL: Since our last build was halted before data was changed, we can skip the refresh this time:
   1. login to the Jenkins instance ([credentials](credentials.html))
      {% include custom/image_popout.html file="acti/were_building_again_3.png" %}
   2. When the build gets to the `Refresh Data Pod` stage, click `Abort` on the menu prompt.
      {% include custom/image_popout.html file="acti/were_building_again_4.png" %}
6. The build will complete successfully, with all green checkmarks this time.
   {% include custom/image_popout.html file="acti/were_building_again_5.png" %}
{% include links.html %}