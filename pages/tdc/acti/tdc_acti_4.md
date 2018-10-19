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
<!-- {% include custom/series.html %} -->
{% include custom/series_next.html %}

RED = BAD. So what happened?

### YOUR STEPS FOR THIS SCENE:

1. Click on the `Deploy to Dev` job
   {% include custom/image_popout.html file="acti/not_so_fast_1.png" %}
2. It appears the `Package Database Objects` subproject failed. Click on the subproject link.
   {% include custom/image_popout.html file="acti/not_so_fast_2.png" %}
3. Click on the most recent build
   {% include custom/image_popout.html file="acti/not_so_fast_3.png" %}
4. Click on the `packagerReport.html` link
   {% include custom/image_popout.html file="acti/not_so_fast_4.png" %}
5. It appears that the failure message advised us that two rules were violated, one of which resulted in a error. It appears that our TWITTER_HANDLE.sql script had an invalid character in a column name
   {% include custom/image_popout.html file="acti/not_so_fast_5.png" %}
6. Let's take a look at TWITTER_HANDLE.sql to see if we can identify the issue.
{% include links.html %}
