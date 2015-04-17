# Install zsh shell with oh-my-zsh
curl -L github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

git clone http://github.com/MarsBased/dev-config /tmp/marstemplate

# Copy configuration for zsh
mv ~/.zshrc ~/.zshrc.base
cp /tmp/marstemplate/zsh/.zshrc ~/.zshrc

# Copy .gitignore
mv ~/.gitignore ~/.gitignore.old
cp /tmp/marstemplate/zsh/.gitignore ~/.gitignore

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install Caskroom/cask/java

brew install rbenv ruby-build mysql postgresql elasticsearch nodejs imagemagick mongodb redis wget

brew update && brew upgrade ruby-build

rbenv install 2.2.2

# Install Package Control for Sublime
wget https://packagecontrol.io/Package%20Control.sublime-package ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

# Copy sublime snippets
cp /tmp/marstemplate/sublime/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
