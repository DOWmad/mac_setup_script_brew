# mac_setup_script_brew
This is just a setup script I am building/using to install a bunch of useful utils/software with the help of brew.

I will update this regularly as my collection grows.

Please feel free to recommend other packages :)

**Use at your own risk.** 

Read and check if it is what you want before blindly running scripts.

# What it does:

## Install homebrew if not already there.

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Update and upgrade homebrew packages and homebrew itself.
```
> brew update
> brew upgrade
```

## Install some brew packs
## This installs bash cli and bash completion
More info [here](https://formulae.brew.sh/formula/bash-completion@2)
```
> brew install bash
> brew install bash-completion2
```

## Switch to using brew-installed bash as default shell
```
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;
```

## Install wget with IRI support.
## Wget is a program that allows the user to retrieve content from the web.

> `brew install wget --with-iri`

## Powerful search tool 

> `brew install grep`

## Useful for copying ssh keys to servers

> `brew install ssh-copy-id`

## Got to have git for version control :)

> `brew install git`

## This is git but with large file storage (lfs)

> `brew install git-lfs`

## Htop is better than top. Allows you to view running processes
[htop](https://hisham.hm/htop/)

> `brew install htop`

## Commandline wrapper for git. 
[hub info](https://github.com/github/hub)

> `brew install hub`

## Just the usual ssh protocol but more up to date.

> `brew install openssh`


## Awesome tool that lets you search the apple app store without launching it.
 [mas](https://github.com/mas-cli/mas)

> `brew install mas`


## Xcode CLI tools.

> `xcode-select --install`

```
echo "alias brewup='brew update; brew upgrade; brew prune; brew cleanup; brew cask cleanup; brew doctor'" >> ~/.bash_profile
source ~/.bash_profile
```

## Remove outdated versions from the cellar and general checkup with homebrew
> `brewup`

# To use

Clone the repo

Open terminal/iterm/zsh (whichever is your pref)

cd to where the repo cloned to.

Run these commands:

> `chmod +x mac_setup.sh`

> `./mac_setup.sh`

# To-do

Add more.
