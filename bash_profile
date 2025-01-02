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
export PATH="$HOME/libs/blupf90/bin:$PATH"

# stack size
ulimit -s hard

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


# qfind - used to quickly find files that contain a string in a directory
qfind () {
  find . -exec grep -l -s $1 {} \;
  return 0
}


# added by Miniconda3 4.3.11 installer
# export PATH="/Users/manuel/libs/miniconda3/bin:$PATH"

# History file
HISTCONTROL=ignoreboth:erasedups HISTSIZE=100000 HISTFILESIZE=200000

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# conda env list


# remove message suggesting change to zsh
export BASH_SILENCE_DEPRECATION_WARNING=1


# rscopus key
# export Elsevier_API=ee52dba4e3ed5824cf6372b339643266


# perlbrew
source $HOME/perl5/perlbrew/etc/bashrc

# bioperl
export PERL5LIB=${PERL5LIB}:$HOME/libs/BioPerl-1.7.8

### EOF
