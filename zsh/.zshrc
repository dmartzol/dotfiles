# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#   -------------------------------
#   POWERLEVEL10K LOAD
#   -------------------------------
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#   -------------------------------
#   POSTGRESQL
#   -------------------------------
# export PATH=$PATH:/Library/PostgreSQL/12/bin
[[ ! -f ~/.local-db-hmm ]] || source ~/.local-db-hmm
[[ ! -f ~/.hmm ]] || source ~/.hmm

#   -------------------------------
#   RASPBERRY PI'S PROMPT
#   -------------------------------
# export PS1="\[\033[1;32m\]\!\[\033[0m\] \[\033[1;37m\]\h\[\033[0m\] \[\033[1;31m\]\u\[\033[0m\]:\[\033[1;31m\]\W\[\033[0m\] \[\033[1;37m\][\@]\[\033[0m\]$ "

#   -------------------------------
#   Go PATHS
#   -------------------------------
export PATH=$PATH:$HOME/go/bin
# export GOPATH=$HOME/dev/go
# export PATH=$PATH:$GOROOT/bin

#   -------------------------------
#   Git autocompletion
#   -------------------------------
autoload -Uz compinit && compinit

#   -------------------------------
#   MAKE TERMINAL BETTER
#   -------------------------------

# Aliases and functions
export EDITOR='subl -w'
alias gh='history | grep '
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias cic='set completion-ignore-case On'   # cic: Make tab-completion case-insensitive
alias clear='echo "No! Use Cntrl+L!"'       # Get used to use Ctrl+L
alias reload='source ~/.zshrc'
alias compile='g++ -std=c++11 $1'           # Compiles cpp code with C++11
alias ll='ls -FGlAhp'                       # Alternative 'ls' implementation
alias ls='ls -aFG'                          # Preferred ls command
alias f='open -a Finder ./'                 # f: Opens current directory in MacOS Finder
alias p2env='virtualenv --python=python2 env'			# Creates a virtual environment with Python 2
alias p3env='virtualenv --python=python3 env'			# Creates a virtual environment with Python 3
alias activate='source env/bin/activate'				# activates virtual environment in the specific path
alias freeze='pip freeze > requirements.txt'			# Creates a requirements file for a virtual environment
alias pip-install-req='pip -r requirements.txt'			# Installs Python modules from requirements file
alias pip-freeze='pip freeze > requirements.txt'		# Saves a list of requirements for the environment
alias gs='git status'									# Quick 'git status' command
alias pipfreezeignore='pip freeze | grep -vFxf ignore_requirements.txt'
alias pipfreezeignoreglobal='pip freeze | grep -vFxf $HOME/dev/python/ignore_requirements.txt'
alias pi='ssh pi@10.0.0.223'
alias glue='ssh daniel@10.10.1.224'						# Connects to glue server in PS1 network using SSH
function findstring() { grep -R "$@" * ; }				# Finds given string in a text file recursively
function findtype() { find . -type f -name "*.$@" ; }	# Finds files with given extension recursively
function man() { open x-man-page://$@ ; }				# Opens manual of given command in its own terminal window
cd() { builtin cd "$@"; ls; }               			# Always list directory contents upon 'cd'
alias dma="cd $GOPATH/src/github.com/dmartzol"
alias gi="go test ./... && go install ./..."

# Aliases for Raspberrry Pi
# alias restart='sudo shutdown -r now'
# alias halt='sudo shutdown -h now'
# alias update='sudo apt-get update && sudo apt-get upgrade'


#   -------------------------------
#   4.  REMINDERS & NOTES
#   -------------------------------

################################
## Writing a copy from an IMG ##
################################
#diskutil list
#sudo diskutil eraseDisk FAT32 MINIBIAN MBRFormat /dev/disk#
#diskutil unmountDisk /dev/disk#
#sudo dd bs=1m if=2015-02-18-wheezy-minibian.img of=/dev/rdisk2
