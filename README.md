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