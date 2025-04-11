#!/bin/bash

alias gh="history|grep"
alias gitl="git log -n 20 --graph --pretty=format:'%Cred%h%Creset %an: %s / %Cgreen%cr%Creset %Creset %C(yellow)%d%Creset' --abbrev-commit --date=relative"
alias git-diff="git diff && git submodule foreach 'git diff'"
alias git-status="git status && git submodule foreach 'git status'"
git-commit () {
	git submodule foreach --recursive "git add . && git commit -m '$@' || :" && git add . && git commit -m "$@"
}
