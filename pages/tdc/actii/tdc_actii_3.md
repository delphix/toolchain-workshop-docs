---
title: Squash the Bug
summary: "(Dev Persona) fixing our code"
series: "Act II"
weight: 3
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_actii_3.html
folder: tdc
toc: false
---
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

Now that we have identified the bug, it is time to patch it, test it, and then push it upstream.

In this scene, we are going to update the application code to eliminate the bug. Then we will commit our patch and run a couple tests to test it in our environment. Once we are satisfied with our tests, we will push our code upstream.
    
{% capture shared_steps %}
14. Bring Chrome to the foreground
15. Activate the Jenkins tab
16. The code that was just committed should have triggered some deployment jobs. Wait for them to finish.
    {% include custom/image_popout.html file="actii/squash_the_bug_1.png" %}
17. Activate the Dev Instance tab
18. Refresh the page by clicking the Dev Instance bookmark
19. Let’s add some records to test our patch. Add an employee.
    {% include custom/image_popout.html file="actii/squash_the_bug_2.png" %}
20. Add at least one more employee. Add as many as you like.
    {% include custom/image_popout.html file="actii/squash_the_bug_3.png" %}
21. You may need click First or the Dev Instance boomark to refresh the application page to show your new employees.
    {% include custom/image_popout.html file="actii/squash_the_bug_4.png" %}
22. Let’s test the delete function. Delete an employee.
    {% include custom/image_popout.html file="actii/squash_the_bug_5.png" %}
23. Great! Only one employee deleted. This is the expected behavior.
    {% include custom/image_popout.html file="actii/squash_the_bug_6.png" %}
{% endcapture %}

{% capture eclipse_steps %}

1. Switch to the Java view in Eclipse
2. Right-click on the maven repository and choose `Switch to -> New Branch...`.
   {% include custom/image_popout.html file="actii/squash_the_bug_eclipse_1.png" %}
3. Enter the name of the branch. Make this the same as step 12 from the `Bugs Happen` scene, ex. `bug-2`
4. Check the box to `Configure upstream for push and pull`
5. Click `Finish`
   {% include custom/image_popout.html file="actii/squash_the_bug_eclipse_2.png" %}
6. Remove the html comment tags from line 24 of the deletedb_app.jsp tab. The comment tags are ‘<%–‘ and ‘–%>’. Look to the image below for an example of what line 24 should look like when your edits are complete.
7. Notice the deletedb_app.jsp tab has an asterisk on it. This denotes that there are unsaved changes for this tab.
8. Save your changes by clicking the save icon.
   {% include custom/image_popout.html file="actii/squash_the_bug_eclipse_3.png" %}
9. The deletedb_app.jsp tab should no longer have an asterisk.
   {% include custom/image_popout.html file="actii/squash_the_bug_eclipse_4.png" %}
10. Activate the Git Staging tab
11. Drag the deletedb_app.jsp from Unstaged Changes to Staged Changes
12. Enter something for a Commit Message
13. Click `Commit and Push`
    {% include custom/image_popout.html file="actii/squash_the_bug_eclipse_5.png" %}
{{ shared_steps }}
{% endcapture %}

{% capture git_steps %}
1. Create new branch in git for our fix work, `git checkout -b bug-#` where this is the same as step 12 from the `Bugs Happen` scene, ex. `bug-2`
2. Open up the `employee-app/src/main/webapp/deletedb_app.jsp` file in a text editor
   {% include custom/image_popout.html file="actii/squash_the_bug_git_1.png" %}
3. Remove the html comment tags from line 24 of the deletedb_app.jsp tab. The comment tags are ‘<%–‘ and ‘–%>’.
4. Stage the change, `git add .`
5. Commit the change, `git commit -m "fixed bug-2"
6. Push the change, `git push origin bug-2`
   {% include custom/image_popout.html file="actii/squash_the_bug_git_2.png" %}
{{ shared_steps }}
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}

{% include links.html %}
