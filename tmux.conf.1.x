set -g prefix C-a
set -g default-terminal "xterm-256color"
set -sg escape-time 1
set -g base-index 1
set -g history-limit 9999

set -g mode-mouse on

set -g status-left-length 40
set -g status-right "#(date +%H:%M' ')"
set -g status-fg colour66
set -g status-bg colour235
set -g status-interval 10
set -g status-attr default

set -g pane-border-fg colour235
set -g pane-active-border-fg colour240
set -g display-panes-active-colour colour33
set -g display-panes-colour colour166

set -g message-bg colour235
set -g message-fg colour66

setw -g mode-keys vi
setw -g pane-base-index 1
setw -g window-status-current-fg colour69
setw -g window-status-current-bg default

unbind C-b
bind C-a send-prefix
bind | split-window -h
bind - split-window -v
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-pipe "reattach-to-user-namespace pbcopy" 
