# Paths
# At some point, you will create shell scripts and want to 
# access those from all directories. Or you'll install software
# from command line. It's customary to put these in "bin"
# directory under the home dir. This ads them to the path.
# export PATH="~/bin:/usr/local/sbin:$PATH"

PATH="/usr/local/bin:$PATH"

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# blupf90 programs path
# export PATH="~/libs/blupf90/bin64bits:$PATH"

# General aliases
# The following shows the directory listing with directories
# and the listing is in long format and colorized. I.e. you'll
# see different types (such as symbolic links) easier.
# alias ll='ls -la -G'
# this changes the file sizes to more human readable
# alias lh='ls -lah -G'
#export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[35m\]\h \[\033[33;1m\]\W\[\033[m\] $ "
#export PS1="\u@\h:\w\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
#alias ls='ls -GFh'
alias ls='ls -Gh'
alias ll='ls -lth'
# awk is gawk
alias awk='gawk'
# shortcut to work directory
alias wkdir='cd /Users/manuel/Work/PROJECTS/'
# function to explore ped files
headped () {
  head $1 | cut -d' ' -f1-12
}

# function that prints last 10 modif files
lastfiles() {
  ls -lth | head -10
}

# function to unload/load UCLM VPN
unloadUCLM() {
  launchctl unload /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*
}

loadUCLM() {
  launchctl load /Library/LaunchAgents/com.paloaltonetworks.gp.pangp*
}

# added by Miniconda3 4.3.11 installer
# export PATH="/Users/manuel/libs/miniconda3/bin:$PATH"

# History file
HISTCONTROL=ignoreboth:erasedups HISTSIZE=100000 HISTFILESIZE=200000

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/Users/manuel/libs/miniforge3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
#    eval "$__conda_setup"
#else
#    if [ -f "/Users/manuel/libs/miniforge3/etc/profile.d/conda.sh" ]; then
#        . "/Users/manuel/libs/miniforge3/etc/profile.d/conda.sh"
#    else
#        export PATH="/Users/manuel/libs/miniforge3/bin:$PATH"
#    fi
#fi
#unset __conda_setup
# <<< conda initialize <<<
# conda env list


# remove message suggesting change to zsh
export BASH_SILENCE_DEPRECATION_WARNING=1


# rscopus key
# export Elsevier_API=ee52dba4e3ed5824cf6372b339643266




### EOF
