---
title:  Deploy to Production
summary: "(Dev Persona) Let's Deploy Our Feature to Production!"
series: "Act II"
weight: 9
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_9.html
folder: tcw
toc: false
---

Let’s bring our original data back into our data pod and test against that, just to test our patch again against realistic data.

In this scene, we are going to switch back to our original data branch to test with the data we were originally working against.

{% capture shared_steps %}
1. With our testing success, it's time to push our feature to production.
2. Repeat the merge and push steps for the `production` branch
{% endcapture %}

{% capture post_push %}
1. Now you can watch the `production` pipeline job build in Jenkins.
   {% include custom/image_popout.html file="actii/deploy_to_production_1.png" %}
2. Once the pipeline build is complete, click the `Patients PROD` bookmark and login to the application.
Search for your "ficticious user" from the very first scene of this workshop.
   {% include custom/image_popout.html file="actii/deploy_to_production_2.png" %}
3. Click view and validate you see the `Notes` field. 
   {% include custom/image_popout.html file="actii/deploy_to_production_3.png" %}
4. Congratulations! You have successfully pushed your feature to production!
{% endcapture %}

{% capture vscode_steps %}
{{ shared_steps }}
1. Click `master` and then choose `origin/production` from the dropdown menu
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_7.png" %}
17. Click `master` and then choose `origin/production` from the dropdown menu
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_7.png" %}
18. Go to `View->Command Palette`
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_8.png" %}
19. Type `Merge` in the drop down box and select `Git Merge Branch...` from the dropdown menu
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_9.png" %}
20. Choose `master` from the dropdown menu
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_10.png" %}
21. Click the sync putton to push the changes. Click OK, if prompted.
    {% include custom/image_popout.html file="actii/squash_the_bug_vscode_11.png" %}
{{ post_push }}
{% endcapture %}

{% capture git_steps %}
{{ shared_steps }}
```bash
git checkout production
git merge master
git push
```
   {% include custom/image_popout.html file="actii/squash_the_bug_git_3.png" %}
{{ post_push }}
{% endcapture %}

{% include custom/steps.html vscode_steps=vscode_steps git_steps=git_steps %}

{% include links.html %}
