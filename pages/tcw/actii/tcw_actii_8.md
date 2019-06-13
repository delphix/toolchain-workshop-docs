---
title: Squash the Bug
summary: "(Dev Persona) fixing our code"
series: "Act II"
weight: 8
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_8.html
folder: tcw
toc: false
---

Now that we have identified the bug, it is time to patch it, test it, and then push it upstream.

In this scene, we are going to update the application code to eliminate the bug.
Then we will commit our patch and run a couple tests to test it in our environment.
Once we are satisfied with our tests, we will push our code upstream.

{% capture validate_dev %}
1. As before, the push triggers a pipeline build for the `develop` branch.
2. Once the pipeline job finishes, click the bookmark for the `Patients Dev` and test that you cannot add a duplicate user (like the previous scene)
3. Once you validate the `Patients Dev` environment, let's sync our changes and then merge to master,
just like we did in [Act II Scene I](tcw_actii_1.html){:target="_blank"}
4. Now the `master` pipeline build runs in Jenkins. The build should be green and validate that the tests results all pass.
   {% include custom/image_popout.html file="actii/squash_the_bug_1.png" %}
   {% include custom/image_popout.html file="actii/squash_the_bug_2.png" %}
{% endcapture %}
    
{% capture vscode_steps %}
1. Bring VS Code to the foreground.
2. Switch to the Explorer view (purple rectangle, below).
3. Switch to the `develop` branch by clicking on `master` and then selecting `develop` from the dropdown list.
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_1.png" %}
4. Expand the sql_code/ddl folders (underlined, below) and then click the new file button (red circle, below)
5. Name the new file something like `add_constraint_to_username.sql`
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_2.png" %}
6. In the new file, copy and paste the following text, then save the file.
```sql
ALTER TABLE USERS
    ADD CONSTRAINT username UNIQUE(username);
```
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_3.png" %} 
7. Now let's commit and push our change. Switch to the Source Control view (yellow box) and click the `+` (yellow circle) icon to add our changes
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_4.png" %}
8. Add a commit message and click the checkmark to apply the commit. 
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_5.png" %}
9. Click the sync button (yellow rectangle) to push the changes. Click `OK` button, if prompted.
   {% include custom/image_popout.html file="actii/squash_the_bug_vscode_6.png" %}
{{ validate_dev }}
{% endcapture %}

{% capture git_steps %}
1. Go back to our ssh terminal and navigate to
```bash
cd ~/git/app_repo/sql_code/ddl
```
2. Checkout the `develop` branch
```bash
git checkout develop
```
3. Create a sql file and add the following text to it:
```sql
ALTER TABLE USERS
    ADD CONSTRAINT username UNIQUE(username);
```
4. Save the file and exit the text editor
   {% include custom/image_popout.html file="actii/squash_the_bug_git_2.png" %}
5. Add the file to git, commit the file with a message, and then push the changes to git.
```bash
git add add_constraint_to_username.sql
git commit -m "username constraint"
git push
```
   {% include custom/image_popout.html file="actii/squash_the_bug_git_1.png" %}
{{ validate_dev }}
   {% include custom/image_popout.html file="actii/squash_the_bug_git_3.png" %}
{% endcapture %}

{% include custom/steps.html vscode_steps=vscode_steps git_steps=git_steps %}

{% include links.html %}
