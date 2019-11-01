---
title:  We're Building!
summary: "We’re Building! (Dev Persona)"
series: "Act I"
weight: 7
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_7.html
folder: latest
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

<br>
{% capture more_about_datical %}
Datical’s mission is to transform the way businesses build software so they can deliver better customer experiences, faster. Datical radically improves and simplifies the application release process by modernizing and automating the database release process. Datical solutions deliver the automation capabilities technology executives need to remove database deployments as a barrier to delivering new application innovation. With Datical enterprises can shorten the time it takes to bring application innovation to market while eliminating the security vulnerabilities, costly errors, data loss and downtime often associated with current database deployment methods. Datical delivers results for some of the world’s most admired companies including: Sony, Nike, Travelers, and UPS.
{% endcapture %}

{% include custom/more_about.html topic="Datical" content=more_about_datical %}

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346609881" %}
1. Bring Chrome to the foreground
2. Click on the `Jenkins` bookmark
3. Click on `Patients Pipeline`
    {% include custom/image_popout.html file="acti/were_building_1.png" %}
4. You should see your build running. You can identify it by your commit message. Click that line.
    {% include custom/image_popout.html file="acti/were_building_2.png" %}
5. The build will stop with an error in the `Package and Test SQL Changes` stage
   {% include custom/image_popout.html file="acti/were_building_3.png" %}
{% include links.html %}
