# 1. Create a temporary, history-less branch
git checkout --orphan temp_branch

# 2. Add and commit all your current files
git add -A
git commit -m "Initial commit"

# 3. Delete the old main/master branch locally
git branch -D main

# 4. Rename the temporary branch to main
git branch -m main

# 5. Overwrite the remote history (Warning: Destructive!)
git push -f origin main

git push --set-upstream origin main
