# Instructor Notes: Set up for OpenScPCA


## Learning goals

- Understand how to create and launch an LSfR instance
- Be prepared to contribute with an OpenScPCA setup on LSfR
- Learn differences between local and LSfR setup

## Activity

For this activity, instructors will demonstrate setting up for OpenScPCA contribution on Lightsail for Research, and participants should follow along with all steps.
At the conclusion of this activity, participants should all have a ready-to-go OpenScPCA setup on LSfR.

1. We will begin by presenting a set of slides outlining all setup steps
   - Slides will also have explained differences between local setup and LSfR setup

2. Direct participants to [fork](https://openscpca.readthedocs.io/en/latest/technical-setup/fork-the-repo/) `OpenScPCA-analysis`

3. Sign into and familiarize with LSfR:
    - [Launch a (small) VSCodium LSfR instance](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/creating-vcs/).
      - Explain that we are using VSCodium since we plan to write a python module, but we could launch an RStudio instance for R development as well.
      Similarly, if we anticipated needing more computational resources, we could select different instance options.
      - Emphasize the benefits of using volumes when working across several types of instances
    - To familiarize participants with LSfR Desktop, launch some apps: terminal, VS Code, and GitKraken

4. Set up the repo in GitKraken:
    - Sign into GitKraken with GitHub credentials
    - [Clone](https://openscpca.readthedocs.io/en/latest/technical-setup/clone-the-repo/) your `OpenScPCA-analysis` fork, and add `AlexsLemonade/OpenScPCA-analysis` as the upstream remote

5. Now we pause the interactive demonstration for a set of slides about working with conda environments

6. Now that we have learned more about conda, we'll wrap up the interactive demonstration by:
    - [Setting up the conda environment](https://openscpca.readthedocs.io/en/latest/software-platforms/aws/starting-development-on-lsfr/#create-and-activate-a-conda-environment)
    - [Setting up pre-commit](https://openscpca.readthedocs.io/en/latest/technical-setup/environment-setup/setup-precommit/)
      - For this, we should use the GitKraken terminal interface