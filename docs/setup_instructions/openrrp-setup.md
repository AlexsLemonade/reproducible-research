
## Set up your accounts

Before the workshop begins, you will need to create and configure your GitHub account.
You will also need to set up your OpenScPCA Amazon Web Services (AWS) account.

<!-- Relative links need to use html since this document is rendered via %include% -->
1. [Create a GitHub account](github_gitkraken_setup_instructions.html#creating-a-github-account) if you do not already have one.
    - You should also [turn on two-factor authentication (2FA)](github_gitkraken_setup_instructions.html#enabling-two-factor-authentication-2fa-on-github) after you create your account.

2. Before the workshop, you will receive an email inviting you to join AWS IAM Identity Center, which will allow you to access OpenScPCA data and compute resources.
    - [Follow these instructions](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/joining-aws/) to accept this invitation and configure multifactor authentication.
    - _You are only eligible for an OpenScPCA AWS account after you fill out the [OpenScPCA intake form](https://share.hsforms.com/1MlLtkGYSQa6j23HY_0fKaw336z0) where you agree to [OpenScPCA's policies](https://openscpca.readthedocs.io/en/latest/policies/)._

## Workshop software installations

You will also need to set up your computers following _some_ these software installation steps in the [OpenScPCA Project's setup instructions](https://openscpca.readthedocs.io/en/latest/technical-setup/), as detailed below.

You should not complete all setup steps on the OpenScPCA website, since we will be doing some steps together as part of the workshop itself, but you should come prepared with all software installed and ready to be further set up.

## Instructions for macOS users

1. [Install GitKraken](https://openscpca.readthedocs.io/en/latest/technical-setup/install-a-git-client/#install-gitkraken), a GUI for working with Git
    - Follow the instructions in the link above to also sign into GitKraken with your GitHub account
    - [See these instructions](github_gitkraken_setup_instructions.html#setting-up-gitkraken) for additional information about setting up GitKraken
2. [Install Miniconda](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/#install-conda), a lightweight distribution of the package management software conda
    - You do _not_ need to also set up conda; we will do this together during the workshop
3. [Install R and RStudio](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/install-r-rstudio/#install-r-on-macos)
    - Follow the instructions to install the additional tools (XCode develop tools and the GNU Fortran compiler) as well.
4. Install some R packages we will use in the workshop by running the following command in R Console:
    ```r
    install.packages(c("renv", "tidyverse", "rmarkdown", "here", "optparse"))
    ```
5. Install [Visual Studio Code (VS Code)](https://code.visualstudio.com/), a popular text editor
    - If you prefer to use a different text editor, that's fine!
    But, we do _not_ recommend using Mac's native TextEdit application.


## Instructions for Windows users

OpenScPCA currently only supports development on macOS or Linux.
Therefore, you will need to install and set up for development using the Windows Subsystem for Linux, which provides you with a natively-running Ubuntu operating system on your Windows computer.

For most of the installations below (all except Visual Studio Code), you will install software directly into the WSL 2 side of your computer, _not_ the Windows side.
Even if you already have any of these softwares installed on the Windows side of your computer, you still need to install them on the WSL 2 side as described below.


1. Install [Windows Subsystem for Linux 2](https://openscpca.readthedocs.io/en/latest/technical-setup/install-wsl-2/)
    - Follow all instructions in the link above to install WSL 2, create your Ubuntu account, and update `apt`
2. [Install GitKraken](https://openscpca.readthedocs.io/en/latest/technical-setup/install-a-git-client/#install-gitkraken-on-windows-with-wsl-2) into the WSL 2 side of your computer
    - Follow the instructions in the link above to also sign into GitKraken with your GitHub account
3. [Install Miniconda](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/#install-conda), a lightweight distribution of the package management software conda, into the WSL 2 side of your computer
    - You do _not_ need to also set up conda; we will do this together during the workshop
4. [Install R and RStudio Server](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/install-r-rstudio/) into the WSL 2 side of your computer
5. Install some R packages we will use in the workshop by running the following command in R Console:
    ```r
    install.packages(c("renv", "tidyverse", "rmarkdown", "here", "optparse"))
    ```
6. Install [Visual Studio Code (VS Code)](https://code.visualstudio.com/), a popular text editor, into the Windows side of your computer
    - [Following these instructions](https://code.visualstudio.com/docs/remote/wsl#_getting-started), you should also install and turn on the [WSL 2 extension](https://code.visualstudio.com/docs/remote/wsl#_getting-started) to be able to use VS Code from WSL 2
