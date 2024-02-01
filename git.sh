# update from git bash
git update-git-for-windows
-----------------
# run from the directory 
git init 
# which branch 
git status 
git add . 
git commit -m "add" 
git push origin main 
------------------
# public repo clone just allow hidden files and delete .git file init a repo through vscode
-----------------
# reverting to a specific commit 
git log --oneline 
# grab the address + don’t forget the dot 
git checkout be9055b . git add -A 
git commit -m "custom message" 
git push
-----------------
# resolve conflicts (can use github desktop) 
# update from main to current branch  
# go to main and pull 
# run from current branch
git rebase main
git rebase --continue
git push --force
-----------------
# always create a branch and work and commit for pull request

-----------------
# delete specific commit
git rebase -i onebeforecommit
# locate the line of commit(set to drop)
# save and exit
git push --force
-----------------
# untrack a file after committed to git (updated gitignore)
git update-index --assume-unchanged <filename>
# for directories
cd dir
ls | xargs -l git update-index --assume-unchanged
