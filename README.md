# gitfem


A simple bash script for Front End Masters (fem) tracking the project commits. Saves ou have to type in the git commands each time a new branch is created.

Open git.sh change checkoutDir appropriately

checkoutDir="/Users/darragh.duffy/GoogleDrive/labs/complete-intro-to-react"

Usage: gitfem 13

Performs the following

git fetch origin

git reset --hard

git branch --track fem-X origin/fem-X

git checkout fem-X

git clean -f

where X is the step number

Load into .profile or .bashrc by adding following line

source "/path-to-file/git.sh"