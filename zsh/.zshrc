eval "$(rbenv init -)"
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
export PATH
export ZSH="/Users/ryan/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

DISABLE_AUTO_UPDATE="false"

export UPDATE_ZSH_DAYS=1

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

plugins=(
  git
  z
  yarn
  npm
  npx
  nvm
  node
  zsh-autosuggestions
)

# YT
alias you="youtube-dl --embed-thumbnail --ignore-errors -f bestaudio --extract-audio --audio-format best -o '~/Music/youtube/%(title)s.%(ext)s'"

  # Git
alias gc="git commit"
alias gcl="git clone"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gma="git merge --abort"
alias gr="git rebase"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gu="git unstage"
alias ggr="git graph"
alias gA="git add -A"
alias gri="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"

# NPM
alias ni="npm i"
alias nci="npm ci"
alias ng="npm i -g"
alias nu="npm uninstall"
alias ns="npm start"
alias nins="npm i && npm start"

# Yarn
alias y="yarn"
alias ya="yarn add"
alias yd="yarn dev"
alias yrn="yarn run"
alias yh="yarn help"
alias yrm="yarn remove"
alias you"yarn outdated"
alias yg="yarn global add"
alias yad="yarn add --dev"
alias ycc="yarn cache clean"
alias yanl="yarn add --no-lockfile"
alias yui="yarn upgrade-interactive"

# Docker
alias dps="docker ps"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build"

# Testing
alias yl="yarn:lint"
alias yb="yarn bootstrap"
alias ywn="yarn watch-node"
alias yf="yarn:format"
alias ytu="yarn test -u"
alias yfc="yarn format:check"
alias ytw="yarn test:watch"
alias yvf="yarn test:watch --verbose=false"
alias yci="jest --ci --reporters='./onslaught-reporter.js'"

# Gatsby
alias gad='gatsby develop'
alias ygd='y && gad'

# React
alias cra='create-react-app'

# Angular
alias as='ng serve'

# Go
alias gt="go test -v "
alias grm="go run main.go "
alias gog="go get"
alias gf="go fmt ./..."

# DIR Stuff
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo'
alias ..='cd ..'
alias ...='cd ../..'
alias ,='cd'
alias ,,='cd ..'
alias ,,,='cd ../..'
# alias ll='ls -la'
# alias ld='ls -d */'
# alias ls="colorls"
# alias lc="colorls -lA --sd"

# z stuff
alias de="z Desktop"
alias dl="z Downloads"

# Random
alias b="bat"
alias fk="fkill"
alias c="clear"
alias c.="code ."
alias cz="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias g='googler -n 10 -c en -l en'
alias weather="curl http://wttr.in/~Miami+Florida"
alias svim='sudo nvim'
alias myip="curl http://ipecho.net/plain; echo"
alias h='history'
alias bu="brew update && brew upgrade"
alias brewu="brew -v update; brew upgrade --force-bottle --cleanup; brew cleanup; brew cask cleanup; brew prune; brew doctor; npm-check -g -u"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/ryan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# plugins=(
  # github
  # repo
  # web-search
  # yii2
  # jsontools
  # vscode
  # copyfile
  # extract
  # catimg
  # history
  # thefuck
  # urltools
  # copydir
  # rand-quote
  # osx
  # zsh_reload
  # per-directory-history
  # ls
  # last-working-dir
  # sudo
# )

# # The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/ryan/google-cloud-sdk/path.zsh.inc' ];
#   then . '/Users/ryan/google-cloud-sdk/path.zsh.inc';
# fi

# # The next line enables shell command completion for gcloud.
# if [ -f '/Users/ryan/google-cloud-sdk/completion.zsh.inc' ];
#   then . '/Users/ryan/google-cloud-sdk/completion.zsh.inc';
# fi
# source $(dirname $(gem which colorls))/tab_complete.sh
source ~/.bash_profile;
# source "$(brew --prefix)/etc/profile.d/z.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ryan/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ryan/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ryan/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ryan/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

