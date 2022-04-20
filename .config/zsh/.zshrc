# Created by newuser for 5.8.1


# ZI Plugin Manager Setup

export ZI_HOME=${HOME}/.config/zsh/zi

declare -A ZI
ZI[HOME_DIR]=$ZI_HOME
ZI[BIN_DIR]=$ZI_HOME/bin

export ZPFX=$ZI_HOME/polaris

if [[ ! -f $HOME/.config/zsh/zi/bin/zi.zsh ]]; then
  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
  command mkdir -p "$HOME/.config/zsh/zi" && command chmod g-rwX "$HOME/.config/zsh/zi"
  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.config/zsh/zi/bin" && \
    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
    print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi
source "$HOME/.config/zsh/zi/bin/zi.zsh"
autoload -Uz _zi
(( ${+_comps} )) && _comps[zi]=_zi
# examples here -> https://z-shell.pages.dev/docs/gallery/collection
zicompinit # <- https://z-shell.pages.dev/docs/gallery/collection#minimal


# Loading Plugins

zi load z-shell/zui
zi load z-shell/zbrowse
# zi load z-shell/zi-console
zi wait lucid for z-shell/zi-console
zi load z-shell/zsh-cmd-architect
zi load z-shell/zsh-navigation-tools
zi light z-shell/zzcomplete
zi load z-shell/H-S-MW
zi light z-shell/F-Sy-H

zi load mattmc3/omz-themes-standalone
# zi load ohmyzsh/ohmyzsh
zi snippet OMZP::git
zi snippet OMZP::composer
zi snippet OMZP::history
zi snippet OMZT::robbyrussell
zi load zsh-users/zsh-autosuggestions


# zi load zsh-users/zsh-syntax-highlighting
zi load zsh-users/zsh-completions

zi load zshzoo/zshrc.d

zi load notf0und/zsh-vapor
zi load jessarcher/zsh-artisan









