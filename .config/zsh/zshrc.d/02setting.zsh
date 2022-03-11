# History Setting 

HISTFILE= $ZDOTDIR/history
HISTSIZE=1000
SAVEHIST=1000


setopt autocd beep extendedglob nomatch notify


# vi Mode
bindkey -v


# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
# zstyle :compinstall filename '/home/runner/.zshrc'

# compeletion
autoload -U compinit
compinit


setopt hist_ignore_all_dups  # ignore duplicated commands history list
setopt extended_history  # record timestamp of command in HISTFILE
setopt hist_verify  # show command with history expansion to user before running it
setopt hist_ignore_space  # ignore commands that start with space


