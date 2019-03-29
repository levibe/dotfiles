# Get current branch in git repo
function parse_git_branch() {
    BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
    if [ ! "${BRANCH}" == "" ]
    then
	STAT=`parse_git_dirty`
	echo "[${BRANCH}${STAT}]"
    else
	echo ""
    fi
}

# Get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[1;32m\] \u \[\033[00m\]\[\e[1;2m\]\t\[\033[00m\] \[\033[01;36m\]\w\[\033[00m\] \[\033[01;34m\]\`parse_git_branch\`\[\033[00m\] \\$ "

# Nicer prompt (doesn't show git branch)
#export PS1="\[\e[1;32m\]\]\[\] \[\e[1;32m\]\]\[\u\] \[\e[0;2m\]\]\t \[\e[0;36m\]\]\w \[\e[0m\]\]\[$\] "

# Use colors
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad


# ALIASES

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~" # `cd` is probably faster to type though
alias -- -="cd -"

# Shortcuts
alias d="cd ~/Desktop"
alias db="cd ~/Dropbox\ \(Personal\)"
alias dl="cd ~/Downloads"
alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"

# Momentum specific
alias dm="cd ~/Dropbox\ \(Momentum\)"
alias m="cd ~/Projects/momentum-extension"
alias ma="cd ~/Projects/momentum-addins"
alias mac="cd ~/Projects/momentum-account"
alias mad="cd ~/Projects/momentum-admin"
alias md="cd ~/Projects/momentum-destinations"
alias mq="cd ~/Projects/momentum-quotes"
alias ms="cd ~/Projects/momentum-site"
alias ga="gulp addins"
alias ns="npm start"
alias nrd="npm run dev"
alias qa="cp -R ~/Projects/momentum-extension/dist/ ~/Dropbox\ \(Momentum\)/Momentum\ Team\ Folder/QA/Momentum\ Chrome/"
alias run="npm start"


# Show colors by default
alias ls="ls -G"

# Show and hide hidden files
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Hide/show all desktop icons (useful when presenting)
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Show and hide file extensions
alias showextensions="defaults write NSGlobalDomain AppleShowAllExtensions -bool true && killall Finder"
alias hideextensions="defaults write NSGlobalDomain AppleShowAllExtensions -bool true && killall Finder"

# Show active network interfaces
alias ifactive="ifconfig | grep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Ring the terminal bell, and put a badge on Terminal.app’s Dock icon
# (useful when executing time-consuming commands)
alias ring="tput bel"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Print each PATH entry on a separate line
alias paths='echo -e ${PATH//:/\\n}'


# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:/usr/local/sbin":$PATH

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
