# Dotfiles

Here are my dotfiles. I have used homesick to create this repo/CASTLE using
homesick generate command. Homesick should help transfering to another machine.

https://github.com/technicalpickles/homesick

## Installation

### pre installation

based on this guide: http://jilles.me/badassify-your-terminal-and-shell/

```sh
install zim
install fura code retina nerd font
install geometry theme (https://github.com/geometry-zsh/geometry)
brew install vim
brew install zsh
brew install z
brew install tmux
curl -L http://install.ohmyz.sh | sh
touch ~/.hushlogin
```

Will also need to install powerline fonts

### Installation

requires the homesick gem
```sh
gem install homesick
```
```sh
homesick clone git@github.com:sivanpatel/dotfiles.git
```
once cloned then symlink the dotfiles
```sh
homesick symlink dotfiles
```
Install Vundler

**having problems with this at them moment so may have to install Vundler
manually**
Uses .homesickrc to install vundler.
```sh
homesick rc dotfiles
```
then in vim run :PluginInstall to get vundler to take the plugins.
