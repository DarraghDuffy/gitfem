# gitfem


A simple bash script for Front End Masters (fem) tracking the project branches (fem-1, fem-2 ... fem13). Saves you having to type in the git commands each time a new branch is created. Changes you to your checkout directory, after branch checkout performs directory listing and runs a git branch confirming the current branch.

Open git.sh change checkoutDir appropriately

checkoutDir="/Users/darragh.duffy/GoogleDrive/labs/complete-intro-to-react"

Usage: gitfem 13

Performs the following

git fetch origin

git reset --hard

git branch --track fem-X origin/fem-X

git checkout fem-X

git clean -f

ls && git branch

where X is the step number

Load into .profile or .bashrc by adding following line

source "/path-to-file/git.sh"