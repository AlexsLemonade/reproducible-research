# Instructor Notes: Set up for OpenScPCA


## Learning goals

- Understand how to create and launch a Lightsail for Research (LSfR) instance
- Be prepared to contribute with an OpenScPCA setup, _ideally_ on LSfR (connectivity permitting) and (at least partially) locally
- Learn differences between local and LSfR setup

## Activity

For this activity, instructors will demonstrate setting up for OpenScPCA contribution and participants should follow along with all steps.
At the conclusion of this activity, participants should all have a ready-to-go OpenScPCA setup.

The goal for this activity is to set everyone up on LSfR, but we if internet connectivity is too poor, we can focus on the local setup steps:

1. We will begin by presenting a set of slides outlining all setup steps
   - Slides will also have explained differences between local setup and LSfR setup

2. Direct participants to [fork](https://openscpca.readthedocs.io/en/latest/technical-setup/fork-the-repo/) `OpenScPCA-analysis`

3. Sign into LSfR and create an instance:
    - Sign in using the link you were emailed
    - Navigate to Service Catalog
    - [Create a Standard-2XL VSCodium LSfR instance](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/creating-vcs/)
      - Explain that we are using VSCodium since we plan to write a Python module, but we could launch an RStudio instance for R development as well.
      Similarly, if we anticipated needing more computational resources, we could select different instance options.

4. While the instance is being created (~10 minutes), lead participants through some _local setup_:

  - [Set up conda](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/) (assuming it has already been installed):
    ```bash
    # set up channels
    conda config --add channels defaults
    conda config --add channels bioconda
    conda config --add channels conda-forge
    conda config --set channel_priority strict

    # install packages into base
    conda install awscli conda-lock jq pre-commit
    ```

  - [Configure AWS CLI](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/configure-aws-cli/) (may wish to show this website during configuration for prompt responses)
    ```bash
    # launch configuration and fill in prompts
    aws configure sso

    # after configuration, log in (this will launch a browser)
    aws sso login --profile openscpca
    ```

  - If we have time and/or it's clear we need to work locally, they can also clone their `OpenScPCA-analysis` fork, and [set up pre-commit](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-precommit/) via the GitKraken terminal

5. Back on LSfR, [create a volume](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/working-with-volumes/) and attach it to the VSCodium instance.

6. Finally, we can [launch the VSCodium instance](https://lfr.console.aws.amazon.com/ls/research/webapp/home/virtual-computers) and set up:
    - First, launch from the "Access operating system" dropdown
      - Set up the [conda environment](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/starting-development-on-lsfr/#create-and-activate-a-conda-environment):
      !! REVIEWER TODO: We are recommending installing into an openscpca environment here but into base environment for local setup. Do we want to change any docs?
        ```bash
        # configure channels
        conda config --add channels defaults
        conda config --add channels bioconda
        conda config --add channels conda-forge
        conda config --set channel_priority strict

        # create openscpca environment
        cd ~/{your disk's name}/OpenScPCA-analysis
        conda env create -f environment.yml

        # activate
        conda activate openscpca
        ```

      - Clone the repo with GitKraken:
        - Sign into GitKraken with GitHub credentials, if not already signed in
        - [Clone](https://openscpca.readthedocs.io/en/latest/technical-setup/clone-the-repo/) your `OpenScPCA-analysis` fork, and add `AlexsLemonade/OpenScPCA-analysis` as the upstream remote

      - [Set up pre-commit](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-precommit/) via the GitKraken terminal

7. _While keeping the instance window open_, return to the LSfR page to launch the instance as `VSCodium`.
    - We'll now have two browser windows: One with Ubuntu and one with VS Code that can be used side-by-side

8. Finally, close both windows and _Stop the computer_.
    - This emphasizes that it's helpful to stop their instances when they're not using it for the sake of preserving their monthly budget.
    - But note also that after a period of low CPU usage, it will shut off automatically
