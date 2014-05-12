#!/bin/bash
# run this script after cloning repo

git submodule init
git submodule update

while true
do
read -p "do you want to link zshenv to ~/.zshenv (Y/N)" yn
case $yn in
	[Yy]*) ln -s ~/.zsh/zshenv ~/.zshenv; break;;
	[Nn]*) break;;
	*) echo "please answer yes or no";;
esac
done

while true
do
read -p "do you want to link zshrc to ~/.zshrc (Y/N)" yn
case $yn in
	[Yy]*) ln -s ~/.zsh/zshrc ~/.zshrc; break;;
	[Nn]*) break;;
	*) echo "please answer yes or no";;
esac
done

while true
do
	read -p "do you want to install autoenv? (Y/N)" yn
	case $yn in
		[Yy]*) git clone git://github.com/kennethreitz/autoenv.git ~/.autoenv
			break;;
		[Nn]*) break;;
	*) echo "please answer yes or no";;
esac
done

while true
do
	read -p "do you want to install virtualenvwrapper? (Y/N)" yn
	case $yn in
		[Yy]*) pip install --user virtualenvwrapper
			break;;
		[Nn]*) break;;
	*) echo "please answer yes or no";;
esac
done
