#!/usr/bin/env bash
#get homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#Update and upgrade
brew update
brew upgrade
#install brew packs

#bash
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Install `wget` with IRI support.
brew install wget --with-iri
brew install grep
brew install ssh-copy-id
brew install git
brew install git-lfs
brew install htop
brew install hub
brew install openssh
brew install mas
#Xcode CLI
xcode-select --install


echo "alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew cask cleanup; brew doctor'" >> ~/.bash_profile
source ~/.bash_profile

# Remove outdated versions from the cellar and general checkup with homebrew
brewup


