# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# For Lion, Rubies should be built using gcc rather than llvm-gcc.
export CC=gcc-4.2

#load oh-my-zsh plugins
plugins=(git github osx)

# load our own completion functions
#fpath=(~/.oh-my-zsh/completion $fpath)

#load oh-my-zsh config file
source "$ZSH/oh-my-zsh.sh"


# completion
autoload -U compinit
compinit

# automatically enter directories without cd
setopt auto_cd

# use sublime as an editor
alias subl="/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl"
export EDITOR='/Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl -w'

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode

# use incremental search
bindkey "^R" history-incremental-search-backward

# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# handy keybindings
bindkey "^P" history-search-backward
bindkey "^Y" accept-and-hold
bindkey "^N" insert-last-word
bindkey -s "^T" "^[Isudo ^[A" # "t" for "toughguy"
bindkey '^r' history-beginning-search-backward

# expand functions in the prompt
setopt prompt_subst


# ignore duplicate history entries
setopt histignoredups

# keep TONS of history
export HISTSIZE=4096

# look for ey config in project dirs
export EYRC=./.eyrc

# automatically pushd
setopt auto_pushd
export dirstacksize=5

function simple_serve { $(which python) -m SimpleHTTPServer ${1:-8000} }

# Allows me to cd into projects
cdpath=(. ~/sites/ ~/sites/thoughtbot/ ~/Dev/ ~/Downloads ~/ )

# prediction
autoload predict-on
zle -N predict-on
zle -N predict-off
bindkey '^Z'   predict-on
bindkey '^X^Z' predict-off
zstyle ':predict' verbose true

export PATH=~/bin:$PATH

if [[ -s /Users/Magnus/.rvm/scripts/rvm ]] ; then source /Users/Magnus/.rvm/scripts/rvm ; fi

# RVM
[[ -s '/Users/Magnus/.rvm/scripts/rvm' ]] && source '/Users/Magnus/.rvm/scripts/rvm'

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

# RVM
[[ -s '/Users/Magnus/.rvm/scripts/rvm' ]] && source '/Users/Magnus/.rvm/scripts/rvm'

# RVM
[[ -s '/Users/Magnus/.rvm/scripts/rvm' ]] && source '/Users/Magnus/.rvm/scripts/rvm'

# recommended by brew doctor
export PATH='/usr/local/bin:/Users/Magnus/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/Magnus/bin:/Users/Magnus/.rvm/bin'

# RVM
[[ -s '/Users/Magnus/.rvm/scripts/rvm' ]] && source '/Users/Magnus/.rvm/scripts/rvm'

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/local/bin:/Users/Magnus/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/Magnus/bin:/Users/Magnus/.rvm/bin'

# RVM
[[ -s '/Users/Magnus/.rvm/scripts/rvm' ]] && source '/Users/Magnus/.rvm/scripts/rvm'

# recommended by brew doctor
export PATH='/usr/local/bin:/usr/local/bin:/usr/local/bin:/Users/Magnus/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/git/bin:/Users/Magnus/bin:/Users/Magnus/.rvm/bin'
