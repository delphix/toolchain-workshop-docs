---
title:  Let’s Make Some Changes
summary: "(Dev Persona) Here we will push some pre-staged changes to our develop feature branch"
series: "Act I"
weight: 6
last_updated: May 3, 2019
sidebar: tcw_sidebar
permalink: tcw_acti_6.html
folder: tcw
toc: false
---

For this workshop we have provided two modalities to make, view, and process our code changes. If you are more of a graphical interface user, then you can follow the path using [VS Code](https://code.visualstudio.com/){:target="_blank"}. If you are a command-line user, then you can follow the path using the terminal & git. You will follow either the VS Code steps or the git steps. You will not do both.

If you will be using VS Code, use the VS Code icon on the desktop to launch VS Code. This may take a few moments to load.

As we covered before, our initial changes to add the notes functionality have been pre-staged, for your convenience.

{% capture vscode_steps %}
{% include custom/watch_steps.html vimeo="346607874" %}
1. Launch VS Code, bring it to the foreground, and click on the Source Control Button (in yellow square, below)
2. Enter a commit message, anything will do (i.e. "Notes Field")
3. Click the checkmark icon to commit the changes (in orange circle, below).
   {% include custom/image_popout.html file="acti/lets_make_some_changes_vscode_1.png" %}
4. Now push the changes. You can do that by either clicking sync icon across the bottom (in yellow square, below) OR by using the `more actions` menu and selecting `push` (highlighted in blue, below)
   {% include custom/image_popout.html file="acti/lets_make_some_changes_vscode_2.png" %}
5. Click 'OK' if you are prompted to confirm.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_vscode_3.png" %}
6. If you are prompted to `periodically run 'git fetch'`, click `No`.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_vscode_4.png" %}
{% endcapture %}

{% capture git_steps %}
{% include custom/watch_steps.html vimeo="346607807" %}
1. If you haven't already done so, open a terminal and navigate to the `~/git/app_repo` directory.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_1.png" %}
2. Enter `git status` if you want to see the staged changes. Then type `git commit -m "Notes Field"` to commit the changes
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_2.png" %}
3. Enter `git push` to push our changes to the `develop` branch.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_3.png" %}
4. You should see some output return in your console with `develop -> develop` at the bottom.
{% endcapture %}

{% include custom/steps.html vscode_steps=vscode_steps git_steps=git_steps %}

{% include links.html %}