export PATH=${PATH}:${MEGASHELL_PATH}/bin
export RMAKE=${MEGASHELL_PATH}

# Bash completion
source ${MEGASHELL_PATH}/bash_completion/*

# Functions
function die() {
  echo $*
  exit 1
}
export -f die

# serach on google
function g() {
  open "https://www.google.it/search?q=$*"
}

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
PS1="\!) \A ${MEGASHELL_HOSTNAME}\w:\$(__git_branch)\$(__git_status)> "

# Aliases
alias c="clear"
alias h="history 10"
alias graph="git log --oneline --graph --decorate --date-order --all"
alias pygrep='grep --color -rn --include="*.py"'
alias cppgrep='grep --color -rn --include="*.h" --include="*.c" --include="*.cpp" --include="*.hpp" --include="*.cxx" --include="*.hxx"'
alias javagrep='grep --color -rn --include="*.java"'
which apt-get > /dev/null 2>&1 \
  && alias get='sudo apt-get install --yes' \
  && alias search='apt-cache search'
