#!/bin/sh

old_files_dir="$HOME/.old_config_files/"
dotfiles="
    #.ssh/config \
    .gitconfig \
    .tmux.conf \
    #.xinitrc \
    #.zprofile \
    .zshrc \
    .scripts/ \
    #.config/alacritty/alacritty.yml \
    #.config/dunst/dunstrc \
    .config/kitty/kitty.conf \
    .config/nvim/"

move_old_files()
{
    echo "Moving current dotfiles to ~/.old_config_files...\n"

    if [ -e $old_files_dir ]; then
        echo "$old_files_dir already exists (could contain old config files)."
        echo "Check the files, remove the directory and run this again if you \
            want to setup the dotfiles"
        exit 1
    else
        mkdir $old_files_dir
    fi

    #Check if there are old files to back them up before restore dotfiles
    for file in $dotfiles; do
        local_file="$HOME/$file"

        if [ -e $local_file ]; then
            mv -v $local_file $old_files_dir
        fi
    done
}


do_symlink()
{
    echo "\nSymlinking..."

    cp -rs $HOME/.dotfiles/files/. $HOME/

    echo "\nDone"
}


move_old_files
do_symlink
