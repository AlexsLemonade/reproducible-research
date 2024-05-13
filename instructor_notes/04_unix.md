# Instructor Notes: Introduction to UNIX Activity

This document provides instructions for teaching introductory UNIX after the completion of the UNIX slides.

## Learning goals

At the end of this activity, workshop attendees should be able to:

+ Be comfortable launching and typing commands in terminal
+ Navigate the command line with fundamental UNIX commands, primarily `cd`, `pwd`, and `ls`
+ Understand that flags can be used to modify


## Part 1: Introduction to the command line

At the conclusion of the UNIX slides, the instructor will screen share to walk trainees through a couple of key commands that build command-line comfort: `cd`, `pwd`, and `ls`.
The instructions below are meant as a guide for what the instructor will synchronously demonstrate while trainees follow along with the same commands on their own computer.

+ Prompt trainees to launch the `Terminal` app (either on macOS or using the `Ubuntu` option on WSL), and explain the terminal itself:
  + What information is in the default prompt?
  + You can't point and click around - you need to use arrows to move the cursor.
+ Confirm they are in their home directory with `pwd`, and discuss how to interpret the output of this command.
  + Note that both macOS and Windows terminals (when the latter is launched as `Ubuntu`) should automatically be in the home directory
+ Prompt trainees to run `ls` in their home, and then show how output changes when using different flags `lah` one at a time and combined.
+ Prompt trainees to `cd` onto their Desktop, confirm arrival with `pwd`, and explore their own files with `ls`.
  + Show use of `*` wildcard (e.g. `ls *.txt`)
  + Navigate a little more around the computer so that trainees can see use of `..` and `tab` autocompletion while crafting paths
+ Now, we need to ensure everyone has a directory like `Projects` or similar where they can keep all their projects moving forward.
  + Have them navigate to where they want this directory to be if it doesn't exist, and use `mkdir` to create it


_At this time, we break to learn about git(hub), and we clone the exercises repository._


