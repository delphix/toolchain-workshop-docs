---
title: Triaging the Bug
summary: "(Dev Persona) Triaging the bug"
series: "Act II"
weight: 7
last_updated: September 11, 2018
sidebar: tcw_sidebar
permalink: tcw_actii_7.html
folder: latest
toc: false
---

We have now “paused” the data we were previously using and have replaced it with the 
data from the `Test` data pod bookmark.

In this scene, we are going validate the presence of the bug, and work to source 
the root cause of the issue.

### YOUR STEPS FOR THIS SCENE:
{% include custom/watch_steps.html vimeo="346610754" %}
1. Open `Patients Dev` in a new tab. Login, and go to the Users section.
You should now see we have replicated the "broken test" environment.
2. Notice the duplicate `mcred` username. This is the exact state of the bookmarked data in our `Test` data pod.
   {% include custom/image_popout.html file="actii/triaging_the_bug_1.png" %}
3. Let's delete the duplicate `mcred` user. Click the X icon next to one of the `mcred` usernames
4. Click OK on the dialog box
   {% include custom/image_popout.html file="actii/triaging_the_bug_2.png" %}
5. The application is now down to three users
   {% include custom/image_popout.html file="actii/triaging_the_bug_3.png" %}
6. Let's manually add a user to test the bug ourselves. Click the `+` icon to open the `Add User` form
7. Create a user with the username `mcred`. You can put any values you want into the other fields. Click Save
   {% include custom/image_popout.html file="actii/triaging_the_bug_4.png" %}
8. You should now see your user in the list. Once you verified the user, repeat steps 2 & 3 to delete the user.
   {% include custom/image_popout.html file="actii/triaging_the_bug_5.png" %}
9. It is pretty obvious that the issue is we do not have a unique constraint on our username field.
Let's patch this defect by applying a unique constraint to the username column of the USERS table in our database.
The following sql code should do it:
```sql
ALTER TABLE USERS
    ADD CONSTRAINT username UNIQUE(username);
```
10. Let's manually apply this to our Dev environent to see if it has the desired effect. Open a terminal window.
11. SSH into the Development database server as the `centos` user
```bash
ssh centos@devdb
```
12. Change to the `oracle` user. 
```bash
sudo su - oracle
```
13. Connect to the `devdb` via sqlplus
```bash
sqlplus delphixdb/delphixdb@devdb:1521/devdb
```
14. Copy and paste the sql code from step 10 into the terminal window and press enter.
You should see a message that says `Table altered`.
    {% include custom/image_popout.html file="actii/triaging_the_bug_6.png" %}
15. Now let's go to our Dev App and test the fix. Repeat steps 6 & 7 above.
16. This time, you should notice that the application won't allow us to add a duplicate user.
In a real use case, we would update the application code to also return an error message, but that is beyond the scope of this workshop.
17. Change the username to something unique and click save to validate that our add user form is still working.
18. Great. Now let's submit the patch. 

{% include links.html %}
