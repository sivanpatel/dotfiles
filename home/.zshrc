if [ -x /usr/libexec/path_helper  ]; then
  eval `/usr/libexec/path_helper -s`
fi
ssh-add -A &> /dev/null
eval "$(ssh-agent -s)"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH:$HOME/bin:/usr/local/bin:$PATH"
export PROJECTS_HOME=${HOME}/projects
alias please="sudo"
alias rake="noglob rake"
alias be='bundle exec'
alias ctags="`brew --prefix`/bin/ctags"
alias tagme='ctags -R --languages=ruby --exclude=.git --exclude=log .'
alias console='bundle exec rails c'
alias server='bundle exec rails s'
alias tas='tmux attach-session -t'
alias gwch='git whatchanged -p --abbrev-commit --pretty=medium'
alias bi='bundle install'
alias :q='exit'
alias :qa='tmux kill-session'
alias fzf="fzf --preview 'cat {}'"
alias jmeter='~/projects/apache-jmeter-3.2/bin/jmeter'
alias ngrok='~/ngrok'
alias tat='~/tat'
alias release='~/release'
alias rubocop-diff="git diff-tree -r --no-commit-id --name-only head origin/master | xargs rubocop"
alias prod="kubectl config use-context fd-production"
alias stag="kubectl config use-context fd-staging"
alias kc="kubectl exec -it -n "
alias ks="if ps aux | grep -q '[s]pring'; then kill \$(ps aux | grep [s]pring | awk '{print \$2}'); else echo 'Spring not running'; fi"
alias vim="/usr/local/bin/vim"
source ~/z.sh
source /Users/Sivan/.zim/modules/prompt/external-themes/geometry/geometry.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(kubectl completion zsh)
export GTAGSLABEL=ctags
export IMGUR_APP_ID=f899553c6d3f299
unsetopt nomatch
uptime

if [[ -s ${ZDOTDIR:-${HOME}}/.zim/init.zsh ]]; then
  source ${ZDOTDIR:-${HOME}}/.zim/init.zsh
fi


# export PATH="/usr/local/bin:$PATH"
# export PATH="$HOME/.rbenv/bin:$PATH"


export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh"  ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion"  ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

eval $(thefuck --alias)
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi
export PATH="/Users/Sivan/Qt5.5.0/5.5/clang_64/bin/:$PATH"
