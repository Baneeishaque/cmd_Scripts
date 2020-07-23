REM Remove the history from repository
rm -rf .git

REM recreate the repos from the current content only
git init
git add .
git commit -m "Initial commit"

REM TODO : Get remote repo address from existing repository - save it on a variable, use it on adding of remote
REM push to the github remote repos ensuring you overwrite history
REM git remote add origin git@github.com:<YOUR ACCOUNT>/<YOUR REPOS>.git
REM git push --force --set-upstream origin master