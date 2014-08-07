#!/bin/bash 

SESSION=DEV

# if the session is already running, just attach to it.
tmux has-session -t $SESSION
if [ $? -eq 0 ]; then
    echo "Session $SESSION already exists. Attaching."
    sleep 1
    tmux attach -t $SESSION
    exit 0;
fi

# create a new session, named $SESSION, and detach from it
tmux new-session -d -s $SESSION

tmux new-window -t $SESSION:0 -n vim 
tmux new-window -t $SESSION:1 -n portal 
tmux new-window -t $SESSION:2 -n cloudengine 
tmux new-window -t $SESSION:3 -n scheduler 
tmux new-window -t $SESSION:4 -n worker 
tmux new-window -t $SESSION:5 -n faye 
tmux new-window -t $SESSION:6 -n root 

tmux send-keys -t $SESSION:0 'cd ~/projects; vim' C-m
tmux send-keys -t $SESSION:1 'cdportal; rails s' C-m
tmux send-keys -t $SESSION:2 'cdce; rackup' C-m
tmux send-keys -t $SESSION:3 'cdce; rake resque:scheduler' C-m
tmux send-keys -t $SESSION:4 'cdce; rake resque:work' C-m
tmux send-keys -t $SESSION:5 'cdportal; foreman s' C-m
tmux send-keys -t $SESSION:6 'sudo su -' C-m

tmux select-window -t $SESSION:0
tmux attach -t $SESSION
