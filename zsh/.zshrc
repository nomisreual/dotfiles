# History

# Location of the history file
HISTFILE=~/.zsh_history

# Maximum number of lines in the history file
HISTSIZE=10000

# Maximum number of commands saved in memory during a session
SAVEHIST=10000

# Configuration options for better history management
setopt appendhistory       # Append history instead of overwriting
setopt histignoredups      # Ignore duplicate commands in history
setopt sharehistory        # Share history between all sessions
setopt incappendhistory    # Write commands to history incrementally
setopt extendedhistory     # Record timestamps in the history file
setopt histreduceblanks    # Remove superfluous blanks from history
setopt histverify          # Show command after expanding history
setopt histignorespace     # Ignore commands that start with a space

# History collisions:
setopt incappendhistory  # Write to the history file as commands are entered
setopt sharehistory      # Share history across all running ZSH sessions

# Completion engine:
autoload -U compinit
compinit

# Starship prompt:
 eval "$(starship init zsh)"

# Rust:
. "$HOME/.cargo/env"

# Zoxide (better cd):
eval "$(zoxide init --cmd cd zsh)"

# Pipx (global python packages):
export PATH="$PATH:/home/simon/.local/bin"

# Syntax highlighting:
# source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

if [[ -f /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
fi

###########
# Aliases #
###########

# List, long, all
alias la="ls -la"

# Clear
alias c="clear"


# Yazi
alias y="yazi"

# fastfetch
if [[ -z $TMUX ]]; then
  fastfetch
fi
