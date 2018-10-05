#!/bin/bash
SESSION=$USER

tmux -2 new-session -d -s $SESSION

tmux new-window -t $SESSION:0 -k -n 'cf' && sleep 0.2
tmux new-window -t $SESSION:1 -k -n 'cf' && sleep 0.2
tmux new-window -t $SESSION:2 -k -n 'cf' && sleep 0.2
tmux new-window -t $SESSION:3 -k -n 'fbcode' && sleep 0.2
tmux new-window -t $SESSION:4 -k -n 'fbcode' && sleep 0.2
tmux new-window -t $SESSION:5 -k -n 'fbcode' && sleep 0.2
tmux new-window -t $SESSION:6 -k -n 'ds' && sleep 0.2
tmux new-window -t $SESSION:7 -k -n 'ds' && sleep 0.2
tmux new-window -t $SESSION:8 -k -n 'www' && sleep 0.2

tmux send-keys -t $SESSION:1 "cd ~/configerator/source/healthcompass" C-m
tmux send-keys -t $SESSION:2 "cd ~/configerator/materialized_configs/healthcompass" C-m
tmux send-keys -t $SESSION:3 "cd ~/fbsource/fbcode" C-m
tmux send-keys -t $SESSION:4 "cd ~/fbsource/fbcode/mobile/warpspeed/scripts && ll" C-m
tmux send-keys -t $SESSION:5 "cd ~/fbsource/fbcode/mobile/warpspeed && ll" C-m
tmux send-keys -t $SESSION:6 "cd ~/dataswarm" C-m
tmux send-keys -t $SESSION:7 "cd ~/dataswarm/tasks/mobile/warpspeed" C-m
tmux send-keys -t $SESSION:8 "cd ~/www" C-m
# send to window 0 the last to avoid racing
tmux send-keys -t $SESSION:0 "cd ~/configerator" C-m

# Set default window
tmux select-window -t $SESSION:0
# Attach to session
tmux -2 attach-session -t $SESSION
