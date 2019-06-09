---
title:  Viewing the Data Repository
summary: "(Dev/QA Persona) What does a self-service data repo look like?"
series: "Act I"
weight: 1.3
last_updated: October 21, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_1.3.html
folder: tcw
toc: false
---

Self Service in the Delphix DDP provides software builders (Dev, Test, etc) with the ability to simply find, select, and provision the data they need, when they need it. The Delphix DDP also provides many other powerful self service controls, some of which will be covered in later scenes. 

In this scene, we will login to the DDP self service and watch the population of the data repo as the job from the previous scene is completed.

### YOUR STEPS FOR THIS SCENE:

1. Bring the Delphix Engine tab to the foreground
2. Logout, if you are currently logged in.
3. Login as the dev user. The password is delphix
   {% include custom/image_popout.html file="actii/bugs_happen_2.png" %}
4. If this is your first login, you will be prompted to change the password. Set the password to delphix
   {% include custom/image_popout.html file="actii/bugs_happen_3.png" %}
5. You should now be in the Data Operations screen. Click on `Develop`
   {% include custom/image_popout.html file="actii/bugs_happen_4.png" %}
6. You should now see the timeline for `Develop` data pod. Click on the Bookmarks button.
   {% include custom/image_popout.html file="actii/bugs_happen_5.png" %}
7. You will see one bookmark present. This bookmark was created automatically when our first build failed. Click on the bookmark. You can see that the bookmark is tagged with a Bugzilla ticket number and the git commit hash.
   {% include custom/image_popout.html file="actii/bugs_happen_6.png" %}
8. Click `Available` (in yellow rectangle). You should now see bookmarks that have been shared with you via the `Data Pipeline`.
   {% include custom/image_popout.html file="acti/viewing_the_data_repo_1.png" %}
9. You might not see anything at the moment, but as the `Data Pipeline` build progresses, you will see new bookmarks become available.
10. Bookmarks are searchable. Search for the bookmark that corresponds to the `Full` dataset.
    {% include custom/image_popout.html file="acti/viewing_the_data_repo_2.png" %}
{% include links.html %}