alias alsh="vim ~/.config/alias.sh; source ~/.config/alias.sh"
alias dof="/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME"
alias zshrc="vim ~/.zshrc; source ~/.zshrc"
alias bashrc="vim ~/.bashrc; source ~/.bashrc"
alias tmuxconf="vim ~/.tmux.conf"
alias kmux="pkill -f tmux"
alias vimrc="vim ~/.vimrc"
alias i3cfg="vim ~/.config/i3/config"
alias polycfg="vim ~/.config/polybar/config"
alias xres="vim ~/.Xresources; xrdb merge ~/.Xresources"
alias copy="xclip -sel clipboard"
alias no="vim ~/vimwiki/index.md"
alias r='ranger --choosedir=$HOME/.rangerdir; cd "$(cat $HOME/.rangerdir)"'
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias v="vim"
alias py="/usr/bin/python3"
alias python="/usr/bin/python3"
alias vps="ssh vps"

alias th="cd ~/git/thesis/app"
alias t="taskell ~/vimwiki/taskell.md"
alias ta="taskell ~/vimwiki/taskell.md"

alias _="sudo"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."


# GIT Aliases
alias gcl='git clone'
alias ga='git add'
alias grm='git rm'
alias gap='git add -p'
alias gall='git add -A'
alias gf='git fetch --all --prune'
alias gft='git fetch --all --prune --tags'
alias gfv='git fetch --all --prune --verbose'
alias gftv='git fetch --all --prune --tags --verbose'
alias gus='git reset HEAD'
alias gpristine='git reset --hard && git clean -dfx'
alias gclean='git clean -fd'
alias gm="git merge"
alias gmv='git mv'
alias g='git'
alias get='git'
alias gs='git status'
alias gss='git status -s'
alias gsu='git submodule update --init --recursive'
alias gl='git pull'
alias glum='git pull upstream master'
alias gpr='git pull --rebase'
alias gpp='git pull && git push'
alias gup='git fetch && git rebase'
alias gp='git push'
alias gpo='git push origin'
alias gpu='git push --set-upstream'
alias gpuo='git push --set-upstream origin'
alias gpuoc='git push --set-upstream origin $(git symbolic-ref --short HEAD)'
alias gpom='git push origin master'
alias gr='git remote'
alias grv='git remote -v'
alias gra='git remote add'
alias gd='git diff'
alias gdl='git diff --name-only --diff-filter=U' #lista ficheiros com conflitos
alias gds='git diff --staged'
alias gdv='git diff -w "$@" | vim -R -'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcm='git commit -v -m'
alias gcam='git commit -v -am'
alias gci='git commit --interactive'
alias gb='git branch'
alias gba='git branch -a'
alias gbt='git branch --track'
alias gbm='git branch -m'
alias gbd='git branch -d'
alias gbD='git branch -D'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gco='git checkout'
alias gcom='git checkout master'
alias gcb='git checkout -b'
alias gcob='git checkout -b'
alias gct='git checkout --track'
alias gexport='git archive --format zip --output'
alias gdel='git branch -D'
alias gmu='git fetch origin -v; git fetch upstream -v; git merge upstream/master'
alias gll='git log --graph --pretty=oneline --abbrev-commit'
alias gg="git log --graph --pretty=format:'%C(bold)%h%Creset%C(magenta)%d%Creset %s %C(yellow)<%an> %C(cyan)(%cr)%Creset' --abbrev-commit --date=relative"
alias ggs="gg --stat"
alias gsl="git shortlog -sn"
alias gwc="git whatchanged"
alias gt="git tag"
alias gta="git tag -a"
alias gtd="git tag -d"
alias gtl="git tag -l"
alias gpatch="git format-patch -1"
# From http://blogs.atlassian.com/2014/10/advanced-git-aliases/
# Show commits since last pull
alias gnew="git log HEAD@{1}..HEAD@{0}"
# Add uncommitted and unstaged changes to the last commit
alias gcaa="git commit -a --amend -C HEAD"
alias ggui="git gui"
alias gcsam="git commit -S -am"
alias gst="git stash"
alias gstb="git stash branch"
alias gstd="git stash drop"
alias gstl="git stash list"
alias gh='cd "$(git rev-parse --show-toplevel)"'
# Show untracked files
alias gu='git ls-files . --exclude-standard --others'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

killport(){
    kill -9 $(lsof -t -i:$1)
}

# DOCKER
alias portainer='docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer'

dps() {
    docker ps -a
}

dka() { 
    docker kill $(docker ps -a -q)
}
dsa() { 
    docker stop $(docker ps -a -q)
}

dsh(){
    docker exec -ti $1 /bin/bash 
}

dip(){
   docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
}

