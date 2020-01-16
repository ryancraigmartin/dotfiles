#disable auto correct
NOCOR=1
DISABLE_CORRECTION="true"

source /Users/rmartin/.bash_profile
# source $(dirname $(gem which colorls))/tab_complete.sh
source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/antigen.zsh

export PATH="/usr/local/bin:$PATH"
export PATH=/usr/local/opt/ruby/bin:$PATH
export GO111MODULE=on
# export GOROOT="/usr/local/Cellar/go/1.13.0/bin"
export GOPATH="/Users/rmartin/Documents/repos/go"
export GOTOOLDIR="/usr/local/go/pkg/tool/darwin_amd64"

# Path to your oh-my-zsh installation.
export ZSH="/Users/rmartin/.oh-my-zsh"

ZSH_THEME=powerlevel10k/powerlevel10k
# ZSH_THEME=powerlevel9k

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    github
    repo
    zsh-syntax-highlighting
    zsh-autosuggestions
    web-search
    yarn
    yii2
    jsontools
    npm
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
    z
    ls
    last-working-dir
    sudo
)

# Git
alias ccgit="ssh-add -D && ssh-add ~/.ssh/id_rsa"
alias rmgit="ssh-add -D && ssh-add ~/.ssh/id_rsa_ryancraigmartin"
alias gc="git commit"
alias gr="git rebase"
alias gp="git push"
alias gs="git status"
alias gd="git diff"
alias gf="git fetch"
alias gm="git merge"
alias gcl="git clone"
alias gma="git merge --abort"
alias gpf="git push --force-with-lease"
alias gun="git unstage"
alias ggr="git graph"
alias glo="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"
alias gA="git add -A"
alias gri="git rebase -i"
alias grc="git rebase --continue"
alias gra="git rebase --abort"
alias gcn="git config user.name"
alias gce="git config user.email"

# NPM
alias ni="npm i"
alias nci="npm ci"
alias ng="npm i -g"
alias nu="npm uninstall"
alias ns="npm start"
alias nins="npm i && npm start"

# Yarn
alias y="yarn"
alias yy="yarn && yarn start"
alias ya="yarn add"
alias yd="yarn dev"
alias yr="yarn run"
alias yh="yarn help"
alias yl="yarn link"
alias ym="yarn micro"
alias yul="yarn unlink"
alias yrm="yarn remove"
alias you"yarn outdated"
alias yg="yarn global add"
alias yad="yarn add --dev"
alias ycc="yarn cache clean"
alias yanl="yarn add --no-lockfile"
alias yui="yarn upgrade-interactive"
alias sto="yarn storybook"

# Docker
alias dps="docker ps"
alias dcu="docker-compose up"
alias dcd="docker-compose down"
alias dcb="docker-compose build"

# Testing
alias yli="yarn:lint"
alias yf="yarn:format"
alias ytu="yarn test -u"
alias yfc="yarn format:check"
alias ytw="yarn test:watch"
alias ydw="yarn dev:watch"
alias yvf="yarn test:watch --verbose=false"

# React / Gatsby
alias cra='create-react-app'
alias gad='gatsby develop'

# Go
alias gl.='/usr/local/bin/goland .'
alias gt="go test -v "
alias grm="go run main.go "
alias gog="go get"
alias gf="go fmt ./..."

# DIR Stuff
alias mkcd='foo(){ mkdir -p "$1"; cd "$1" }; foo'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias ,,='cd ../'
alias ,,,='cd ../../'
alias ,,,,='cd ../../../'
alias ll='ls -la'
alias ld='ls -d */'
alias ls="colorls"
alias lc="colorls -lA --sd"

# Random
alias hi="hyper i"
alias c="clear"
alias t.="touch"
alias c.="code ."
alias cz="code ~/.zshrc"
alias sz="source ~/.zshrc"
alias g.='googler -n 10 -c en -l en'
alias weather="curl http://wttr.in/~Miami+Florida"
alias svim='sudo nvim'
alias myip="curl http://ipecho.net/plain; echo"
alias h='history'
alias bu="brew update && brew upgrade"
alias brewu="brew cleanup && brew cask cleanup && brew prune && brew doctor && npm-check -g -u"

# #MORE POWER
# zsh_show_status () {
#     state=`osascript -e 'tell application "Spotify" to player state as string'`;
#     if [ $state = "playing" ]; then
#         artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
#         track=`osascript -e 'tell application "Spotify" to name of current track as string'`;
#         echo -n "$track 🎧 $artist";
#     else [ $state != "playing" ];
#         echo -n "🎧";
#     fi
# }

# POWERLEVEL9K
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=( dir vcs )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
    # status
    # custom_show_status
    # time
)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S - %m.%d}"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_HIDE_GITHUB_ICON=true
POWERLEVEL9K_VCS_GITHUB_ICON=""
POWERLEVEL9K_VCS_BRANCH_ICON=''
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%{%F{249}%}\u250f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%F{249}%}\u2517%{%F{default}%}"
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500%f"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%f "
POWERLEVEL9K_CUSTOM_JAVASCRIPT="echo -n '\ue781' JavaScript"
POWERLEVEL9K_CUSTOM_SHOW_STATUS_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_SHOW_STATUS_BACKGROUND="green"
POWERLEVEL9K_TIME_FOREGROUND="black"
POWERLEVEL9K_TIME_BACKGROUND="magenta"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_FOREGROUND="black"
POWERLEVEL9K_CUSTOM_JAVASCRIPT_BACKGROUND="yellow"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='green'
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='clear'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='blue'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='clear'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='yellow'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='clear'
POWERLEVEL9K_MODE='nerdfont-complete'

source $ZSH/oh-my-zsh.sh

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh