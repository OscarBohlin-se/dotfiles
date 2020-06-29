# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

shopt -s autocd #Do not require the cd prefix to cd into directory

#Colour settings
alias ls="ls -hN --colour=auto --group-directories-first"
alias grep="grep --colour=auto"
alias ccat="highlight --out-format=ansi" #Colour cat, syntax highlighting

#General settings
alias cp="cp -iv"
alias mkd=" mkdir -pv"
alias rmd="rm -rfv"
alias starwars="telnet towel.blinkenlights.nl" #:^)
alias mv="mv -iv"

#Youtube-dl settings
alias yt="youtubr-dl --add-metadata -ic" #Download video link, not restricted to YouTube
alias yta=" youtube-dl --add-metadata -xic" #Only download audio from video link, not restricted to YouTube

#Xclip -- copy and paste from the cli

alias pbcopy="xclip -selection clipboard"
alias copy="xclip"
alias paste="xclip -o"

