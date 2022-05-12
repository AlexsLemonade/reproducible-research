# `git` Cheatsheet


### `git` Terminology

Term | Meaning
------|--------------------
commit | A snapshot of the current state of file(s) in your repository. 
local repository | The repository as it exists on your personal computer
remote repository | Any repository as it exists on github.com that you are communicating with
origin repository | The primary repository as it exists on github.com that your local clone pushes/pulls to by default
upstream repository | The originating repository as it exists on github.com from which you forked your copy
branch | A "repository within a repository" for making experimental changes that avoid conflicts (HELP is this the worst description ever?!)
fork | A copy of someone else's repository you make to exist in your account. The originating repository is your fork's _upstream repository_

### `git` commands

Command | Description
-------|--------------
`git clone <ssh repository address>` |  Clone the repository to a new computer. 
`git add <filename>` | Stage a file with changes. <br> Use this to tell git: `There are changes here you should know about.`
`git commit -m "message"` | Commit files that have been added/removed with an informative message
`git push` | Send commit(s) to `github.com`, by default to the `origin` repository
`git pull` | Obtain commits pushed to `github.com` onto the current machine, by default from the `origin` repository
`git rm filename`  | Remove a file from being tracked by git entirely.
`git status` | Check the version control status of files. 




### The individual `git` workflow

> At any and all times, running `git status` will show you what is staged, what is tracked but not staged, and what is not tracked at all.

1. **Obtain** a local version (aka, on your computer) of a repository with `git clone <repo ssh address>`
2. **Use `cd`** to navigate into that repository's directory in the terminal. 
3. **Add files for staging** with `git add <filename>`
    + Any time you make a change to a file, it must be re-added _even if_ `git` was previously tracking it
4. **Stage changes** (anything you have added/removed/moved) with `git commit -m "An informative message that broadly says what the commit does"`
5. **Push** changes to the `github.com` repository versions with `git push`


### Escaping from vim

1. Hit the `escape` key
2. Type the three characters `:wq`, which should appear at the _bottom left_ of the view (**TODO:** `wq` or `q!`?)
3. Hit `enter` and you are free!


<br><br>

### Different types of output from `git status`

<br>

##### Everything is up to date and there are no new changes. 
```
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean
```

<br>

##### New files are present, but `git` doesn't know about the files yet.
```
On branch main
Your branch is up to date with 'origin/main'.

Untracked files:
  (use "git add <file>..." to include in what will be committed)
	new_file.txt

nothing added to commit but untracked files present (use "git add" to track)
```

<br>

##### New files have been _added_ (staged) but not yet _committed_.
```
On branch main
Your branch is up to date with 'origin/main'.

Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
	new file:   new_file.txt
```

<br>

##### Files have been committed, but not yet _pushed_ to your remote
```
On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
```

<br><br>

### Miscellaneous Troubleshooting

Some messages you might see, what they mean, and how to deal with them:



<br>

#### When running pretty much any git command:
```
fatal: not a git repository (or any of the parent directories): .git
```

This means you are running git commands but you are not in a git repository! 
You have to `cd` into the a repository's directory to run git commands. 
You can be anywhere inside the repository when running commands.


<br>

#### When trying to add or remove a file:
```
fatal: pathspec <name of file> did not match any files
```

This means you are trying to add or remove a file that `git` does not think exists.
There are several reasons this might occur.
First, you may have spelled the file name incorrectly or you may not be using the right path to the file.
Second, the file might be present but not under version control.
In this case, you need to make sure to `git add` the file before trying to do other git things with it.

<br>


#### When trying to `commit`
```
error: switch `m' requires a value
```
You forgot the commit *message*! You can't just type `git commit -m` - you need `git commit -m "YOUR MESSAGE GOES HERE"`.


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
