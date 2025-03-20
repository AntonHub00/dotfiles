export ZSH=$HOME/.oh-my-zsh

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  colored-man-pages
  nvm
)

source $ZSH/oh-my-zsh.sh

# Aliases-----------------------------------------------------------------------
EDITOR_BARE="nvim"

# Alias for ping
alias pin='ping -c 3 8.8.8.8'

# Alias for zsh config file
alias zshconf="$EDITOR_BARE ~/.zshrc"

# Alias for neovim config file
alias nvimconf="$EDITOR_BARE ~/.config/nvim/init.lua"

# Alias for tmux config file
alias tmuxconf="$EDITOR_BARE ~/.tmux.conf"

# Alias for ghostty config file
alias ghosttyconf="$EDITOR_BARE ~/.config/ghostty/config"

# Alias for wezterm config directory
alias weztermconf="$EDITOR_BARE ~/.dotfiles/wezterm/.config/wezterm"

# Open directory in the current VSCode instance
alias c.="code -r ."

# Kubectl
alias k="kubectl"

alias weztermconfig="wezterm cli spawn -- nvim -c \"lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true, cwd = '~/.dotfiles/wezterm/.config/wezterm' })\""
alias nvimconfig="wezterm cli spawn -- nvim -c \"lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true, cwd = '~/.dotfiles/nvim/.config/nvim' })\""
alias tmuxconfig="wezterm cli spawn -- nvim ~/.dotfiles/tmux/.tmux.conf"

# PATH-------------------------------------------------------------------------

# Add my scripts to the path
export PATH=$PATH:$HOME/.scripts

export PATH=$PATH:$HOME/.local/bin

export PATH=$PATH:$HOME/go/bin

# My settings------------------------------------------------------------------

# Default editor
export EDITOR=$EDITOR_BARE
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR

# Fix invisible commments in the terminal
export ZSH_HIGHLIGHT_STYLES[comment]='none'

export NODE_VERSIONS="$NVM_DIR/versions/node"
export NODE_VERSION_PREFIX=v

eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(direnv hook zsh)"

# Kubectl autocompletion
source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"

source <(fzf --zsh)

# searchProjects(){
#     cd $(fd -t d -d 3 -E node_modules -E hooks -E info -E logs -E objects -E refs -E worktrees . $HOME/Documents/foo/bar | fzf)
# }
# alias sp="searchProjects"
