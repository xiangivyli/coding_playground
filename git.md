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



