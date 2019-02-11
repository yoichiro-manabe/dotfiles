# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy/mm/dd"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx emoji-clock ruby)

source $ZSH/oh-my-zsh.sh

# zshrcの編集
alias vz='vim ~/.zshrc'

# zshrcの反映
alias sz='source ~/.zshrc'

# ssh_configの編集
alias vs='vim ~/.ssh/config'

alias br='brew'
alias nb='nodebrew'

# sshpass
alias sshpass='sshpass -f .sshpwd'

# ワイルドカード保管を防ぐため
setopt nonomatch

#export PATH=/usr/local/bin:/usr/bin:$PATH

# zmv
autoload -Uz zmv
alias zmv='noglob zmv -W'

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

export PATH=/usr/local/Cellar/vim/8.1.0050/bin/vim:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="~/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# nodebrew
export PATH=$PATH:$HOME/.nodebrew/current/bin

# aspnetcore
export ASPNETCORE_ENVIRONMENT=Development
export ASPNETCORE_URLS=http://localhost:5000

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f $HOME/.nodebrew/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . $HOME/.nodebrew/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f $HOME/.nodebrew/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . $HOME/.nodebrew/node/v8.11.1/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh

export PATH="$HOME/.rbenv/shims:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

alias rails='bundle exec rails'
alias rake='bundle exec rake'
alias be='bundle exec'
alias ber='be rake db:drop;be rake db:create;be rake db:migrate;be rake db:seed;'
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=$PATH:./node_modules/.bin
eval "$(rbenv init -)"

# Create as alias for nuget
alias nuget="mono /usr/local/bin/nuget.exe"

# pyenv
export PYENV_ROOT=${HOME}/.pyenv
if [ -d "${PYENV_ROOT}" ]; then
    export PATH=${PYENV_ROOT}/bin:$PATH
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

# RabbitMQ
export PATH=$PATH:/usr/local/sbin

export MAX_JSON_CONTENT_LENGTH=1048576
export UPLOAD_DIR_PATH=/tmp/

