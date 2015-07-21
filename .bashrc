source '/home/atkinsonm/.priv'

# sh
export PS1="\[\e[1;32m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \W \$ "
export PATH="$PATH:/home/atkinsonm/bin"

# ls
alias ls="ls --color"
alias ll="ls -l --color"
alias lt="ls -lt --color"

# rootify
alias rootify="export MYKE_ROOT=\`pwd\` && echo \"rcd path is '\$MYKE_ROOT'\" 1>&2"
alias rcd="cd \$MYKE_ROOT"

# grep
alias grep="grep --color"

# git
alias gadd="git add"
alias gcm="git commit -a"
alias gst="git status"
alias gck="git checkout"
alias gbranch="git checkout -b"

# vagrant
alias vpath="export MYKE_VAGRANTPATH=\`pwd\` && echo \"Vagrantfile path is '\$MYKE_VAGRANTPATH'\" 1>&2"
alias vcd="cd \$MYKE_VAGRANTPATH"
alias vup="vagrant up"
alias vdie="vagrant destroy"
alias vredo="vagrant destroy -f && vagrant up"
alias vssh="vagrant ssh"
alias vpro="vagrant provision"
