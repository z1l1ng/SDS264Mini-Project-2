# SDS264Mini-Project-2

## `Git` Workflow

## Rain

### Step 1: Collaborator clone

To be able to contribute to a repository, the Collaborator must clone the repository from the Owner’s GitHub account. To do this, the Collaborator should visit the GitHub page for the Owner’s repository, and then copy the clone URL. In R Studio, the Collaborator will create a new project from version control by pasting this clone URL into the appropriate dialog (see the earlier chapter introducing GitHub).

### Step 2: Collaborator edit

With a clone copied locally, the Collaborator can now make changes to the `README.md` file in the repository, adding a line or statement somewhere noticeable near the top. Save your changes.

### Step 3: Collaborator `commit` and `push`

To sync changes, the Collaborator will need to `add`, `commit`, and `push` their changes to the Owner’s repository. But before doing so, it’s good practice to `pull` immediately before committing to ensure you have the most recent changes from the Owner. So, in RStudio’s `Git` tab, first click the “Diff” button to open the `Git` window, and then press the green “Pull” down arrow button. This will fetch any recent changes from the origin repository and merge them. Next, `add` the changed `README.Rmd` file to be committed by clicking the check box next to it, type in a commit message, and click “Commit”. Once that finishes, then the Collaborator can immediately click “Push” to send the commits to the Owner’s GitHub repository.

### Step 4: Owner `pull`

Now, the Owner can open their local working copy of the code in RStudio, and `pull` those changes down to their local copy.

**Congrats, the Owner now has your changes!**

### Step 5: Owner edits, `commit`, and `push`

Next, the Owner should do the same. Make changes to a file in the repository, save it, `pull` to make sure no new changes have been made while editing, and then `add`, `commit`, and `push` the Owner changes to GitHub.

### Step 6: Collaborator `pull`

The Collaborator can now `pull` down those Owner changes, and all copies are once again fully synced. And you’re off to collaborating.

Ahead
