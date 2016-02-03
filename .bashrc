source '/home/atkinsonm/.priv'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# sh
export PS1="\[\e[1;32m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \W \\\$ "
export PATH="$PATH:/home/atkinsonm/bin"

alias pash="date | sha1sum"
alias sex="date +%s"

alias fix-resolv="sudo su -c 'echo \"nameserver 8.8.8.8\" > /etc/resolv.conf'"

alias rootify="export MYKE_ROOT=\`pwd\` && echo \"rcd path is '\$MYKE_ROOT'\" 1>&2"
alias rcd="cd \$MYKE_ROOT"

# docker
alias d="sudo docker"
alias dbuild="sudo docker build --tag \`cat image_name\` ."
alias dpush="sudo docker push \`cat image_name\`"
alias dbup="dbuild && dpush"

# grep
alias grep="grep --color"

# git
alias g="git"
alias ga="git add"
alias gca="git commit -a"
alias gc="git commit"
alias gd="git diff"
alias gs="git status"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gba="git branch -a"
alias gp="git push origin \`git branch | grep '^\*' | sed 's/^\* //'\`"
alias gcap="gca && gp"
# librarian-puppet

alias lip="librarian-puppet"

# ls
alias ls="ls --color"
alias ll="ls -l --color"
alias lt="ls -lt --color"

# vagrant
alias v="vagrant"
alias vify="export MYKE_VAGRANTPATH=\`pwd\` && echo \"Vagrantfile path is '\$MYKE_VAGRANTPATH'\" 1>&2"
alias vcd="cd \$MYKE_VAGRANTPATH"
alias vu="vcd; vagrant up; cd -"
alias vd="vcd; vagrant destroy; cd -"
alias vr="vcd; vagrant destroy -f && vagrant up; cd -"
alias vsh="vcd; vagrant ssh; cd -"
alias vp="vcd; vagrant provision; cd -"

