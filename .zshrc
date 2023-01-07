parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}
COLOR_DEF='%f'
COLOR_DIR='%F{197}'
COLOR_GIT='%F{39}'
NEWLINE=$'\n'
setopt PROMPT_SUBST
export PROMPT='${COLOR_DIR}%d ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}${NEWLINE}%% '
alias master='git checkout master'
alias repos='cd ~/repos'
alias openbb='/Applications/OpenBB\ Terminal/OpenBB\ Terminal'
ticdat='/Users/reza/repos/anura-model-ticdat'
c() {
    eval "code $eval \$$1"
}
export TERMINFO_DIRS=$TERMINFO_DIRS:$HOME/.local/share/terminfo
