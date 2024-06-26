
# Instructor Notes: Code Review Walkthrough


## Learning goals

- Get familiar with a typical code review process in the OpenScPCA project
- Understand the components of a Pull Request (PR) in the OpenScPCA project
- See what a typical review process might look like

## Activity/Demo

Instructor will walk/talk through an example pull request in the OpenScPCA project.
The participants are not expected to do anything but follow along (though they might open some of the links in their own browser to read more easily).

1. Start with the showing the following open issue: https://github.com/AlexsLemonade/OpenScPCA-analysis/issues/374
    - Note the link back to the discussion topic. (revisit the form for submitting a new issue and/or discussion topic here, as review)
    - Show that there are other issues linked to this discussion/module, with each representing a chunk of work
    - Note links to other issues (we probably want to do this from a browser _without_ ZenHub)
    - Note assignees

2. Show the Pull Request template:
    - Open a new tab to *your* fork of the OpenScPCA-analysis repository
    - Have a branch with some changes ready to go, and navigate to that branch (this should be ready from the previous activity)
    - Start to create a PR from that branch back to upstream/main
    - Show the pull request template: note that this one is _not_ a form, but a Markdown file that you will need to edit
    - Suggest copying the template to a new file to work on it, and then pasting results in
    - Point out checkboxes at the bottom: these can be checked off after filing the PR!

3. Navigate, in a new tab, to the following completed PR: https://github.com/AlexsLemonade/OpenScPCA-analysis/pull/391
    - Show how this is an excellent example of a PR, with links to relevant issues, a clear description of the changes, and instructions for the reviewer
    - Note the link to the results directory

4.  Go over the first review, noting that the first review is generally going to be a high-level review
    - How much code is there here, is the organization good?
    - Are the changes clear?
    - What questions did the submitter have?
    - There may also be line-level comments; show how those look, but note that they may get more detailed later.

5.  A brief scan through the remaining comments on the PR
    - Note that review comments are likely to get more detailed (though easier) as the review process goes on.
    - Discuss different kinds of comments (line, file, overall)
    - Point out button to resolve a comment (and comment about what that means)
