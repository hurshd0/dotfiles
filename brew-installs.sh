#!/usr/bin/env bash

#Check if Homebrew is installed
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    echo 'Installing Homebrew'
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    brew update
fi

#Upgrade installed formulae
brew upgrade

# Save Homebrew’s installed location
BREW_PREFIX=$(brew --prefix)

# CLI Tools 
brew install ffmpeg
brew install rsync

# Install `wget` with IRI support.
brew install wget --with-iri
brew install grep
brew install node

# Git, Git LFS, and Github cli
brew install git
brew install git-lfs
brew install github/gh/gh

# Installs Casks
brew tap homebrew/cask

#Apps I use
# brew install --cask firefox
# brew install --cask google-chrome
# brew install --cask notion
# brew install --cask spotify
# brew install --cask vlc
# brew install --cask visual-studio-code
# brew install --cask zoom
# brew install --cask discord
# brew install --cask slack
brew install --cask iterm2
brew install google-backup-and-sync
brew install google-drive
brew install whatsapp

# Remove outdated versions from the cellar.
brew cleanup
