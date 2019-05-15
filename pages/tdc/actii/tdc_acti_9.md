---
title:  Works in My Environment!
summary: "(Dev Persona) Promoting our code"
series: "Act I"
weight: 9
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_9.html
folder: tdc
toc: false
---

Now that we validated our changes worked in our development environment, it is time for us to merge our feature branch to promote our changes along.

{% capture eclipse_steps %}
1. Launch VS Code, bring it to the foreground, and click on the Explorer Button (in yellow square, below)
2. Click the sync icon across the bottom (in yellow square, below) OR by using the `more actions` menu and selecting `pull`
   {% include custom/image_popout.html file="acti/works_in_my_environment_vscode_1.png" %}
3. Click 'OK' if you are prompted to confirm.
4. Click on `develop` in the checkout menu (in yellow rectangle) and select `master` (in purple oval).
   {% include custom/image_popout.html file="acti/works_in_my_environment_vscode_2.png" %}
6. In the `View` menu, select the `Command Palette` (or use CTRL+SHIFT+P).
7. Type `merge branch` in the dialog box
   {% include custom/image_popout.html file="acti/works_in_my_environment_vscode_3.png" %}
8. Select `develop` in the `Select a branch to merge from` dialog box
   {% include custom/image_popout.html file="acti/works_in_my_environment_vscode_4.png" %}
9. Click the sync icon across the bottom (in yellow square, below) OR by using the `more actions` menu and selecting `push`
   {% include custom/image_popout.html file="acti/works_in_my_environment_vscode_5.png" %}
3. Click 'OK' if you are prompted to confirm.
{% endcapture %}

{% capture git_steps %}
1. Go back to our ssh terminal and enter `git pull` This will ensure we have all the latest changes to our feature branch
   {% include note.html content="DO NOT SKIP THIS STEP" %}
3. Enter `git checkout master`
4. Enter `git merge develop`
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_1.png" %}
5. Enter `git push`
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_2.png" %}
7. You should see some output return in your console with `master -> master` at the bottom.
   {% include custom/image_popout.html file="acti/works_in_my_environment_git_3.png" %}
{% endcapture %}

{% include custom/steps.html eclipse_steps=eclipse_steps git_steps=git_steps %}
{% include links.html %}