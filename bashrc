here=$(dirname $(realpath $BASH_SOURCE))
export PATH=${PATH}:${here}/bin
source ${here}/bash_completion/*
unset here

# execute git command and discard stderr
function __git() {
  git $* 2>/dev/null
}

# get the name of the current git branch
function __git_branch() {
  __git branch | grep '*' | cut -c3-
}

# return '*' if the working tree is dirty
function __git_status() {
  __git status -s | tail -n1 | sed "s/./*/" | cut -c1
}

# Bash settings
export EDITOR=vim
set -o vi
# PS1="\!) \A ${MEGASHELL_HOSTNAME}\w:\$(__git_branch)\$(__git_status)> "
PS1="\[\033[1;33m\]\W\[\033[0m\] [\$(__git_branch)\$(__git_status)] \[\033[1;37m\]$\[\033[0m\] "

# Aliases
alias c="clear"
alias h="history 10"
alias uppercase="tr '[a-z]' '[A-Z]'"
alias lowercase="tr '[A-Z]' '[a-z]'"

alias graph="git log --oneline --graph --decorate --date-order --all"
alias pull-prune="git pull && git pull --prune"

alias pygrep='grep --color -rn --include="*.py"'
alias cppgrep='grep --color -rn --include="*.h" --include="*.c" --include="*.cpp" --include="*.hpp" --include="*.cxx" --include="*.hxx" --include="*.ipp" --include="*.inl"'
alias csgrep='grep --color -rn --include="*.cs"'
alias javagrep='grep --color -rn --include="*.java"'
if which apt-get > /dev/null 2>&1
then
    alias get='sudo apt-get install --yes'
    alias search='apt-cache search'
fi
