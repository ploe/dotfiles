source '/home/atkinsonm/.priv'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# sh
export PS1="\[\e[1;32m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \W \$ "
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
alias gadd="git add"
alias gca="git commit -a"
alias gcm="git commit"
alias gst="git status"
alias gck="git checkout"
alias gnew="git checkout -b"
alias gbr="git branch"
alias CURRENT_BRANCH="MYKE_BRANCHON=\`gbr | grep '^\*' | sed 's/^\* //'\`"
alias gpush="git push origin \`gbr | grep '^\*' | sed 's/^\* //'\`"

# librarian-puppet

alias lip="librarian-puppet"

# ls
alias ls="ls --color"
alias ll="ls -l --color"
alias lt="ls -lt --color"

# vagrant
alias vpath="export MYKE_VAGRANTPATH=\`pwd\` && echo \"Vagrantfile path is '\$MYKE_VAGRANTPATH'\" 1>&2"
alias vcd="cd \$MYKE_VAGRANTPATH"
alias vup="vcd; vagrant up; cd -"
alias vdie="vcd; vagrant destroy; cd -"
alias vredo="vcd; vagrant destroy -f && vagrant up; cd -"
alias vssh="vcd; vagrant ssh; cd -"
alias vpro="vcd; vagrant provision; cd -"

