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
# for directories
cd dir
ls | xargs -l git update-index --assume-unchanged
```
-----------------
# disable filename too long warning in windows
```bash
git config --global core.longpaths true
```
