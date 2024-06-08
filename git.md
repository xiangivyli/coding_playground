# Table of Contents
- [Basics](#basics)
- [Branch Management](#branch-management)
- [Staging and Unstaging](#staging-and-unstaging)
- [Merge Branches](#merge-branches)
## Basics
### Initialise a new Git repository
```bash
git init
```
### Clone an existing repository
```bash
git clone <repository-url>
```
### Check the status of the repository
```bash
git status
```
### Add files to the staging area
```bash
git add .
```
```bash
git add <file-name>
```
### Commit changes with a message
```bash
git commit -m "commit message"
```
### Push changes to the remote repository
```bash
git push origin <branch-name>
```
### Pull changes from the remote repository
```bash
git pull origin <branch-name>
```

## Branch Management
### List branches (local, remote, all)
```bash
git branch
```
```bash
git branch -r
```
```bash
git branch -a
```
### Create a new branch
```bash
git branch <branch-name>
```
### Create a new branch and switch to it
```bash
git checkout -b <branch-name>
```
### Merge a branch into the current branch
```bash
git merge <branch-name>
```
### Delete a branch
```bash
git branch -d <branch-name>
```

## Staging and Unstaging
### Remove files from the staging area (specified, all)
```bash
git reset <file-name>
```
```bash
git reset 
```
### Undo the latest commit
- The default option is `--mixed`
- Unstages changes (moving them from the staging area to the working directory)
- Keeps changes in the working directory
```bash
git reset HEAD~1
```
### Undo the last two commits and keep changes
```bash
git reset HEAD~2
```
### Reset commit with `--soft`, keep the changes staged but modify the commit message
```bash
git reset --soft HEAD~1
git commit -m "New commit message"
```
### Reset commit with `--hard`, discard all changes even in the working directory
```bash
git reset --hard HEAD~1
```
### Remove a file from the working directory and the staging area
```bash
git rm <file-name>
```

## Merge Branches
### 1. On the target branch
```bash
git checkout <target-branch>
```
### 2. Update local repository
```bash
git pull origin <target-branch>
```
### 3. Merge the source branch into the target branch
```bash
git merge <source-branch>
```
### 4. Commit the merge
```bash
git commit
```
### 5. Push the merged changes to the remote repository
```bash
git push origin push
```



