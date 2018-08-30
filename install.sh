#!/bin/bash

dotfiles=("Xresources $HOME/.Xresources"
	  "bashrc $HOME/.bashrc"
	  "zshrc $HOME/.zshrc");

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
