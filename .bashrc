#source '/home/atkinsonm/.priv'
#source '/home/atkinsonm/.venvburrito/startup.sh'

alias pub="cat /home/atkinsonm/.ssh/id_rsa.pub"
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# sh
export PS1="\[\e[1;32m\]\u\[\e[m\]@\[\e[1;33m\]\h\[\e[m\] \W \\\$ "
export PATH="$PATH:/home/atkinsonm/bin"

alias pash="date | sha1sum"
alias sex="date +%s"

# Perl one-liners
alias lc="perl -pe '\$_ = lc \$_'"
alias uc="perl -pe '\$_ = uc \$_'"

alias fix-resolv="sudo su -c 'echo \"nameserver 8.8.8.8\" > /etc/resolv.conf'"

alias rootify="export MYKE_ROOT=\`pwd\` && echo \"rcd path is '\$MYKE_ROOT'\" 1>&2"
alias rcd="cd \$MYKE_ROOT"

alias dino-time="cd ~/code/dino/infr && rootify && cd provisioning/deployment-dev && vify && rcd && alias vagrant=\". vagrantrc && $(which vagrant)\""

function dcp-time {
	alias play='ansible-playbook -vvv playbooks/dcp/ansible-deployment.yml -i inventory/dcp/microservice-slave -l ansible-slave'
}

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

# rm
alias rm="rm -Irv"

# vagrant
alias v="vagrant"
alias vify="export MYKE_VAGRANTPATH=\`pwd\` && echo \"Vagrantfile path is '\$MYKE_VAGRANTPATH'\" 1>&2"
alias vcd="cd \$MYKE_VAGRANTPATH"
alias vu="vcd; vagrant up; cd -"
alias vd="vcd; vagrant destroy; cd -"
alias vr="vcd; vagrant destroy -f && vagrant up; cd -"
alias vsh="vcd; vagrant ssh; cd -"
alias vp="vcd; vagrant provision; cd -"
alias vh="vcd; vagrant halt; cd -"

# henry aliases

alias h="henry" 
alias hls="cat ~/.henry.json 2>&1 && echo 2>&1"

function hcd {
	cd $(henry get $1)
}


function run_azure() {
    sudo docker run --rm \
    -v ~/.azure:/home/user/.azure \
    -v ~/.ssh:/home/user/.ssh:ro \
    -v ~/bin:/home/user/bin \
    -v ~/.bashrc:/home/user/.bashrc \
    -v $(pwd):/home/user/$(basename `pwd`) \
    -h azure-0-10-0 \
    -u user -it jacderida/azure-cli:0.10.0
}
alias az="run_azure"

# Ansible
alias ansible="workon ansible && ansible --vault-password-file ~/.ansible/password -e ansible_user=atkinsonm"
alias ansible-playbook="workon ansible && ansible-playbook --vault-password-file ~/.ansible/password -e ansible_user=atkinsonm"
alias ansible-vault="workon ansible && ansible-vault --vault-password-file ~/.ansible/password"
alias ansible-galaxy="workon ansible && ansible-galaxy"
# --vault-password-file ~/.ansible/password -e ansible_user=atkinsonm"
#alias start-ansible="workon ansible; cd ~/git/ansible_infrastructure/"

function run_oc() {
    sudo docker run --rm \
    -v ~/.ssh:/home/user/.ssh \
    -v ~/.bashrc:/home/user/.bashrc \
    -v $(pwd):/home/user/$(basename `pwd`) \
    -h oc-3-1-1-6 \
    -u user -it jacderida/openshift-enterprise-client-tools:3.1.1.6
}
alias ose="run_oc"
source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

source ~/.local/bin/virtualenvwrapper.sh
export WORKON_HOME=/home/atkinsonm/.virtualenvs
export PIP_VIRTUALENV_BASE=/home/atkinsonm/.virtualenvs
