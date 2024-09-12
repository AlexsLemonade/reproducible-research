

## Also staying for the OpenScPCA portion of the workshop?

If you are staying for the optional component of the workshop to learn about the OpenScPCA project, there are a few more setup steps you will need to follow.
These instructions are based on the full [OpenScPCA Project's setup instructions](https://openscpca.readthedocs.io/en/latest/technical-setup/), but you only need to follow the specific steps listed here.

1. Before the workshop, you will receive an email inviting you to join AWS IAM Identity Center, which will allow you to access OpenScPCA data and compute resources.
    - [Follow these instructions](https://openscpca.readthedocs.io/en/latest/aws/joining-aws/) to accept this invitation and configure multifactor authentication.
    - _You are only eligible for an OpenScPCA AWS account after you fill out the [OpenScPCA intake form](https://share.hsforms.com/1MlLtkGYSQa6j23HY_0fKaw336z0) where you agree to [OpenScPCA's policies](https://openscpca.readthedocs.io/en/latest/policies/)._

2. [Install Miniforge](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/#install-conda), a lightweight distribution of the package management software conda.
    - If you are on a Windows machine, will need to install Miniforge into the WSL 2 (Ubuntu) side of your computer
    - You do _not_ need to also set up conda; we will do this together during the workshop

### Additional installations for Windows users

Previously, you should have [already installed R/RStudio, Visual Studio Code, and GitKraken](windows_installation_instructions.html) onto the _Windows_ side of your computer.

You will now need to perform some additional installations that let you use these platforms from the WSL 2 (Ubuntu) side of your computer, either by installing a new version of the software or a software plugin.

Now, you will need to install install softwares again, but onto the WSL 2 (Ubuntu) side of your computer, as well as other programming tools.
Follow these instructions to complete the additional installations:

1. [Install GitKraken](https://openscpca.readthedocs.io/en/latest/technical-setup/install-a-git-client/#install-gitkraken-on-windows-with-wsl-2) onto the WSL 2 (Ubuntu) side of your computer
    - You should also authenticate this version of GitKraken with your GitHub account
2. [Install R](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/install-r-rstudio/#install-r-on-windows-with-wsl-2) onto the WSL 2 (Ubuntu) side of your computer
3. [Install RStudio Server](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/install-r-rstudio/#install-rstudio-server-on-windows-with-wsl-2) onto the WSL 2 (Ubuntu) side of your computer
4. To enable you to use Visual Studio Code from Ubuntu, [install the WSL 2 extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsld)
