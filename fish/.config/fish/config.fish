set -g fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    zoxide init fish | source
    fzf --fish | source
end
function y
    set tmp (mktemp -t "yazi-cwd.XXXXXX")
    yazi $argv --cwd-file="$tmp"
    if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
        builtin cd -- "$cwd"
    end
    rm -f -- "$tmp"
end

# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="l -a"
alias lla="ls -la"
alias lt="ls --tree"

alias c="clear"
alias n="nvim"
alias t="tmux"


alias mine="prime-run Downloads/mmc-cracked-lin64/UltimMC/UltimMC"
# env variable
export EDITOR=nvim
export PATH="$HOME/.emacs.d/bin:$PATH"
export TERM="xterm-256color"

export PATH="$PATH:$HOME/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/"
export PATH="$PATH:/home/bert/.dotnet/tools"
# export DOTNET_CLI_TELEMETRY_OPTOUT = true
# dotnet dev-certs https --trust

export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"
# export PATH="$PATH:$HOME/.dotnet/tools"

# Handy change dir shortcuts
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'

# Always mkdir a path (this doesn't inhibit functionality to make a single dir)
abbr mkdir 'mkdir -p'

# t a
# fastfetch
# uwufetch
# echo "
#        /\         bert@archlinux
#       /  \        os     Arch Linux
#      /\   \       host   Katana GF76 11UCX REV:1.0
#     /      \      kernel 6.11.5-arch1-1
#    /   ,,   \     uptime 7h 31m
#   /   |  |  -\    pkgs   1418
#  /_-''    ''-_\   memory 3957M / 7643M
# "
# zfetch
# rxfetch
sh /home/bert/welcome-script.sh

export FZF_CTRL_T_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'bat -n --color=always {}'
  "
# --bind 'ctrl-/:change-preview-window(down|hidden|)'
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="
  --walker-skip .git,node_modules,target
  --preview 'tree -C {}'"
