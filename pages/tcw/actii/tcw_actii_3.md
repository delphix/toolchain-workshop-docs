---
title:  Some Automation Details
summary: "(QA Persona) The details of the Automated Testing job"
series: "Act II"
weight: 3
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_3.html
folder: tcw
toc: false
---

{% include warning.html content="OUTDATED, TO BE REPLACED" %}

While we wait for the remainder of the Automated Testing job to finish, we will go over some of the details of what is actually happening. The format of this scene will differ a little bit, as you will execute steps as we go along and explain some things.

### YOUR STEPS FOR THIS SCENE:

1. Activate the [`Jenkins`](https://jenkins.io/){:target="_blank"} tab
2. Click on the `Automated Testing` job
   {% include custom/image_popout.html file="acti/some_automation_details_1.png" %}
3. This brings us to the details of the `Automated Testing` job. On this screen, we will find information about past and current builds. as well as some details about what is inside the job. You will see this page is titled `Project Automated Testing`. Let’s just cover off a couple of Jenkins items. Projects are the construct in Jenkins that you use to define “what to build”.  It is common for people to use the vernacular jobs, in place of projects. Executing a project in Jenkins is called building. It is also common for the term job run, to be used in place of build.  This guide will use these terms interchangeably.
   
   In the red box highlighted with the #3 below, you will find the most recent build execution. In the case of the example below, the most recent build had failed. This is why it has a red dot next to it. Yours may be a flashing blue, but it will eventually also turn red. Don’t worry, this is part of our scenario.
   {% include custom/image_popout.html file="acti/some_automation_details_2.png" %}

The `Automated Testing` job only has two functions. First, it detects when code has been pushed to our git repository. Second it executes a sequence of jobs and passes parameters between them. These jobs are listed in order in box #4, above. When jobs have (blocking) listed at the end, that means no other jobs can start until they finish running. Jobs that are in the same static grouping run together at the same time. Once all blocking jobs in a static group have completed, jobs in the next static group can begin.

Next we will briefly explain what each job in `Automated Testing` is doing:

* Snapshot dSource or VDB – This job tells the Delphix DDP to ensure it has the latest changes from our production instance.
* Refresh `QA Data Pod`  – This job tells the Delphix DDP to refresh the QA data pod from the most recent data it has from our production instance.
* Deploy Application – This job pulls the latest application code from our [Git](https://git-scm.com/){:target="_blank"} repository and then executes a [Maven](Maven){:target="_blank"}  build to create the new WAR (Java `W`eb `A`pplication `R`esource) and deploy it to our QA instance of [Apache Tomcat](http://tomcat.apache.org/){:target="_blank"} .
* Deploy Database Object Changes – This job pulls the latest database schema/object changes from our Git repository and then executes a [Datical](http://www.datical.com/){:target="_blank"}  build to apply those changes to the data in our QA data pod.
* Selenium Application Test – This job triggers a [Selenium](http://www.seleniumhq.org/){:target="_blank"}  test against our QA instance. The test checks a few things like page title, the presences of certain fields, and also the function that removes employees from the system. The test also takes screen shots of the application, at various points. If the test fails, it triggers the file bug job.
* file bug – Though not listed on this screen, it is an important part of this flow. In the event that the Selenium test fails, this job opens a defect in [Bugzilla](https://www.bugzilla.org/){:target="_blank"} . It also attaches the test results and any screen shots the test may have captured. After the defect is filed, the job tells the Delphix DDP to create a bookmark on the QA data pod and to tag it with important metadata from the build, like the test name, the defect number, and [Git hash](https://help.github.com/articles/github-glossary/#commit){:target="_blank"} .

Now, feel free to explore around until your `Automated Testing` job completes. Just be sure to `not click Save or Apply,` and you should be able to stay clear of doing any real damage.

Once the `Automated Testing` job has completed (failed), take note of the job number (it is 98 in the image above). Once you have that number, you are ready for the next scene.
{% include links.html %}