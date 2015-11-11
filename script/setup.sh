#!/bin/zsh



## submoduleの読み込み
git submodule update --init


## dotfilesのリンクを張る

# 主なdotfilesのリンク
DOT_FILES=(zshenv vimrc emacs.d tmux.conf vim atom gitignore_global)

if [ ! -d $HOME/.dotfiles/refuge ]; then
	mkdir $HOME/.dotfiles/refuge
	echo "Made directory refuge".
fi

TODAY=`date '+%F'`

if [ ! -d $HOME/.dotfiles/refuge/$TODAY ]; then
	mkdir $HOME/.dotfiles/refuge/$TODAY
	echo "Made directory $TODAY in refuge."
fi


# 元々のdotfilesの削除または退避, 及びリンクを貼る関数.
link_dotfiles(){
	FILENAME=${1}
	if [ -e $HOME/.$FILENAME ]; then
		if [ -L $HOME/.$FILENAME ]; then
			rm $HOME/.$FILENAME
			echo "$FILENAME is synbolic link. Removed."
		else
			mv -r $HOME/.$FILENAME $HOME/.dotfiles/refuge/$TODAY/
			echo "$FILENAME is not synbolic link. Moved to refuge."
		fi
	fi

	if [ $# -eq 1 ]; then
		ln -s $HOME/.dotfiles/_.$FILENAME $HOME/.$FILENAME
		echo "Made synbolic link $FILENAME."
	else
		FROMFILENAME=$2
		ln -s $FROMFILENAME $HOME/.$FILENAME
		echo "Made synbolic link $FILENAME from $FROMFILENAME"
	fi
}


# DOT_FILESへのリンクを貼る
for file in ${DOT_FILES[@]}
do
	link_dotfiles $file
done

# tmuxfilesへのリンクを貼る
link_dotfiles tmux $HOME/.dotfiles/tmuxfiles/_.tmux


# vimfilesのリンク
#if [ -e ~/.vim ]; then
#	rm ~/.vim
#fi

#ln -s ~/.dotfiles/vimfiles ~/.vim


# preludeへのリンクを張る
# link_dotfiles emacs.d $HOME/.dotfiles/prelude
