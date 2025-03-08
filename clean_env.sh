
#/usr/bin/env zsh
#
# make sure to source all required envs
#

pushd $DOTFILES_PATH
    for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
    do
	stow -D $folder
    done
popd

