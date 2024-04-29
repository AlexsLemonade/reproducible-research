# Instructor Notes: Set up for OpenScPCA


## Learning goals

- Understand how to create and launch a Lightsail for Research (LSfR) instance
- Be prepared to contribute with an OpenScPCA setup, _ideally_ on LSfR (connectivity permitting)
- Learn differences between local and LSfR setup

## Activity

For this activity, instructors will demonstrate setting up for OpenScPCA contribution and participants should follow along with all steps.
At the conclusion of this activity, participants should all have a ready-to-go OpenScPCA setup.

The goal for this activity is to set everyone up on LSfR, but we may need to pivot to local setup depending on the internet connectivity.
Different potential activity options are below:

### Introduction and LSfR instance setup

1. We will begin by presenting a set of slides outlining all setup steps
   - Slides will also have explained differences between local setup and LSfR setup

2. Direct participants to [fork](https://openscpca.readthedocs.io/en/latest/technical-setup/fork-the-repo/) `OpenScPCA-analysis`

3. Sign into LSfR and create a volume and an instance:
    - Sign in using the link you were emailed
      - Navigate to Service Catalog
      - [Create a Standard-XL VSCodium LSfR instance](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/creating-vcs/). TODO: This will take about 10 minutes to spin up. Let's sign
      - [Launch the instance](https://lfr.console.aws.amazon.com/ls/research/webapp/home/virtual-computers#) with the "Access operating system" dropdown
        - Note that this is generally recommended to be able to launch apps besides just VS Code
      - Explain that we are using VSCodium since we plan to write a Python module, but we could launch an RStudio instance for R development as well.
      Similarly, if we anticipated needing more computational resources, we could select different instance options.
      - Emphasize the benefits of using volumes when working across several types of instances

4. While the instance is spinning up (~10 minutes), [configure AWS CLI](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/configure-aws-cli/) locally


4. At this point, we'll have a clearer sense of how well the internet is behaving with LSfR.
We can either proceed to set up on LSfR or locally, with a preference for LSfR if internet allows.
    - Note that local setup may take an additional 10 minutes if participants need to install miniconda and/or setup AWS CLI

1. Set up the repo in GitKraken:
    - Sign into GitKraken with GitHub credentials, if not already signed in
    - [Clone](https://openscpca.readthedocs.io/en/latest/technical-setup/clone-the-repo/) your `OpenScPCA-analysis` fork, and add `AlexsLemonade/OpenScPCA-analysis` as the upstream remote

2. Now we pause the interactive demonstration for a set of slides about working with conda environments

3. Now that we have learned more about conda, set up our conda environment:
    - If setting up locally, begin by [installing miniconda](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/#install-conda), as needed
      - [Setup conda](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-conda/#set-up-conda)
  TODO: they need to run `conda activate` to get `(base)` in bash, def bash
    - [Setting up the conda environment](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/starting-development-on-lsfr/#create-and-activate-a-conda-environment)


4. Conclude by [setting up pre-commit](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-precommit/)
      - For this, we should use the GitKraken terminal interface







### Option 1: LSfR

### Option 2: Local Setup
TODO: Should we do sso configuration _anyways_?

