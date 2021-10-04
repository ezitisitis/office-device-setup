#!/bin/bash
echo 'Installing software'
brew install --cask slack
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask microsoft-office
brew install --cask zoom

read -r -p 'Do you want add some setting changes or security? [Y/n]' security
case $security in
  [Yy]* )
    echo "Change computer name"
    open -b com.apple.systempreferences /System/Library/PreferencePanes/SharingPref.prefPane

    read -r "Ready for FileVault? [Y/n]" filevault
    case $filevault in
      '' | [Yy]* )
        open "x-apple.systempreferences:com.apple.preference.security?FileVault"
    esac

    read -r "How about Firewall? [Y/n]" firewall
    case $firewall in
      '' | [Yy]* )
        open "x-apple.systempreferences:com.apple.preference.security?Firewall"
    esac
esac
