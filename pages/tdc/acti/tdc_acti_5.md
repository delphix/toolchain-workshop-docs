---
title:  Fix Our Script
summary: "(Dev Persona) Fixing our script's policy violation"
series: "Act I"
weight: 5
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_5.html
folder: tdc
toc: false
---

{% capture eclipse_steps %}
1. Go back into Eclipse, right-click the maven repository, and click `Pull`
   {% include custom/image_popout.html file="acti/fix_our_script_eclipse_1.png" %}
2. Switch to the Java view in Eclipse
3. Expand the folders `maven.1508460431542->sql_code->ddl` and double-click om TWITTER_HANDLE.sql.
4. If prompted, choose `Associate '*.sql' files with current editor (Text Editor) and do not ask again` and click `OK`
   {% include custom/image_popout.html file="acti/fix_our_script_eclipse_2.png" %}
5. We have found the problem, there was an `@` character in the column name. Replace the `@` with an `A` and save the file.
   {% include custom/image_popout.html file="acti/fix_our_script_eclipse_3.png" %}
6. Click on the `Git Staging` tab and drag the `TWITTER_HANDLE.sql` file from `Unstaged Changes` to `Staged Changes`
   {% include custom/image_popout.html file="acti/fix_our_script_eclipse_4.png" %}
7. Add a commit message and then click `Commit and Push`
   {% include custom/image_popout.html file="acti/fix_our_script_eclipse_5.png" %}
8. Click `OK` on the `Push Results` dialog box
{% endcapture %}

{% capture git_steps %}
1. Go back to our ssh terminal
2. Open up the sql file in a text editor, ex. `sql_code/ddl/add_notes.sql`
   {% include custom/image_popout.html file="acti/fix_our_script_git_1.png" %}
3. We have found the problem, there was an `@` character in the column name.
   {% include custom/image_popout.html file="acti/fix_our_script_git_2.png" %}
4. Replace the `@` with an `O` and save the file.
   {% include custom/image_popout.html file="acti/fix_our_script_git_3.png" %}
5. Enter `git add .` to add our changes
6. Enter `git commit -m "fixed column name"` to add a commit message
   {% include custom/image_popout.html file="acti/fix_our_script_git_4.png" %}
7. Enter `git push` to push our changes to the feature branch
   {% include custom/image_popout.html file="acti/fix_our_script_git_4.png" %}
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}

{% include links.html %}
