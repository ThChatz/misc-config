#!/bin/bash

dotfiles=("Xresources $HOME/.Xresources"
	  "bashrc $HOME/.bashrc"
	  "zshrc $HOME/.zshrc"
	 "polybar-conf $HOME/.config/polybar/config");

# Create polybar config directory
mkdir -p ~/.config/polybar

# loop over the array and create links
i=0;
while [ -n "${dotfiles[i]}" ]
do
    t=(${dotfiles[i]})
    cmd="cp -l ./${t[0]} ${t[1]}"
    echo $cmd, $(pwd)
    $cmd
    # increase i
    let "i++"
done;
