---
title:  Bugs Happen
summary: "(Dev Persona) Using Delphix to quickly triage bugs"
series: "Act II"
weight: 6
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_6.html
folder: tcw
toc: false
---

If you develop applications for a living, you will be the author of many bugs over the course of your career. One of the challenges of fixing bugs is the ability to reproduce the issue. The easiest way to do this is to see the bug in its failed state. But, when bugs are found upstream, that usually means tying up environments until the developer can “come to your desk” and take a look at the environment to triage the issue.

The Delphix DDP allows you save and share data state between [data pods](https://www.delphix.com/platform/data-pod){:target="_blank"}.. This allows us to treat data as code: cloning and branching as needed. When you can get the exact state of data you need , on demand, your environments and operations are no longer held hostage by data.

In Act I, we saved the data state of the failed test in our QA data pod. In this scene, we are going to “pause” the current data in our dev data pod, and replace it with the data from the QA bookmark we created in Act I.

### YOUR STEPS FOR THIS SCENE:

1. Bring the Delphix Engine tab to the foreground
2. If you are still logged in as qa, then logout
   {% include custom/image_popout.html file="actii/bugs_happen_1.png" %}
3. Login as the dev user. The password is delphix
   {% include custom/image_popout.html file="actii/bugs_happen_2.png" %}
4. If this is your first login, you will be prompted to change the password. Set the password to delphix
   {% include custom/image_popout.html file="actii/bugs_happen_3.png" %}
5. You should now be in the Data Operations screen. Click on Dev Data Pod
   {% include custom/image_popout.html file="actii/bugs_happen_4.png" %}
6. You should now see the timeline for Dev Data Pod. Click on the Bookmarks button.
   {% include custom/image_popout.html file="actii/bugs_happen_5.png" %}
7. Your bookmarks section will be empty, because the dev user has not created any bookmarks yet for their data pod. Click Available.
   {% include custom/image_popout.html file="actii/bugs_happen_6.png" %}
8. You should now see bookmarks that have been shared with you from other data pods.
   {% include custom/image_popout.html file="actii/bugs_happen_7.png" %}
9. Bookmarks are searchable. Search for the bookmark that corresponds to your bug or test from Act I. In the example below, my bug is Bug 2.
   {% include custom/image_popout.html file="actii/bugs_happen_8.png" %}
10. Click the boomark.
11. Click the branch icon
12. Name the branch after your bug, all lowercase and no spaces. This allows it to be compatible with git branch names. ex. `bug-2`
13. Click Create.
    {% include custom/image_popout.html file="actii/bugs_happen_9.png" %}
14. Click Timeline.
15. You will now see the Creating Branch progress bar. After completion, proceed to the next step.
    {% include custom/image_popout.html file="actii/bugs_happen_10.png" %}
16. When it is complete, you will see the name of your new branch across the top and you will see that the timeline of the data pod starts from the bookmark you had previously selected.
    {% include custom/image_popout.html file="actii/bugs_happen_11.png" %}

{% include links.html %}
