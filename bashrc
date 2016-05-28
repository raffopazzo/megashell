export PATH=${PATH}:${MEGASHELL_PATH}/bin
export RMAKE=${MEGASHELL_PATH}

# Bash settings
export EDITOR=vim
set -o vi
PS1="\! [\A] ${MEGASHELL_HOSTNAME}\w> "

# Aliases
alias c="clear"
alias h="history 10"
alias graph="git log --oneline --graph --decorate --date-order --branches="
alias pygrep="srcgrep --extensions=py"
alias cppgrep='srcgrep --extensions="h c cpp"'
alias javagrep='srcgrep --extensions="java"'
which apt-get >/dev/null
if [ $? -eq 0 ]
then
  alias get='sudo apt-get install --yes'
  alias search='apt-cache search'
fi

# Functions
function die() {
  echo $*
  exit 1
}
export -f die
