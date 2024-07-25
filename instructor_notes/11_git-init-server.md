# Instructor Notes: Initializing a git repository on RStudio Server

This document provides instructions for creating a git repository in an existing directory on the Data Lab's RStudio Server, as well as setting up associated git credentials.

## Learning goals

At the end of this activity, workshop attendees will have:

* Learned about git Personal Access Tokens and credentials
* Learned basic git configuration using R tools
* Used basic git CLI commands

## Part 1: Set up git credentials

### Set up the `~/.gitconfig` file

Use git CLI to set up the config file, which should should look like this (where the `init` block is optional but recommended) once it's created:

```yml
[user]
    email = Participant Email
    name = Participant Name
[credential]
    helper = cache --timeout=43200
[init]
    defaultBranch = "main"
```

To create the file, run these lines in terminal:

```sh
# Add email and username
git config --global user.email "your_email@example.com"
git config --global user.name "name"

# Cache credentials for 12 hours
git config --global credential.helper "cache --timeout=43200"

# Optional but useful: name the default branch `main`
git config --global init.defaultBranch "main"
```

### Create a Personal Access Token (PAT)

> Maintain security during this activity and turn off the instructor's projector (i.e., do not screen share) when tokens are being displayed.

* Instruct participants to navigate to their GitHub.com account's Developer settings (`Settings > Developer Settings > Personal Access Tokens`)
* Create a Classic PAT that lasts for 7 days as follows:
  * Provide an informative PAT name
  * Select `repo` scope for this token
  * Take this moment to discuss scopes in general (in particular `user`, `gist`, and `notifications`): https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/scopes-for-oauth-apps
* **Before clicking `Generate Token`, make sure the screen share is off.**
  * Once the PAT is created, copy/paste it and save in a (local) _secure location_.
  Emphasize that if they have a password manager, they should use it!
* Explain that participants will use this PAT instead of their password when git prompts them to enter credentials
  * They will be prompted every 12 hours, per the cache we set up in the last step

## Part 2: Create a git repository

* In the Terminal, navigate to the `training-modules` workshop directory and create a repository:

```sh
# Navigate to the training-modules directory
cd ~/training-modules

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

* Copy/paste the `https` URL (`{REMOTE-URL}`) and use for the following code back in R:
```sh
# Set the remote repo address
git remote add origin {REMOTE-URL}

# push to main
# The `-u origin main` part is only needed the first time you push to a branch that you have not pushed to before,
#  or does not exist on the remote
# Moving forward in this branch, pushing will go to this URL by default
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

Note that if they wanted to create a new branch and push it to GitHub, they would do:

```sh
# create new branch
git switch -c new-feature-branch

# add, commit your work

# the first push requires `-u origin <name of remote branch to create>
git push -u origin new-feature-branch
```

We can further explain that they can add an additional field to their `.gitconfig` which will automatically create
any remote branch with:

```sh
git config --global push.autoSetupRemote "true"
```
