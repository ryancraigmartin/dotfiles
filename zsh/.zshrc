export PATH="/usr/local/bin:$PATH"
export ZSH="/Users/ryan/.oh-my-zsh"
export UPDATE_ZSH_DAYS=1
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
ZSH_THEME="powerlevel10k/powerlevel10k"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"
COMPLETION_WAITING_DOTS="true"

plugins=(
  catimg
  copydir
  copyfile
  extract
  github
  history
  jsontools
  last-working-dir
  osx
  per-directory-history
  rand-quote
  repo
  sudo
  thefuck
  urltools
  vscode
  web-search
  yii2
  zsh_reload
  z
)

# Git
alias gA="git add -A"
alias gc="git commit -m"
alias gcl="git clone"
alias gd="git diff"
alias gf="git fetch"
alias ggr="git graph"
alias gm="git merge"
alias gma="git merge --abort"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gr="git rebase"
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias gri="git rebase -i"
alias gs="git status"
alias gu="git unstage"

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
alias ya="y add"
alias yad="y add --dev"
alias yanl="y add --no-lockfile"
alias ycc="y cache clean"
alias yd="y dev"
alias yf="y:format"
alias yg="y global add"
alias yh="y help"
alias yl="y:lint"
alias you"y outdated"
alias yrm="y remove"
alias yrn="y run"
alias yui="y upgrade-interactive"

# Yarn Testing
alias yb="y bootstrap"
alias yfc="y format:check"
alias ytu="y test -u"
alias ytw="y test:watch"
alias yvf="y test:watch --verbose=false"
alias ywn="y watch-node"

# Node Modules
alias fnm="find . -name "node_modules" -type d -prune | xargs du -chs"
alias frnm="find . -name "node_modules" -type d -prune -exec rm -rf '{}' +"

# Docker
alias dcb="docker-compose build"
alias dcd="docker-compose down"
alias dcu="docker-compose up"
alias dps="docker ps"

# Gatsby
alias gad='gatsby develop'
alias ngd='npm i && gad'
alias ygd='y && gad'

# React
alias cra='create-react-app'

# Angular
alias as='ng serve'

# Go
alias gf="go fmt ./..."
alias gog="go get"
alias grm="go run main.go "
alias gt="go test -v "

# DIR Stuff
alias ,,,='cd ../..'
alias ,,='cd ..'
alias ,='cd'
alias ...='cd ../..'
alias ..='cd ..'
alias lad='exa -lr | more --colo="always" --icons'
alias lc='exa -lA --sd --color="always" --icons'
alias ld='exa -d * */* --color="always" --icons'
alias ll='exa -la --color="always" --icons'
alias ls='exa --color="always" --icons'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo'

# Z Stuff
alias de="z Desktop"
alias dl="z Downloads"
alias mo="z Movies"
alias mu="z Music"
alias pi="z Pictures"

# Random
alias b="bat"
alias brewski="brew -v update; brew upgrade; brew cleanup; brew cask cleanup; brew doctor; npm-check -g -u"
alias bu="brew update && brew upgrade"
alias c.="code ."
alias c="clear"
alias cz="code ~/.zshrc"
alias czv="vim ~/.zshrc"
alias fk="fkill"
alias g='googler -n 10 -c en -l en'
alias h='history'
alias myip="curl http://ipecho.net/plain; echo"
alias svim='sudo nvim'
alias sz="source ~/.zshrc"
alias t="trash"
alias weather="curl http://wttr.in/~Miami+Florida"

# Postgres
alias pgs="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pgst="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

# Suffix Aliases
alias -s {js,jsx,ts,tsx,go,json,yml,html,css,sass,md,mdx,env,sh,bash,nvmrc,prettierrc,babelrc,svg}=code

# Application Shortcuts
alias slack="open -a /Applications/Slack.app"
alias todo="open -a /Applications/Todoist.app"
alias notion="open -a /Applications/Notion.app"
alias postman="open -a /Applications/Postman.app"
alias sizz="open -a /Applications/Sizzy.app"
alias chrome="open -a /Applications/'Google Chrome.app'"
alias gitk="open -a /Applications/GitKraken.app"
alias twit="open -a /Applications/Twitterific.app"
alias zoom="open -a /Applications/zoom.us.app"
alias spot="open -a /Applications/Spotify.app"
alias pcast="open -a /Applications/'Pocket Casts.app'"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/ryan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export SDKMAN_DIR="/Users/ryan/.sdkman"
[[ -s "/Users/ryan/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ryan/.sdkman/bin/sdkman-init.sh"

source $ZSH/oh-my-zsh.sh