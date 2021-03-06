# Setting up a new mac

## 1. Config Options

* Finder > view:
	- Show Status Bar
	- Show Path bar
* System Preferences > General > Show scroll bars: always.
* System Preferences > Trackpad > Point & Click > enable `Tap to click`.
* System Preferences > Trackpad > More Gestures > disable `Swipe between pages`.
* System Preferences > Keyboard > Keyboard > set `Key Repeat` to fastest.
* System Preferences > Keyboard > Keyboard > set `Delay Until Repeat` to fastest.
* System Preferences > Keyboard > Text > disable `correct spelling automatically`.
* System Preferences > Keyboard > Shortcuts > App Shortcuts > add `Zoom` for all apps with shortcut `option+cmd+=`.
* System Preferences > Keyboard > Shortcuts > App Shortcuts > add `Show Next Tab` for `Safari` with shortcut `option+cmd+->`.
* System Preferences > Keyboard > Shortcuts > App Shortcuts > add `Show Previous Tab` for `Safari` with shortcut `option+cmd+<-`.
* In a Finder window, press `cmd+shift+.` to show hidden files.

![keyboard shortcuts](https://github.com/dmartzol/dotfiles/blob/master/keyboard-shortcuts.png)

## 2. Install All Software Updates for MacOS

## 3. Install Sublime Text

### 3.1 Download and install Sublime Text from the official website

### 3.2 Install `subl` tool for command line

	After downloading ST, install the command line tool `subl` creating a symlink:
	```
	ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
	```

## 4. Install Visual Studio Code

### 3.1 Download and install Visual Studio Code from the official website

### 3.2 Install tool `code` for command line

1. Open VSCode
2. Open command palette with `cmd+shift+p`
3. Type `shell command` to install `code` shell command and select from the list

## 5. SSH Keys

Install new ssh key in this new machine:

```
cd
mkdir .ssh
cd .ssh
ssh-keygen
```

Then paste the public key `id_rsa.pub`(you can get it with `cat id_rsa.pub`) on services that use it, like *Github*. To copy your public key to your clipboard use `cat ~/.ssh/id_rsa.pub | pbcopy`.

## 6. Terminal setup

### 6.1 Install Homebrew

Go to [the official website](https://brew.sh) and follow the instructions.

### 6.1 Install Iosevka for terminal

Install Iosevka font with

```sh
brew tap homebrew/cask-fonts
brew install --cask font-iosevka
```

### 6.2 Install your dotfiles:

```
git clone git@github.com:dmartzol/dotfiles.git ~/dev/dotfiles
cd ~/dev/dotfiles/
chmod +x init.zsh
./init.zsh
```

### 6.3 Install PowerLevel10k:

Installation using homebrew:

```
brew install romkatv/powerlevel10k/powerlevel10k
echo 'source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
```

To copy my theme config:
```
cp ~/dev/dotfiles/.p10k.zsh ~/.p10k.zsh
```

Then import `Monokai.terminal` into your terminal app.

It looks something like this:

![temrinal screeshot](https://github.com/dmartzol/dotfiles/blob/master/custom-monokai.png)

### 6.4 Git autocompletion:

You will need to change permissions to add autocompletion to git with:
(see https://stackoverflow.com/questions/13762280/zsh-compinit-insecure-directories)
```
sudo chmod -R 755 /usr/local/share/zsh
sudo chown -R root:staff /usr/local/share/zsh
```

## 7. Useful software

* DBeaver:
	1. First install Java with `brew install --cask adoptopenjdk`
	2. Install DBeaever with `brew install --cask dbeaver-community`

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
	brew services start postgresql
	createuser -s postgres
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
* Transmission

## 5. Programming languages

### 5.1 Golang

* To install Golang:

	1. `brew install go`
	2. Then add `export PATH=$PATH:$HOME/go/bin` to your `.zshrc`.

* Staticcheck for Golang:

`go get honnef.co/go/tools/cmd/staticcheck `


### 5.2 Python

* Python & pip: `brew install python3`

### 5.3 Nodejs

* Node and npm: `brew install node`
