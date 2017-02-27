# Nicer prompt
export PS1="\[\e[1;32m\]\]\[\] \[\e[1;32m\]\]\[\u\] \[\e[0;2m\]\]\t \[\e[0;36m\]\]\w \[\e[0m\]\]\[$\] "

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
alias dm="cd ~/Dropbox\ \(Momentum\)"
alias dl="cd ~/Downloads"
alias p="cd ~/Projects"
alias g="git"
alias h="history"
alias j="jobs"

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
