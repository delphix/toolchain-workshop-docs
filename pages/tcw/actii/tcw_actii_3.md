---
title:  Some Automation Details (part 2)
summary: "The details of the Patients Pipeline"
series: "Act II"
weight: 3
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_3.html
folder: tcw
toc: false
---

While we wait for the remainder of the `master Patients Pipeline` build job to finish, we will go over some of the details of what is actually happening.
The format of this scene will differ a little bit, as you will execute steps as we go along and explain some things.

### YOUR STEPS FOR THIS SCENE:
{%- comment -%} {% include custom/watch_steps.html vimeo="REPLACEME" %} {%- endcomment -%}
1. Click the `Jenkins` bookmark. 
2. Click on the `Patients Pipeline`
   {% include custom/image_popout.html file="actii/automated_testing_2.png" %}
3. Click on the job at the top of the list.
This screen shows us the various stages of the `Patient Pipeline`.
The `Patients Pipeline` is a declarative [Jenkins Pipeline](https://jenkins.io/doc/book/pipeline/){:target="_blank"}.
The Pipeline is defined by a file (`Jenkinsfile`) that is stored with our application code in version control.
   {% include custom/image_popout.html file="actii/automated_testing_3.png" %}
4. Let's inspect the `Jenkinsfile`. Open `VS Code` and click on `Jenkinsfile`.
   
   In the image below, several sections of the Jenkinsfile have been collapsed for clarity.
   {% include custom/image_popout.html file="actii/some_automation_details_1.png" %}

The main sections of the `Jenkinsfile` include:

* environment - This section establishes environment variables that are set and/or read during the exection of the Pipeline.
* stage(&lt;name&gt;) - Each of these correspond to named stages you saw in the job view in your web browser 
* post - These actions execute after the steps are completed.

The stages of the `Jenkinsfile`:
* Prepare Environment - Sets some environment variables based on the code branch.
* Prepare Workspace - Cleans up the workspace and checks out the application code, setting some git parameters.
* Compile Application - Executes the Ansible playbook to compile the Patients application from source code.
* Refresh Data Pod - Executes the ([Delphix Automation Framework (DAF)](https://github.com/delphix/automation-framework){:target="_blank"}) to refresh the corresponding environment's data pod.
This provides the latest available masked data set to the lower environment, allowing code to be deployed to a known-good data state with a production schema.
* Package and Test SQL Changes - Executes Datical's Deployment Manager against any new sql scripts in our code base.
This validates the script against syntax errors and any defined policies. A validated script is then packaged for deployment.
* Forecast Database Changes - Executes Datical's Forecaster to produce a forecast report against the environment's data pod of all resultant database changes of the scripts identfied by the previous stage.
* Deploy Database Changes - Executes Datical's Deployment Mananger to deploy the packaged and forcasted changes against the corresponding environment's data pod.
All of the Datical reports are packaged up and made available in the `artifacts` tab of the `Patients Pipeline`
* Deploy Application Stack - Now that any database changes have been applied, the application can be deployed and started.
* Automated Testing - If this Pipeline run was triggered by an event in the `master` branch, then complete a suite of automated testing to validate the application.
The test results are packaged up and made available in the `tests` tab of the `Patients Pipeline`

The post actions of the `Jenkinsfile`:
* If the build fails or is deemed unstable, then open a ticket in Bugzilla and create a bookmark on the corresponding environment's data pod.
* If the build fails or is deemed unstable, execute a call to the ([Delphix Automation Framework (DAF)](https://github.com/delphix/automation-framework){:target="_blank"}) to execute an action on the corresponding environment's data pod.

Now, feel free to explore around until your `Patients Pipeline` job completes.
Just be sure to `not click Save or Apply,` and you should be able to stay clear of doing any real damage.

Once the `Patients Pipeline` job has completed (unstable), you are ready for the next scene.
{% include links.html %}