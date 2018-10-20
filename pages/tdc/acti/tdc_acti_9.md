---
title:  Works in My Environment!
summary: "(Dev Persona) Promoting our code"
series: "Act I"
weight: 9
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_9.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Now that we validated our changes worked in our development environment, it is time for us to merge our feature branch to promote our changes along.

{% capture eclipse_steps %}
1. Bring Eclipse to the foreground
2. Click on the git view in Eclipse
3. Right-click on the maven repository and choose `Pull`. This will ensure we have all the latest changes to our feature branch `(do not skip this step)`
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_1.png" %}
4. Click `Close` on the `Pull Result` dialog box
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_2.png" %}
5. Right-click on the maven repository and choose `Switch To -> master`.
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_3.png" %}
6. Right-click on the maven repository and choose `Merge...`
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_4.png" %}
7. Choose `origin/TWITTER` in the `Merge master` dialog box
8. Click `Merge`
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_5.png" %}
9. Click `OK` on the `Merge Result` dialog box
   {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_6.png" %}
10. Right-click on the maven repository and choose `Push to Upstream`
    {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_7.png" %}
11. Click `OK` on the `Push Results` dialog box
    {% include custom/image_popout.html file="acti/works_in_my_environment_eclipse_8.png" %}
{% endcapture %}

{% capture git_steps %}
1. Go back to our ssh terminal and enter `git pull` This will ensure we have all the latest changes to our feature branch `(do not skip this step)`
2. Enter the delphix user password, when prompted
3. Enter `git checkout master`
4. Enter `git merge TWITTER`
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_1.png" %}
5. Enter `git push`
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_2.png" %}
6. Enter the delphix user password, when prompted
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_3.png" %}
7. You should see some output return in your console with `master -> master` at the bottom.
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_4.png" %}
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}
{% include links.html %}