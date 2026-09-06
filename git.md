# Create a new repo (Sub directory of an existing repo) and push all the files via CLI
```bash
git init
git add .
git commit -m "Initial commit"
brew install gh
gh auth login
gh repo create your-repo-name --private --source=. --remote=origin --push
git remote add origin https://github.com/YOUR_USERNAME/your-repo-name.git
git branch -M main
git push -u origin main
```
-----------------
# update from git bash
```bash
git update-git-for-windows
```
-----------------
# commit and push changes
run from the directory 
```bash
git init 
git status 
git add . 
git commit -m "add" 
git push origin main 
```
------------------
# public repo clone just allow hidden files and delete .git file init a repo through vscode
-----------------
# reverting to a specific commit 
```bash
git log --oneline 
# grab the address + don’t forget the dot 
git checkout <commit id> . git add -A 
git commit -m "<custom message>" 
git push
```
-----------------
# resolve conflicts (can use github desktop) 
update from main to current branch  
go to main and pull 
run from current branch
```bash
git rebase main
git rebase --continue
git push --force
```
-----------------
# always create a branch and work and commit for pull request

-----------------
# delete specific commit
```bash
git rebase -i <onebeforecommit id>
# locate the line of commit(set to drop)
# save and exit
git push --force
```
-----------------
# untrack a file after committed to git (updated gitignore)
```bash
git update-index --assume-unchanged <filename>

# reverse (retrack)
git ls-files | xargs git update-index --no-assume-unchanged

# for directories
cd dir
git ls-files | xargs git update-index --assume-unchanged

# then remove that from the repo (not locally)
git rm -r --cached <file name>
git commit -m "Remove <file name> from repository and add to .gitignore"
git push origin HEAD

# ---- Purge a file/folder from git history ----
#
# Prereqs: git-filter-repo installed, and a clean working tree
# (commit or stash pending changes first — filter-repo refuses to run dirty).

# 1. Purge the file/folder from all history
git filter-repo --path notebooks/<name>.ipynb --invert-paths --force

# 2. Re-add the remote (filter-repo strips it for safety)
git remote add origin https://github.com/kavindu-w/<repo-name>.git

# 3. Fetch so git knows about remote branches
git fetch origin

# 4. Re-set upstream tracking on main
git branch --set-upstream-to=origin/main main

# 5. Force-push main (force-with-lease is safer than plain --force —
#    it aborts if origin/main moved since your last fetch)
git push --force-with-lease origin main

```
-----------------
# disable filename too long warning in windows
```bash
git config --global core.longpaths true
```
-----------------
# clone public repo and push to private
```bash
# create a blank repo without readme via website
# cd to repo
git remote set-url origin https://github.com/YOUR_USERNAME/<newly created repo name>.git
git branch -M main  # Rename branch to main if needed
git push -u origin main
```
