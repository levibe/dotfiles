# Customize prompt
autoload -U colors && colors
PS1="%{%F{10}%} %n%{$reset_color%} %{%F{8}%}%*%{$reset_color%} %{%F{6}%}%~%{$reset_color%} %{%F{15}%}$%{$reset_color%} "


# ALIASES

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Shortcuts
alias d="cd ~/Desktop"
alias db="cd ~/Dropbox\ \(Personal\)"
alias dl="cd ~/Downloads"
alias p="cd ~/Projects"

# Momentum specific
alias dm="cd ~/Dropbox\ \(Momentum\)"
alias m="cd ~/Projects/momentum-extension"
alias mac="cd ~/Projects/momentum-account"
alias mad="cd ~/Projects/momentum-admin"
alias ms="cd ~/Projects/momentum-marketing-site"
alias ma="cd ~/Projects/momentum-extension/source/platforms/apple/embedded-web-app"

# NPM
alias ns="npm start"
alias nl="npm run lint"
alias nrl="npm run lint"
alias nd="npm run dev"
alias nrd="npm run dev"

# Show colors by default
alias ls="ls -G"

# Show and hide hidden files
alias showhidden='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

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

export PATH="/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="/usr/local/bin:/usr/local/sbin":$PATH

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/ruby/bin:$PATH"

export PATH="/usr/local/go:/usr/local/go/bin:$PATH"

export PATH="/opt/homebrew/bin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# nvm config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# auto-run nvm use where present
#if [ -f ".nvmrc" ]; then
#  nvm use > /dev/null
#else
#  nvm use default > /dev/null
#fi
#export PATH=~/.npm-global/bin:$PATH

# auto-run nvm use where present and install when version is not found
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# Initialize rbenv
eval "$(rbenv init - zsh)"

# pyenv  
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

# pnpm
export PNPM_HOME="/Users/levi/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
