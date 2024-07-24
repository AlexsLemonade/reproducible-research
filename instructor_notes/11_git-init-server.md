# Instructor Notes: Initializing a git repository on RStudio Server

This document provides instructions for creating a git repository in an existing directory on the Data Lab's RStudio Server, as well as setting up associated git credentials.

## Learning goals

At the end of this activity, workshop attendees will have:

* Learned about git Personal Access Tokens and credentials
* Learned basic git configuration using R tools
* Used basic git CLI commands

## Part 1: Set up git credentials

### Set up the `~/.gitconfig` file

This can either be done directly in the editor by opening `~/.gitconfig`, or with `usethis` which may be safer for ensuring correct spacing:

In the end, the `~/.gitconfig` file should look like this (where the `init` block is optional but recommended):

```yml
[user]
    email = Participant Email
    name = Participant Name
[credential]
    helper = cache --timeout=43200
[init]
    defaultBranch = "main"
```

The `usethis` code to add this content to `~/.gitconfig` is below.
If `usethis` is used, instruct participants to view the `~/.gitconfig` file after each step to see how the file has been modified.
Note that `usethis::use_git_config()` will not modify (or delete!) other fields besides those provided to the function.

```r
# Step 1: Create config file with user and email
usethis::use_git_config(
    user.name = "Participant Name",
    user.email = "Participant Email",
    # Optional setting to ensure the config is global for the user
    scope = "user",
    # Optional setting to use `main` as default branch when creating a new repo
    init.defaultBranch = "main"
)
# Step 2: Set up credential helper to be able to temporarily store PAT on the server
# Note that this could be combined with step 1 as an additional argument
usethis::use_git_config(
    credential.helper = "cache --timeout=43200" # 12 hours
)
```

### Add your Personal Access Token

* Instruct participants to navigate to their GitHub.com account's Developer settings and create a classic token with the `repo` scope that lasts for 7 days.
  * Once the token is created, copy/paste it and save in a (local) _secure location_.
  Emphasize that if they have a password manager, they should use it!
* In the R Console in the RStudio Server, use the `gitcreds` package to store this information:
  * Run `gitcreds::gitcreds_set()` and paste the PAT into Console.
  * Then, run `gitcreds::gitcreds_get()` to ensure a PAT has been set.
* Explain that they will have to repeat this step every 12 hours to be able to continue communicating with GitHub because of how we set up caching on RStudio Server and in their `.gitconfig`

## Part 2: Create a git repository

* In the Terminal, navigate to the `training-modules` workshop directory, which participants are going to turn into a git repository and create a repository:

```sh
# Navigate to the training modules directory
cd ~/training-modules
```

# Create a git repository
git init
```

* Before adding and committing, take a moment to look at the `.gitignore` file present in this directory to see what we expect to be added vs ignored.

* Run the following code to add, commit, and push the new repo to GitHub:
```sh
# Add all (non-ignored) files to the directory
# Explain that we generally like to add files one at a time, but this strategy is appropriate for
#  the context of initializing a repo, especially given the presence of the .gitignore file!
git add .

# Throw in a git status for good measure (run as often as desired while using git!)
git status

# Make a commit
git commit -m "First commit for RNA-seq workshop materials repo"
```

* Next, we need a corresponding remote repository to push to.
For this, instruct participants to create a new repo on GitHub.com
    * _Do not_ initialize the repository with any files (no `README`, `.gitignore`, or `LICENSE`)

* Copy/paste the `https` URL (`{REMOTE-URL}`) and use for the following code back in the terminal:
```sh
# Set the remote repo address
git remote add origin {REMOTE-URL}

# push to main!
# now, pushing will go to this URL by default
git push -u origin main
```

## Next steps

Explain that after we complete each training notebook, they should run the following to sync their local repo with GitHub:

```sh
# add files one at a time
git add <specific .Rmd file>
git add <specific .html file>

git commit -m "Informative message about notebook being added"

git push
```
