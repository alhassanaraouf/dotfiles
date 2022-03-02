#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# User Information
export NAME="Al-Hassan Abdel-Raouf"
export EMAIL="alhassanaraouf@disroot.org"

# Default Programs
export VISUAL=vis
export EDITOR=$VISUAL
export BROWSER=lynx
#export TERM=xterm


export LYNX_CFG=~/.config/lynx/lynx.cfg

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


PATH=~/.config/composer/vendor/bin/:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

PATH=~/.config/composer/vendor/bin/:$HOME/scripts:$PATH