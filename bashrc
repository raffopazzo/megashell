export PATH=${PATH}:${MEGASHELL_PATH}/bin

# Bash settings
set -o vi

# Aliases
alias c="clear"
alias h="history 10"
alias graph="git log --oneline --graph --decorate --date-order --branches="
alias pygrep="srcgrep --extensions=py"
alias cppgrep='srcgrep --extensions="h c cpp"'

# Functions
function die() {
  echo $*
  exit 1
}
export -f die
