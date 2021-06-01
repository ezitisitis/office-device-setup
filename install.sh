#!/bin/bash
echo 'Installing software'
brew install --cask slack
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask microsoft-office

while true; do
  read -r -p 'Do you want add some setting changes or security? [Y/n]' security
  case $security in
    [Yy]* )
      echo "Change computer name"
      open -b com.apple.systempreferences /System/Library/PreferencePanes/SharingPref.prefPane

      read -r "Ready for FireVault? [Y/n]" firevault
      case $firevault in
        '' | [Yy]* )
          open "x-apple.systempreferences:com.apple.preference.security?FireVault"
      esac

      read -r "How about Firewall? [Y/n]" firewall
      case $firewall in
        '' | [Yy]* )
          open "x-apple.systempreferences:com.apple.preference.security?Firewall"
      break;
      ;;
    [Nn]* )
      echo "Sad :("
      break;
      ;;
    * )
      echo Please answer YES or NO.
  esac
done