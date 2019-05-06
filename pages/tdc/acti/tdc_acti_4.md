---
title:  Not So Fast!
summary: "(Dev Persona) Datical's Rules engine"
series: "Act I"
weight: 4
last_updated: September 11, 2018
sidebar: tdc_sidebar
permalink: tdc_acti_4.html
folder: tdc
toc: false
---

RED = BAD. So what happened?

### YOUR STEPS FOR THIS SCENE:

1. Click on the `Artifacts`   
2. Click on the bottom (`packagerReport.html`) link
   {% include custom/image_popout.html file="acti/not_so_fast_1.png" %}
3. The message in the report indicates that Datical's Deployment Manager caught a SQL rule violation and stopped the build. It appears that our add_notes.sql script had an invalid character in a column name.
   {% include custom/image_popout.html file="acti/not_so_fast_2.png" %}
4. Review the rest of the report, and then move on to the next act where we will take a look at add_notes.sql to see if we can identify the issue.
{% include links.html %}
