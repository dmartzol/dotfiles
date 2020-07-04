# Setting up a new mac

## 1. Config Options

* Finder > view:
	- Show Status Bar
	- Show Path bar
* System Preferences > Show scroll bars: always.
* System Preferences > Keyboard > Text: disable correct spelling automatically.
* In a Finder window, press `cmd+shift+.` to show hidden files.

## 2. SSH Keys

Install new ssh key in this new machine:

```
cd
mkdir .ssh
cd .ssh
ssh-keygen
```

Then paste the public key `id_rsa.pub`(you can get it with `cat id_rsa.pub`) on services that use it, like *Github*.

## 3. Terminal setup

### 3.1 Install Homebrew

Go to [the official website](https://brew.sh) and follow the instructions.

### 3.2 Install your dotfiles:

```
git clone git@github.com:dmartzol/dotfiles.git ~/dev/dotfiles
cd ~/dev/dotfiles/
chmod +x init.zsh
./init.zsh
```

### 3.3 Install PowerLevel10k:

Installation using homebrew:

```
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```

To copy my theme config:
```
cp ~/dev/dotfiles/.p10k.zsh ~/.p10k.zsh
```

Then import `Monokai-Custom-theme.terminal` into your terminal app.

It looks something like this:

![temrinal screeshot](https://github.com/dmartzol/dotfiles/blob/master/custom-monokai.png)


## 4. Useful software

* Sublime Text.

	After downloading ST, install the command line tool `subl` creating a symlink:
	```
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
	```

* DBeaver:
	1. First install Java with `brew cask install java`
	2. Install DBeaever with `brew cask install dbeaver-community`

* PostgreSQL:

	To completely remove PostgreSQL from your system(if you are reinstalling using homebrew):
	
	```
	brew services stop postgresql
	brew uninstall postgresql
	rm -rf /usr/local/var/postgres
	rm -rf .psql_history .psqlrc .psql.local .pgpass .psqlrc.local
	```
	
	And then:
	
	```
	brew install postgres
	```

* Micro Text Editor: `brew install micro`
* Navi cheat sheet app for CLI:

	1. Install `brew install navi`
	2. Add my cheat sheets `navi repo add https://github.com/dmartzol/dotfiles`

* `tree` command: `brew install tree`
* Karabiner elements
* Enpass
* Dropbox
* Visual Studio Code
* Telegram
* The Unarchiver
* SiteSucker
* Slack
* Whatsapp Desktop
* Google Chrome
* Textual 7
* MacDown
* Postman
* Github Desktop
* Dash
* Sublime Merge
* Spotify
* Fork
* Draw.io
* Discord
* nteract
* VLC

## 5. Programming languages

* To install Golang:

	1. `brew install go`
	2. Then add to your `.zshrc` file the line `export PATH=$PATH:$HOME/go/bin`.

* Python & pip: `brew install python3`

* Node and npm: `brew install node`
