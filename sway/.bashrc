# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
# Ensure local bin directories are in the PATH
if ! [[ "$PATH" =~ (^|:)"$HOME/.local/bin"(:|$) ]] && ! [[ "$PATH" =~ (^|:)"$HOME/bin"(:|$) ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
# Load additional bash configuration files from ~/.bashrc.d
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

# Aliases
alias ls='ls -a --color=auto'
alias reload='source ~/.bashrc'
alias snano='sudo nano'
alias pirate='aria2c --seed-time 0'
alias volume='pulsemixer'
alias debloat='rm -rf ~/Downloads/* && rm -rf ~/Pictures/*scrn*'
alias opboot='/etc/opboot'
