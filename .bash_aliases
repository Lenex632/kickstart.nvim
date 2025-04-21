#!/bin/bash

alias gh="history|grep"
alias gitl="git log -n 20 --graph --pretty=format:'%Cred%h%Creset %an: %s / %Cgreen%cr%Creset %Creset %C(yellow)%d%Creset' --abbrev-commit --date=relative"
alias gitd="git diff && git submodule foreach 'git diff'"
alias gits="git status && git submodule foreach 'git status'"
alias gitp="git push && git submodule foreach --recursive 'git push'"
gitc () {
	git add . && git commit -m "$@"
}
git-commit () {
	git submodule foreach --recursive "git add . && git commit -m '$@' || :" && git add . && git commit -m "$@"
}
