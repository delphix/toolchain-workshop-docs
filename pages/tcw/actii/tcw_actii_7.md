---
title: Triaging the Bug
summary: "(Dev Persona) Triaging the bug"
series: "Act II"
weight: 7
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_7.html
folder: tcw
toc: false
---

We have now “paused” the data we were previously using and have replaced it with the data from the qa data pod bookmark.

In this scene, we are going validate the presence of the bug, and work to source the root cause of the issue.

{% capture shared_steps %}
1. Activate the Dev Instance tab
2. Click the Dev Instance bookmark to refresh the page.
   {% include custom/image_popout.html file="actii/triaging_the_bug_1.png" %}
3. Notice that all of the employees are gone in our dev data pod. This is the exact state of the bookmarked data in our qa data pod.
   {% include custom/image_popout.html file="actii/triaging_the_bug_2.png" %}
4. Let’s add some records to try and triage the bug where all of our employees were deleted from our application. Add an employee.
   {% include custom/image_popout.html file="actii/triaging_the_bug_3.png" %}
5. Add at least one more employee. Add as many as you like.
   {% include custom/image_popout.html file="actii/triaging_the_bug_4.png" %}
6. You may need click First or the Dev Instance boomark to refresh the application page to show your new employees.
   {% include custom/image_popout.html file="actii/triaging_the_bug_5.png" %}
7. Let’s test the delete function. Delete an employee.
   {% include custom/image_popout.html file="actii/triaging_the_bug_6.png" %}
8. All of our employees are gone! Now we know to look at the code tied to the Delete method of our application.
   {% include custom/image_popout.html file="actii/triaging_the_bug_7.png" %}
{% endcapture %}

{% capture eclipse_steps %}
{{ shared_steps }}
9. Bring Eclipse to the foreground.
10. Click the Java button.
    {% include custom/image_popout.html file="actii/triaging_the_bug_eclipse_1.png" %}
11. In the Navigator pane. double-click deletedb_app.jsp
12. Take a look at the code in the deletedb_app.jsp tab. Can you identify the source of the issue?
13. The source of our issue is in line 24. The where clause of our delete statement has been commented out, resulting in all employees being dropped from the table whenever the method is invoked.
    {% include custom/image_popout.html file="actii/triaging_the_bug_eclipse_2.png" %}
{% endcapture %}

{% capture git_steps %}
{{ shared_steps }}
9. Go back to our ssh terminal and open up the `employee-app/src/main/webapp/deletedb_app.jsp` file in a text editor
   {% include custom/image_popout.html file="actii/triaging_the_bug_git_1.png" %}
10. Take a look at the code in the deletedb_app.jsp tab. Can you identify the source of the issue?
12. The source of our issue is in line 24. The where clause of our delete statement has been commented out, resulting in all employees being dropped from the table whenever the method is invoked.
    {% include custom/image_popout.html file="actii/triaging_the_bug_git_2.png" %}
13. Exit out of the text editor
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}

{% include links.html %}
