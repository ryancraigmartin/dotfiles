# ---------------------------------------
# @RyanCraigMartin Zsh Terminal Config
# ---------------------------------------
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
COMPLETION_WAITING_DOTS="true"
DISABLE_AUTO_UPDATE="false"
ENABLE_CORRECTION="false"
eval "$(basher init - zsh)"
eval "$(rbenv init -)"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
export PATH="$HOME/.basher/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export SDKMAN_DIR="/Users/ryan/.sdkman"
export UPDATE_ZSH_DAYS=1
export ZSH="/Users/ryan/.oh-my-zsh"
PATH=/bin:/usr/bin:/usr/local/bin:${PATH}
ZSH_THEME="powerlevel10k/powerlevel10k"

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
  z
  zsh_reload
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Git
# alias ga="git add -A"
# alias gc="git commit -m"
# alias gcl="git clone"
# alias gd="git diff"
# alias gf="git fetch"
# alias ggr="git graph"
# alias gm="git merge"
# alias gma="git merge --abort"
# alias gp="git push"
# alias gpf="git push --force-with-lease"
# alias gr="git rebase"
# alias gra="git rebase --abort"
# alias grc="git rebase --continue"
# alias gri="git rebase -i"
# alias gs="git status"
# alias gu="git unstage"

# NPM
alias i="npm i"
alias ni="npm i"
alias nd="nr dev"
alias nci="npm ci"
alias nr="npm run"
alias nl="npm link"
alias ncl="nr clean"
alias nxml="nx migrate latest"
alias nxrm="nx migrate --run-migrations"
alias nid="npm i -D"
alias nig="npm i -g"
alias nrb="nr build"
alias ns="npm start"
alias nul="npm unlink"
alias nu="npm uninstall"
alias nrbc="nr build:cjs"
alias nun="npm uninstall"
alias cli="nr clean:install"
alias nrbd="nr build:delete"
alias nins="npm i && npm start"
alias nil="npm i --legacy-peer-deps"

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

# NX
alias nxup="nx migrate latest && npm i && nx migrate --run-migrations"
alias nxf="nx format"
alias nxs="nx serve"
alias nxa="nx serve api"
alias nxws="nr workspace:start"
alias nxwl="nr workspace:lint"
alias nxwt="nr workspace:tests"
alias nxgg="nr gqlgen"
alias nca="npm run codegen:all"
alias npc="nr pre-commit"
alias oui="nr open:ui-web"
alias og="nr open:gql"

# Go
alias gf="go fmt ./..."
alias gog="go get"
alias grm="go run main.go "
alias gt="go test -v "

# DIR Stuff
alias -g ...='../..'
alias -g ,,,='../..'
alias -g ....='../../..'
alias -g ,,,,='../../..'
alias -g .....='../../../..'
alias -g ,,,,,='../../../..'
alias -g ,,,,,,='../../../../..'
alias -g ......='../../../../..'

alias lad='exa -lr | more --colo="always" --icons'
alias lc='exa -lA --sd --color="always" --icons'
alias ld='exa -d * */* --color="always" --icons'
alias ll='exa -la --color="always" --icons'
alias ls='exa --color="always" --icons'
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo'

# z Shortcuts
alias ~="cd ~"
alias de="z Desktop"
alias dl="z Downloads"
alias mo="z Movies"
alias mu="z Music"
alias pi="z Pictures"

# VSCode
# alias c.="code ."
alias c="code-insiders"
alias c.="code-insiders ."
alias cz="code-insiders ~/.zshrc"
alias czv="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias svim='sudo nvim'

# Random
alias b="bat"
alias cl="clear"
alias brewski="brew -v update; brew upgrade; brew cleanup; brew cask cleanup; brew doctor; npm-check -g -u"
alias bu="brew update && brew upgrade"
alias fk="fkill"
alias g='googler -n 10 -c en -l en'
alias h='history'
alias myip="curl http://ipecho.net/plain; echo"
alias t="trash"
alias weather="curl http://wttr.in/~Miami+Florida"
alias pubip="curl -w '\n' https://api.ipify.org"

# Postgres
alias pgs="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pgst="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"

alias psql="/Applications/Postgres.app/Contents/Versions/latest/bin/psql"
alias pg_restore="/Applications/Postgres.app/Contents/Versions/latest/bin/pg_restore"

alias abl='nr api:build:local'
alias abd='nr api:build:dev'
alias abp='nr api:build:prod'

alias asl='nr api:serve:local'
alias asl='nr api:serve:local'
alias asd='nr api:serve:dev'
alias asp='nr api:serve:prod'

alias ursl='nr ui:rebuild:ssr:local'
alias ursd='nr ui:rebuild:ssr:dev'
alias ursp='nr ui:rebuild:ssr:prod'

alias ubl='nr ui:build:local'
alias ubd='nr ui:build:dev'
alias ubp='nr ui:build:prod'

alias usl='nr ui:serve:local'
alias usd='nr ui:serve:dev'
alias usp='nr ui:serve:prod'

alias wpusl='nr ui-wp:serve:local'

alias ussl='nr ui:serve:ssr:local'
alias ussd='nr ui:serve:ssr:dev'
alias ussp='nr ui:serve:ssr:prod'

alias ndis='node dist/@sommset/api/main.js'

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

# Functions

create-project() { # Create a Node.js project
  mkdir -p "$@" && cd "$_"
  git init
  npx license $(npm get init.license) -o "$(npm get init.author.name)" >LICENSE
  npx gitignore node
  npm init -y
  git add -A
  git commit -m "Initial commit"
}

source /Users/ryan/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH/oh-my-zsh.sh
