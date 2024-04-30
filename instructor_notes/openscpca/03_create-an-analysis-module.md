
# Instructor Notes: Making an analysis module Activity


## Learning goals

- Gain more experience creating and working in a feature branch
- Gain experience creating a module with a conda environment
- Gain familiarity with module documentation

## Activity

For this activity, instructors will demonstrate creating a module while participants actively follow along.
The lead instructor should, like particpants, work in their fork of `OpenScPCA-analysis` and lead participants through these steps:

1. Ensure your fork's `main` branch is up-to-date, following [these instructions](https://openscpca.readthedocs.io/en/latest/contributing-to-analyses/working-with-git/staying-in-sync-with-upstream/).

2. Have a look at the issue in `AlexsLemonade/OpenScPCA-analysis` created for the workshop
    - Discuss what information we learn from the issue
    - Note that the issue _is not_ about completing an entire analysis top to bottom, but focuses on a highly modular, if you will, task: Establishing a module

3. Locally, check out a feature branch named roughly `<issue-number>-create-<module-name>`

4. Run the module creation script:
   - Take some time to explore the created module, including the environment files
   - Practice activating and deactivating the environment

    ```bash
    ./create-analysis-module.py <module-name> --use-conda
    ```

5. Add and commit the skeleton module files

6. Add some content to the module `README.md` describing the module's goals
    - Explain that for a real analysis, they would fill in the `README.md` as they develop the module
    - State that in the next demonstration where we continue to develop the module, we'll fill in this `README.md` with additional information

7. Add/commit/push the changes to the `README.md` file