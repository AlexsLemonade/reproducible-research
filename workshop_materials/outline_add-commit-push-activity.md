# Proposed Outline


+ After `download_fastq.sh` is created, we can look at GitKraken (**TODO** or get fancy and run `git status`? Both?) and see there are diffs
+ Transition to slides to learn about the add/commit/push cycle
  + They will have already seen slides on the general aspects of git(hub) and the specific concepts of cloning and forking
  + Must include https://xkcd.com/1296/ in slides 
+ Then we add/commit/push the fastq script _only_ via GitKraken. Have them confirm the updates went through via browser
  + They may say, but why not commit everything? We want manageable commits that are precise to the work we did, not commits that are "all the work I did on Friday."
  + Take a moment to show how they can click through commit history on github.com
+ Now, we see fastq files are still not committed, and we can explain github file size limits here
  + Give a quick (sentence) shoutout to git LFS, but we're very much not using it here
+ Create a `.gitignore` file(s?)
  + **TODO:** How many do we want to make? We could do a single `.gitignore` in the `raw/` directory, but we might also need a `.gitkeep` for that now "empty" data directory. 
  + **TODO:** If we have a single `.gitignore` in the root directory, do we want to show recursive ignoring syntax?
+ Once created, add/commit/push

