---
title: Windows Installation Instructions
---

**Table of contents**

* TOC goes here
{:toc}

## Windows Subsystem for Linux (WSL 2)

We will be using a number of UNIX-based tools throughout this workshop, and many bioinformatics packages are written for that environment.
That used to mean that many such tools were not available for Windows computers, and you needed a separate machine (often a server) to run them.

Thankfully, Windows has introduced the Windows Subsystem for Linux (WSL 2), which essentially allows you to run a full Linux system from within Windows.
It is a little bit quirky, especially in how it interacts with your "normal" Windows files, but it opens up many tools that were not previously available on Windows.

Note that WSL 2 requires that you are on Windows 11 or Windows 10 version 2004+ (Build 19041 and higher).

### Installing WSL 2 and Ubuntu

To install WSL 2, take the following steps.
Note that these instructions are taken from [these official Windows instructions](https://learn.microsoft.com/en-us/windows/wsl/setup/environment).

Throughout this process you will be prompted about whether you want to all this app to make changes to your device.
Always click "Yes" when you see these prompts.

1. In the Windows Search Bar Menu, search for the "Windows PowerShell" application.
Open it by clicking "Run as administrator".

1. Run this command in PowerShell to install WSL 2:

    ```sh
    wsl --install
    ```

1. Once WSL 2 has finished installing, you will be prompted to set up a username and password to use with Ubuntu.
    - These credentials are _independent_ of the username and password you already have set up on the Windows side of your computer.
        - Changing one will not affect the other, but you can use the same username for both if you would like.
    - _Make sure you keep track of your username and password!_
    You will need to use your password when installing software for Ubuntu.
    - Note that when you type your password, no symbols will appear - this is expected!


### Accessing Ubuntu via the Windows Terminal

You can use the Ubuntu side of your computer via the ["Terminal" application](https://learn.microsoft.com/en-us/windows/terminal/).
This application opens all types of shells, aka command line prompts, in the same window.
Compared to other options for launching Ubuntu, it has much better support for handy features such as copy and paste.

If it is not already installed, you can [install Terminal from the Microsoft Store](https://apps.microsoft.com/detail/9n0dx20hk701?rtc=1&hl=en-us&gl=US).

You can launch the Ubuntu terminal by clicking "Ubuntu" when searching for the Terminal application in the Windows search menu.

<img src="screenshots/windows/wsl-terminal-start.png" alt="Open the Ubuntu terminal" width=500>

The Terminal application can have different tabs for different shells - for example one tab for Ubuntu terminal, and another tab for PowerShell.

<img src="screenshots/windows/wsl-terminal-tab.png" alt="Ubuntu terminal tabs" width=500>

### Updating Ubuntu packages

At this point, Ubuntu Linux should be installed and usable, but it may not have all of the latest updates, so we will do one more set of steps.
Most software packages are managed on Ubuntu using a tool called `apt`, so we will use this to check for updates and install them.

To do this, run the following command in the Ubuntu terminal to ensure that the package index for `apt`, the native Ubuntu package manager, and all its pre-installed packages are up to date.

  - Ubuntu may prompt you for your newly-created Ubuntu password when you run this command; you can expect to be prompted for a password any time you run a command as [`sudo`](https://www.pluralsight.com/resources/blog/cloud/linux-commands-for-beginners-sudo).
  - Again, when you type your password, no symbols will appear, as expected.
  - Enter "Y" if/when you are prompted for whether you want to continue with any package upgrades.
    ```sh
    sudo apt update && sudo apt upgrade
    ```

### Copy and paste in Ubuntu

Be aware that right-clicking in the Ubuntu terminal window has different behavior compared to the rest of your computer.

In Ubuntu, right-clicking will _paste_ the contents of your clipboard into the terminal.


## Conda (with miniforge)

[Conda](https://docs.conda.io/en/latest/) is a package manager that allows you to install and manage software packages and their dependencies, with a very healthy ecosystem of bioinformatics packages available through the [Bioconda project](https://bioconda.github.io/).

### Installing miniforge

We recommend using the `miniforge` distribution of conda, which is a minimal installer which is preconfigured to only use free package sources.
As most of the tools we will be using will be designed for Linux, we will be installing the Linux version of miniforge within WSL 2.
To install a version optimized for your system, run the following two commands in the **Ubuntu terminal**:

```bash
curl -L -O "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3-$(uname)-$(uname -m).sh
```

- You will be prompted first to view the license; press enter as instructed, read the license (you should be able to scroll with your arrow keys), then press q to return to the installer.
- Accept the license by typing yes, and then continue following the prompts to complete the installation.
- You will be asked about the installation location (you can press enter to accept the default, which should be fine).
- Finally, you will be asked whether you wish to update your shell profile to automatically initialize conda. We recommend selecting yes.

When the installation is complete, you will see the following message:

```
==> For changes to take effect, close and re-open your current shell. <==

Thank you for installing Miniforge3!
```

### Setting up Bioconda

Open a _new_ Ubuntu Terminal window and run the following commands to set up the conda channels to allow access to Bioconda packages:

```bash
conda config --add channels bioconda
conda config --add channels conda-forge
conda config --set channel_priority strict
```

That's it!
You now have conda installed and configured to use the Bioconda channel.


## R and RStudio

This workshop does not require a specific R or RStudio version.
To be able to run R both interactively via RStudio _and_ from the Ubuntu command line, you will need to install R and certain R packages on both the Linux and Windows sides of your computer, as described in the remaining instructions.
However, you will _only_ need to install RStudio on the Windows side.
If you already have R and RStudio installed for Windows, you can skip that section, but *do not skip the [WSL installation of R and R packages](#wsl-ubuntu-linux-installation-of-r-and-r-packages) section*.

For this workshop, you will also need to have the following R packages installed:

* `here`
* `optparse`
* `renv`
* `rmarkdown`
* `tidyverse`


If you already have these packages installed, you're good to go!

Otherwise, we may have to install them twice... [once for Windows](#r-packages-for-windows) and [once for WSL](#r-packages-for-wsl).

### Windows Installation of R, RStudio, and R Packages

#### R for Windows

First, navigate to the CRAN website in the browser: <https://cran.r-project.org/>.
Click the link `Download R for Windows`:

<img src="screenshots/windows/cran.png" alt="CRAN Landing Page" width="500">


On the next page, click the link to choose the **base** version of R, then click the `Download R-4.3.1 for Windows` link (or whatever the current version is).

Open the downloaded R installer, `R-4.3.1-win.exe`, and follow the prompts to install R onto your computer.
Note that you will need to give permission to modify your system.
For the remaining prompts, the default settings will be fine.

#### Optional: Install RTools

Most packages for R are available in a "binary" format, which means that they have already been "compiled" for use on Windows.
However, some packages are only available as source code, and may require compilation locally, for which you will need to install RTools.
(R will also aggressively warn about missing RTools every time you install a package, so you may want to install it just to quiet the warnings.)

For this installation, go to https://cran.r-project.org/bin/windows/Rtools.
Select link the version of RTools appropriate for your version of R; if you have just installed R above, this will be the "RTools 4.3" link.
(Why is the "T" capitalized here and nowhere else? No idea.)
Find the link for the installer (this page changes somewhat frequently, so you may have to search a bit) and click to download.

Open the downloaded `.exe` file and follow the prompts to allow changes and install RTools, accepting the default settings.

#### RStudio for Windows

First, navigate to the RStudio website's Download page in the browser: <https://posit.co/download/rstudio-desktop/#download>.
Click the button to download RStudio for Windows.

<img src="screenshots/windows/rstudio_download.png" alt="RStudio download page" width=500>

The downloaded installer will have a name like `RStudio-2022.02.2-win.exe` (the exact name may vary depending on the current version).
Open this file and follow the prompts to install RStudio onto your computer.
You may need to give permission to modify your system.

#### R packages for Windows

Open RStudio (this assumes both R and RStudio have been installed).
You can check if the required packages (`tidyverse`, `rmarkdown`, `optparse`, and `renv`) are installed by scrolling through the `Packages` tab in the bottom-right pane of RStudio.
If you see the package of interest listed, then you know it's installed.
For example, the image below tells us that `optparse` is already installed and no additional action is required to install this package:

<img src="screenshots/general/check_pkg_install.png" alt="Shows that the optparse package is already installed on this computer" width="500">

If you need to install any of the required packages, use the function `install.packages()` in Console, as follows:

```r
# Install optparse only, for example:
install.packages("optparse")

# Install all necessary packages at once:
install.packages(c("here", "optparse", "renv", "rmarkdown", "tidyverse"))
```

After running this/these command(s), you will see some progress messages pass in Console (maybe in a different color from this image, but that's ok!!).
The following image shows, for example, what these messages look like for a successful installation of `optparse`:

<img src="screenshots/general/install_optparse.png" alt="Shows the process and output for installing the optparse package" width="500">

You may see a warning that "RTools is required to build R packages", but this can usually be safely ignored unless you see a later error.
If you want to quiet the warning, you can go back to the [Install RTools](#optional-install-rtools) section and follow the instructions there.

### WSL (Ubuntu Linux) Installation of R and R Packages

#### R for WSL
To install the most recent version of R in the WSL Ubuntu Linux environment, we will follow the [instructions from CRAN](https://cran.r-project.org/bin/linux/ubuntu/#install-r), with some modifications.

First we will need to install some Linux packages that are required for setting up R and for some of the R packages we will be using.
Open the Ubuntu app and type (or [paste](#optional-enabling-copy-and-paste-in-ubuntu)) the following command.
(This is a long command! Make sure to get the whole line!):

 ```sh
 sudo apt install --no-install-recommends software-properties-common dirmngr libcurl4-openssl-dev libssl-dev libxml2-dev libfontconfig-dev libharfbuzz-dev libfribidi-dev libtiff-dev pandoc
 ```

You may be prompted to enter your *Linux* password, and then you will see a list of packages that will be installed.
Type `y` (or just Enter) to confirm, then wait for all of the installations to complete.

The next step is to add the "signing key" that verifies the authenticity of the R packages from CRAN.
Enter the following command (all on one line):

```sh
wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
```

You will see a block of random-looking text printed to the screen, ending with

```console
---- END PGP PUBLIC KEY BLOCK -----
```

Now we will tell `apt` where to look for the latest version of R, by entering the following command (all on one line):

```sh
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
```

<img src="screenshots/windows/r_wsl_install_2.png" alt="add apt repository for cran" width=500>

Finally, we are ready to actually install R!
Enter the following:

```sh
sudo apt install r-base
```

 into the Ubuntu app, confirm that you want to install the packages, and wait for the installation to complete.

To confirm that the installation was successful, type
```sh
R --version
```

You should see a message that R 4.2.0 (or the most current version of R) is installed.

<img src="screenshots/windows/r_wsl_checkversion.png" alt="successfully installed R" width=500>



#### R packages for WSL

To install R packages in the WSL copy of R, we will work again within the Ubuntu app.
Open the Ubuntu app and type `R` at the prompt to launch the R console.

At the R console prompt (which will look like this: `>`), type

```r
install.packages(c("here", "optparse", "renv", "rmarkdown", "tidyverse"))
```
and press Enter.

You may see a message that the default library location is not writeable, and asking "Would you like to use a personal library instead?"
Type `yes` and press Enter, then `yes` again to accept the default library location.

<img src="screenshots/windows/r_wsl_packages.png" alt="installing R packages in WSL" width="500">

The installation will take some time, and you will see lots of messages scroll by as the source code for each package is "compiled" to work on your computer.
You may see some warnings as the installation proceeds related to `timedatectl`, but these can be safely ignored.

After installation is complete, you can exit the R console by typing `q()` and pressing Enter.
You will be asked whether to save your workspace, and we recommend choosing `n`.

## GitKraken

We will use the GUI (graphical user interface) called `GitKraken` to work with Git in this workshop.

GitKraken can be installed from <https://www.gitkraken.com>, where you can click "Download GitKraken Desktop Free" (_do not pay!!_):

The GitKraken installer will now download as `GitKrakenSetup.exe`.
Open this file and follow the prompts to install GitKraken onto your computer.
At the completion of installation, GitKraken will launch and ask you to login.
If you have already set up a GitHub account, you can use that to login, or simply close the window come back to finishing the setup later.

<img src="screenshots/windows/gitkraken_launch.png" alt="GitKraken launch window" width="500">

For more information on setting up a GitHub account and the initial GitKraken setup, see our [GitHub Setup instructions](github_gitkraken_setup_instructions.md).

## A suitable text editor

We will use a text editor to write code as part of this workshop, (and more generally, having a good text editor is something you want anyways!).
We recommend [Visual Studio Code ("VS Code")](https://code.visualstudio.com/), but if you already have a text editor you prefer, please feel free to stick with that!
Some alternatives you may have encountered are [Sublime Text](https://www.sublimetext.com/) and [Notepad++](https://notepad-plus-plus.org).

### Installing Visual Studio Code

To install VS Code, navigate to <https://code.visualstudio.com/download> in the browser.
Click the button labeled "Download for Windows".

<img src="screenshots/windows/vscode_download.png" alt="VSCode landing page">

The downloaded installer will have a name like `VSCodeUserSetup-x64-1.67.2.exe` (the exact name may vary depending on the current version).
Open this installer and follow the instructions for installing VS Code, agreeing to any required terms and providing any requested permissions.
When you reach the page titled "Select Additional Tasks", we recommend checking the all of the boxes in the "Other" section (some may be pre-checked).

<img src="screenshots/windows/vscode_install_options.png" alt="VSCode options window" width="349">

After installation is complete, we can install an extension to enable easier interaction between VS Code and WSL.
Open Visual Studio Code, and click the icon in the left side panel that looks like 4 squares (with one separated) to open the "Extensions" panel in the left panel.
In the search box that appears at the top of the left panel, type "WSL".
Select the "WSL" item from the list (with the penguin icon) and click the "Install" button.
(In prior versions, this extension was called "Remotes - WSL", so the screenshot below is not quite accurate)

<img src="screenshots/windows/vscode_wsl_extension.png" alt="VSCode extension installation" width="500">

VS Code is a very powerful program with a ton of ways to customize it.
All of the flexibility can be a tad overwhelming!
There are hundreds of options that affect the program's behavior and hundreds of available extensions which expand its functionality, or just change the way it looks.
We encourage you to explore a bit on your own; we'll be happy to share our favorite tricks during the workshop!
VS Code provides some useful [introductory videos](https://code.visualstudio.com/docs/getstarted/introvideos) as you begin your journey!
