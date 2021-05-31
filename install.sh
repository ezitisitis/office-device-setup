#!/bin/bash

echo 'Installing brew'
curl /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'Installing software'
brew install --cask slack
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask microsoft-office