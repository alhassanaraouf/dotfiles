# User Information
export NAME="Al-Hassan Abdel-Raouf"
export EMAIL="alhassanaraouf@disroot.org"


export LC_ALL=en_US.utf8
export LANG=en_US.utf8

export VISUAL=nvim
export EDITOR=$VISUAL
#export BROWSER=lynx
#export TERM=tym

ZSH_TMUX_CONFIG=${XDG_CONFIG_HOME:-$HOME/.config}/tmux/tmux.conf
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=$ZDOTDIR/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_all_dups  # ignore duplicated commands history list
setopt extended_history  # record timestamp of command in HISTFILE
setopt hist_verify  # show command with history expansion to user before running it
setopt hist_ignore_space  # ignore commands that start with space

# vi Mode
bindkey -v

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/alhassan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


source '/usr/share/zsh-antidote/antidote.zsh'
antidote load


autoload -Uz promptinit && promptinit && prompt powerlevel10k

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zsh autosuggest plugin
export ZSH_AUTOSUGGEST_STRATEGY=(history completion)



# Lynx config
export LYNX_CFG=~/.config/lynx/lynx.cfg

# add my scripts
PATH=~/scripts:/usr/bin:$PATH
export PATH=/opt/openresty/bin:$PATH


# fly cli
export FLYCTL_INSTALL="${HOME}/.config/fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# adding composer packages
export PATH=~/.config/composer/vendor/bin/:$PATH

# adding Rust binary package
export PATH="$PATH:$HOME/.cargo/bin"

# adding Volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# adding personal bin directory
export PATH="$HOME/bin:$PATH"

