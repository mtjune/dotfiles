#!/usr/bin/sh

# gitが使えるか確認
if type git > /dev/null 2>&1 then

  git clone https://github.com/mtjune/dotfiles.git ~/.dotfiles
  cd ~/.dotfiles && echo "moved $HOME/.dotfiles"
  script/setup.sh

else

  echo "git not found !"
  echo "please install git"

fi
