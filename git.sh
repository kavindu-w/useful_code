// run from the directory 
git init 
// which branch 
git status 
git add . 
git commit -m "add" 
git push origin main 

// public repo clone just allow hidden files and delete .git file init a repo through vscode

reverting to a specific commit 
git log --oneline 
// grab the address + don’t forget the dot 
git checkout be9055b . git add -A 
git commit -m "custom message" g
it push

// resolve conflicts
// go to main and pull
git rebase main
git rebase --continue
git push --force

//always create a branch and work and commit for pull request


// delete specific commit
git rebase -i onebeforecommit
// locate the line of commit(set to drop)
// save and exit
git push --force
