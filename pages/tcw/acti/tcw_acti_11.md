---
title:  Validate Our Build
summary: "(Dev Persona) Manually inspecting our build for success"
series: "Act I"
weight: 11
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_acti_11.html
folder: tcw
toc: false
next_series: "Act II"
---

We should now see the Notes field present. We will also add a new Patient to validate our new feature works.

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346610224" %}
1. Bring Chrome to the foreground
2. Click on the `Patients DEV` button on the bookmark bar.
   {% include warning.html content="you must click on the bookmark to refresh the application, otherwise your changes will not show." %}
3. Log in to the development instance of the Patients application using [credentials](credentials.html){:target="_blank"}  
   {% include custom/image_popout.html file="acti/validate_our_build_1.png" %}
4. If you logged in successfully, you should see a list of patients in your browser  
   {% include custom/image_popout.html file="acti/validate_our_build_2.png" %}
5. Enter the silly city name from the earlier scene into the search field
   {% include custom/image_popout.html file="acti/validate_our_build_3.png" %}
6. Click the view icon (outlined in yellow above) for one of the patients and inspect the record. You should see the notes field.
   {% include custom/image_popout.html file="acti/validate_our_build_4.png" %}
7. Click the edit icon (pencil) at the top of the record and add a custom note. Then save the record to validate our feature works. 
   {% include custom/image_popout.html file="acti/validate_our_build_5.png" %}
8. Repeat steps 3 & 4 for the same patient and validate your note is present.
   {% include custom/image_popout.html file="acti/validate_our_build_6.png" %}

{% include links.html %}