# Brew Installs
echo 'Installing Homebrew'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Installing wget'
brew install wget

echo 'Installing mas-cli'
brew install mas

echo 'Installing jq'
brew install jq

echo 'Installing neovim'
brew install neovim

echo 'Installing fd'
brew install fd

echo 'Installing fzf'
brew install fzf

echo 'Installing z'
brew install z

echo 'Installing thefuck'
brew install thefuck

echo 'Installing tree'
brew install tree

echo 'Installing pgcli'
brew install pgcli

echo 'Installing redis'
brew install redis

echo 'Installing iredis'
wget  https://github.com/laixintao/iredis/releases/latest/download/iredis.tar.gz  && tar -xzf iredis.tar.gz  && ./iredis=

echo 'Installing youtube-dl'
brew install youtube-dl

echo 'Installing zsh-syntax-highlighting'
brew install zsh-syntax-highlighting

echo 'Installing zsh-completions'
brew install zsh-completions

echo 'Installing zsh-autosuggestions'
brew install zsh-autosuggestions

# Save screenshots to the download directory
defaults write com.apple.screencapture location -string "~/Downloads"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Require password immediately after sleep or screen saver begins
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

# Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Show all filename extensions in Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Show status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

###############################################################################
# MenuBar                                                                     #
###############################################################################

# Disable menu bar transparency - Couldn't find this in mac OS Mojave
# defaults write -g AppleEnableMenuBarTransparency -bool false

# Show remaining battery percentage
  defaults write com.apple.menuextra.battery ShowPercent -string "YES"
