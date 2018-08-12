#!/bin/bash

tmux has-session -t $1

if [ $? != 0 ]
then
    tmux new-session -s $1 -n "scripting" -d

    tmux split-window -h -t $1:1
    tmux split-window -v -t $1:1.2

    tmux select-window -t $1:1.2
fi

tmux attach -t $1
