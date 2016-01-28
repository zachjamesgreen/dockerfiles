#!/bin/sh
base_path="/home/git/repos"

exists() {
  if [ -d $1 ]; then
    echo -n "Repo exists. Overwrite? (y/n)? "
    read answer
    if echo "$answer" | grep -iq "^y" ;then
        return 0
    else
        echo "Please choose a different repo name"
        exit 1
    fi
  else
    return 0
  fi
}

showhelp() {
  echo "Usage: newrepo -r <REPO>\n\n\t\br\trepository name"
}

while getopts :r:h o; do
  case $o in
    r)
      path="${base_path}/${OPTARG}.git"
      exists $path
      retval=$?
      break
      ;;

    h|:)
      showhelp
      exit 1
      ;;
    ?)
      showhelp
      exit 2
      ;;
  esac
done
if [ "$retval" = 0 ]; then
  echo "Initiliazing repo in $path"
  mkdir $path
  git init --bare $path
  chown -R git:git $path
fi
