#!/bin/sh

arg=$1
old_files_dir="$HOME/.old_config_files"
dotfiles=".gitconfig .vimrc .zshrc .tmux.conf .scripts .fonts/FiraCode-Regular.ttf \
    .fonts/FiraCode-Regular-Symbol.otf .emacs.d/fira-code-mode .emacs.d/init.el \
    .emacs.d/myinit.org .config/alacritty/alacritty.yml .config/nvim/init.vim \
    .config/i3/config .config/i3/i3blocks.conf"


move_old_files()
{
    echo "Moving current dotfiles to ~/.old_config_files...\n"

    mkdir -p $old_files_dir

    #Check if there are old files to back them up before restore dotfiles
    for file in $dotfiles; do
        local_file="$HOME/$file"

        if [ -L $local_file ]; then
            # rm $local_file
            echo "$local_file was a symlink"
            continue
        elif [ -e $local_file ]; then
            mv $local_file $old_files_dir
            echo "$local_file was move to $old_config_files"
        fi
    done
}


do_symlink()
{
    echo "\nSymlinking..."

    for file in $dotfiles; do
        remote_file="$HOME/.dotfiles/$file"
        target="$HOME/$file"

        #ln -s $remote_file $target
    done
}


move_old_files
do_symlink
