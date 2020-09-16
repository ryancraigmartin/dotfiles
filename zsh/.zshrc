export PATH="/usr/local/bin:$PATH"
export ZSH="/Users/ryan/.oh-my-zsh"
export UPDATE_ZSH_DAYS=1
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
  github
  repo
  web-search
  yii2
  jsontools
  vscode
  copyfile
  extract
  catimg
  history
  thefuck
  urltools
  copydir
  rand-quote
  osx
  zsh_reload
  per-directory-history
  last-working-dir
  sudo
)

  # Git
alias gc="git commit -m"
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
alias nig="npm i -g"
alias nr="npm run"
alias ncl="nr clean"
alias nd="nr dev"
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
alias ngd='npm i && gad'

# React
alias cra='create-react-app'

# Angular
alias as='ng serve'

# Go
alias gog="go get"
alias gf="go fmt ./..."
alias gt="go test -v "
alias grm="go run main.go "

# DIR Stuff
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo'
alias ..='cd ..'
alias ...='cd ../..'
alias ,='cd'
alias ,,='cd ..'
alias ,,,='cd ../..'
alias ls='exa --color="always" --icons'
alias ld='exa -d * */* --color="always" --icons'
alias ll='exa -la --color="always" --icons'
alias lc='exa -lA --sd --color="always" --icons'
alias lad='exa -lr | more --colo="always" --icons'

# z stuff
alias de="z Desktop"
alias dl="z Downloads"
alias pi="z Pictures"
alias mu="z Music"
alias mo="z Movies"

# Random
alias t="trash"
alias b="bat"
alias fk="fkill"
alias c="clear"
alias c.="code ."
alias cz="code ~/.zshrc"
alias czv="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias g='googler -n 10 -c en -l en'
alias weather="curl http://wttr.in/~Miami+Florida"
alias svim='sudo nvim'
alias myip="curl http://ipecho.net/plain; echo"
alias h='history'
alias bu="brew update && brew upgrade"
alias brewski="brew -v update; brew upgrade; brew cleanup; brew cask cleanup; brew doctor; npm-check -g -u"

#  Postgres
alias pgs="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pgst="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/ryan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ryan/.sdkman"
[[ -s "/Users/ryan/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ryan/.sdkman/bin/sdkman-init.sh"

source $ZSH/oh-my-zsh.sh