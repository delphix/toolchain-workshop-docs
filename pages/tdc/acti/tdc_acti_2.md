---
title:  Let’s Make Some Changes
summary: "(Dev Persona) Here we will push some pre-staged changes to our develop feature branch"
series: "Act I"
weight: 2
last_updated: May 3, 2019
sidebar: tdc_sidebar
permalink: tdc_acti_2.html
folder: tdc
toc: false
---

For this workshop we have provided two modalities to make, view, and process our code changes. If you are more of a graphical interface user, then you can follow the path using [VS Code](https://code.visualstudio.com/){:target="_blank"}. If you are a command-line user, then you can follow the path using ssh & git. You will follow either the VS Code steps or the git steps. You will not do both.

If you will be using VS Code, use the VS Code icon on the desktop to launch VS Code. This may take a few moments to load.

As we covered before, our initial changes to add the notes functionality have been pre-staged, for your convenience.

{% capture eclipse_steps %}
1. Click on the git repository > maven …..
2. Enter a commit message, anything will do
3. Click “Commit and Push”
   {% include custom/image_popout.html file="acti/lets_make_some_changes_eclipse_1.png" %}
4. You may be prompted for a password. If you are, just enter the delphix user's password and click ok
   {% include custom/image_popout.html file="acti/lets_make_some_changes_eclipse_2.png" %}
5. Click Ok on the result
   {% include custom/image_popout.html file="acti/lets_make_some_changes_eclipse_3.png" %}
{% endcapture %}

{% capture git_steps %}
1. If you haven't already done so, open a terminal and navigate to the `~/git/app_repo` directory.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_1.png" %}
2. Enter `git status` if you want to see the staged changes. Then type `git commit -m "Notes Field"` to commit the changes
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_2.png" %}
3. Enter `git push origin develop` to push our changes to the `develop` branch.
   {% include custom/image_popout.html file="acti/lets_make_some_changes_git_3.png" %}
4. You should see some output return in your console with `develop -> develop` at the bottom.
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}

{% include links.html %}