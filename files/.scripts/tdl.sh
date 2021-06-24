#!/usr/bin/env bash

session_name=$1

tmux new-session -d -s $session_name

tmux rename-window General

tmux new-window -t $session_name:1 -n Code
tmux new-window -t $session_name:2 -n Run

tmux select-window -t $session_name:0

tmux attach-session -t $session_name
