#/usr/bin/env zsh
#
# make sure to source all required envs
#

pushd $DOTFILES_PATH
    for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
    do
	echo "stow $folder"
	stow -D $folder
	stow $folder
    done
popd

if [ -d "$PERSONAL_FOLDER" ]; then
    pushd $PERSONAL_FOLDER
	./install
    popd $PERSONAL_FOLDER
fi

exec zsh
