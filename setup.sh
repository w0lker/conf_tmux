#!/bin/bash

version=`tmux -V|awk '{print $2}'`

if [ `echo "$version > 2.0" | bc` -eq 1 ];then 
    echo "import config tmux.conf.2.x for:$version"
    if [ !-d ~/.tmux ];then
        mkdir ~/.tmux
    fi
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
    cp -f `pwd`/tmux.conf.2.x ~/.tmux.conf
else
    echo "import config tmux.conf.1.x for:$version"
    cp -f `pwd`/tmux.conf.1.x ~/.tmux.conf
fi
