# Instructor Notes: Add/commmit/push and `.gitignore` files

At this time in the workshop, trainees will have 



This document provides instructions for teaching add(stage)/commit/push using GitKraken, which then transitions into adding/committing/pushing a `.gitignore` file that they create during this activity.

## Learning goals

At the end of this activity, workshop attendees should be able to:

+ Be able to add (stage), commit, and push changes from GitKraken 
+ Understand the purpose of a `.gitignore` file and how to write one

## Part 1: Introduction to add/commit/push

Go through slides for git add/commit/push here, stopping after the GitKraken screenshots. 
Note that several slides after these GitKraken screenshots include analogous screenshots for performing the same tasks on command line; these slides can be presented or skipped (and therefore provided as a reference for trainees) at the instructor's discretion.
Then, alongside the trainees as an interactive demonstration, follow the procedure demonstrated in the slides to add/commit/push the newly-written `download-fastq.sh` script. 
Have the trainees navigate to their repositories in the browser so they can confirm that their changes were pushed and that their most recent commit appears in their remote.


### Part 2: `.gitignore` files

Return to the slides to teach the concept of `.gitignore` files, including how this concept directly relates to the _large_ FASTQ files they just downloaded.
The final slide in this section provides the text they should include in their `.gitignore` files, also shown here:

```
data/raw/fastq/SRP255885/

.Rhistory
.RData
.Ruserdata
.Rproj.user
.DS_Store
```


After slides, instruct trainees to open a text editor and create a new file, which should be saved in the top-level of the repository: `rrp-workshop-exercises/.gitignore`.
Instruct trainees to type up their `.gitignore` file with these contents, and then return to GitKraken to add/commit/push this file.
Finally, have them again navigate to their repositories in the browser so they can see that they pushed properly.