forGrdRed="\033[31m"
forGrdGreen="\033[32m"
forGrdYellow="\033[33m"
forGrdHelp="\033[33m"
forReset="\033[0m"

#Where all my checkouts (projects) are kept
checkoutDir="/Users/darragh.duffy/GoogleDrive/labs/complete-intro-to-react"

function gitfem() {
  if [ $# -eq 0 ]; then
    echo -e " "$forGrdRed"run gitfem help"$forReset""
  elif [ "$1" == "help" ]; then
          echo -e "$forGrdHelp"
            echo -e "usage: gitfem step"
            echo -e "usage example: gitfem 13"
            echo -e "this will checkout fem-13 "
          echo -e "$forReset"
  else
    pushd $checkoutDir
      git fetch origin
      git reset --hard
      git branch --track fem-"$1" origin/fem-"$1"
      git checkout fem-"$1"
      git clean -f
  fi
}