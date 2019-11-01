---
title:  Fix Our Script
summary: "(Dev Persona) Fixing our script's policy violation"
series: "Act I"
weight: 9
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_9.html
folder: latest
toc: false
---

Now armed with the information from the Datical reports, let's fix this issue in our code and push our updates.

{% capture vscode_steps %}
{% include custom/watch_steps.html vimeo="346609973" %}
1. Launch VS Code, bring it to the foreground, and click on the Explorer Button (in yellow square, below)
2. Expand the folders `sql_code->ddl` and double-click on add_notes.sql (designated by a red arrow)
3. Examine the script 
   {% include custom/image_popout.html file="acti/fix_our_script_vscode_1.png" %}
4. We have found the problem, there was an `@` character in the column name. Replace the `@` symbol (highlighted in a blue rectangle above) with the letter captial `O`. Save the file.
   {% include custom/image_popout.html file="acti/fix_our_script_vscode_2.png" %}
5. Click on the Source Control Button, click on add_notes.sql under changes, and then click on the plus directly to the right (yellow box) to add the file to git.
   {% include custom/image_popout.html file="acti/fix_our_script_vscode_3.png" %}
6. Enter a commit message, anything will do (i.e. "fixed column name")
7. Click the checkmark icon to commit the changes (in orange circle, below).
   {% include custom/image_popout.html file="acti/fix_our_script_vscode_4.png" %}
8. Now push the changes. You can do that by either clicking sync icon across the bottom (in yellow square, below) OR by using the `more actions` menu and selecting `push` (highlighted in blue, below)
   {% include custom/image_popout.html file="acti/fix_our_script_vscode_5.png" %}
9. Click 'OK' if you are prompted to confirm.

{% endcapture %}

{% capture git_steps %}
{% include custom/watch_steps.html vimeo="346609957" %}
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

{% include custom/steps.html vscode_steps=vscode_steps git_steps=git_steps %}

{% include links.html %}
