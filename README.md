# Mac Setup

![Shell Example](https://cloud.githubusercontent.com/assets/1259364/23415643/b7dd8ac4-fd94-11e6-85ab-94fd7aa908bd.png)


## How to set up

### Zsh Profile

1. Remove the current profile:

`rm ~/.zshrc`

2. Set up a symlink to the repo profile, e.g.:

`ln -s ~/Projects/dotfiles/.zshrc ~/.zshrc`


### Terminal

1. Open Terminal and go to *Preferences -> Profiles*.
2. In the bottom left, click the *••• -> Import*.
3. Find and load *Levi.terminal*.
4. Click on the new *Levi* profile in the left sidebar and click *Default* in the bottom left.


### Claude Code

#### Hooks

Set up symlinks to your home directory:

```bash
ln -s ~/Projects/dotfiles/.claude/settings.json ~/.claude/settings.json
ln -s ~/Projects/dotfiles/.claude/play-sound.sh ~/.claude/play-sound.sh
```

This configures hooks that play sound notifications for Claude Code events:

- **Stop event**: Plays "Blow" sound when Claude finishes a task
- **Notification event**: Plays "Glass" sound for Claude notifications  
- **Configuration**: `.claude/settings.json` with hook script `.claude/play-sound.sh`


#### Commands

Set up symlinks to your home directory:

```bash
ln -s ~/Projects/dotfiles/.claude/commands ~/.claude/commands
```


#### Clipboard Helper

Set up symlink for the clipboard helper script:

```bash
ln -s ~/Projects/dotfiles/.claude/clipboard.sh ~/.claude/clipboard.sh
```

This enables Claude Code to copy text directly to your clipboard. Usage examples:

```bash
# Copy text directly
clip "Hello, World!"

# Copy file contents
clip -f ~/.ssh/id_rsa.pub

# Copy command output
git status | clip

# Copy last git commit message
git log -1 --pretty=%B | clip

# Copy last executed command (using cliplast function)
cliplast

# Copy current directory path (using clipwd function)
clipwd
```

Particularly useful for:
- Automatically copying generated commit messages from Claude
- Quick text transfers from Claude to your clipboard
- Sharing code snippets or configuration
- Copying command outputs for documentation
- Getting file contents or paths quickly