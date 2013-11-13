#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -z $1 ]; then
    HOMEDIR="$( cd "$( dirname "~" )" && pwd )"
else
    HOMEDIR=${1%/}
fi

# Delete Existing Dotfiles

rm -rf $HOMEDIR/.vim
rm -f $HOMEDIR/.vimrc

# Create Symlinks

ln -s $DIR/vimrc $HOMEDIR/.vimrc
ln -s $DIR/vim $HOMEDIR/.vim

# Post Installation Setup

source $HOMEDIR/.bashrc
vim +BundleClean! +BundleInstall! +qall!
