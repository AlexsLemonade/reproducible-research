
# Instructor Notes: Code Review Walkthrough


## Learning goals

- Get familiar with a typical code review process in the OpenScPCA project
- Understand the components of a Pull Request (PR) in the OpenScPCA project
- See what a typical first review might look like

## Activity

1. Start with the showing the following open issue: https://github.com/AlexsLemonade/OpenScPCA-analysis/issues/374
   - Note the link back to the discussion topic. (Do we want to show the form for submitting a new issue and/or discussion topic here?)
   - Note links to other issues (we probably want to do this from a browser _without_ zenhub)
   - Note assignees as a thing?

2. Open a new tab to your fork of the OpenScPCA-analysis repository:
   - Have a branch with some changes ready to go, and navigate to that branch
   - Start to create a PR from that branch back to origin/main
   - Show the pull request template: note that this one is _not_ a form, but a markdown file that you will need to edit
   - Suggest copying the template to a new file to work on it, and then pasting results in.

3. Navigate, in a new tab, to the following completed PR: https://github.com/AlexsLemonade/OpenScPCA-analysis/pull/391
   - Show how this is an excellent example of a PR, with links to relevant issues, a clear description of the changes, and instructions for the reviewer
     - Note the link to the results directory
   - Go over the first review, noting that the first review is generally going to be a high-level review
     - How much code is there here, is the organization good?
     - Are the changes clear
     - What questions did the submitter have?
     - There may also be line-level comments, show how those look, but note that they may get more detailed later
   - A brief scan through the remaining comments, noting that they are likely to get more detailed (though easier) as the review process goes on.
