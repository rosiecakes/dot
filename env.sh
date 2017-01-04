#!/bin/zsh

# PATH
# export PATH="/usr/local/share:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/Users/shimadar/.pyenv/shims:/Users/shimadar/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export EDITOR='subl -w'
# export PYTHONPATH=$PYTHONPATH
# export MANPATH="/usr/local/man:$MANPATH"

# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
# source /Users/shimadar/.pyenv/shims/virtualenvwrapper.sh
# export VIRTUALENVWRAPPER_SCRIPT=/Users/shimadar/.pyenv/shims/virtualenvwrapper.sh
export PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV="true"

# path for homebrew (installed without sudo)
export HOMEBREW_PREFIX=/Users/shimadar/usr/local
# export PATH=/Users/shimadar/usr/local/bin:$PATH

# Owner
export USER_NAME="Rosie Shimada"
# eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

# Use sublimetext for editing config files
alias zshconfig="subl ~/.zshrc"
alias envconfig="subl ~/Projects/config/env.sh"eval "$(pyenv init -)"

# Go development
export GOPATH="${HOME}/.go"
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

test -d "${GOPATH}" || mkdir "${GOPATH}"
test -d "${GOPATH}/src/github.com" || mkdir -p "${GOPATH}/src/github.com"
