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

# Alias for XAMPP service
alias xampp='sudo /opt/lampp/xampp'

# Alias for mysql (XAMPP)
alias mysql_xampp='/opt/lampp/bin/mysql'

# Alias for zsh config file
alias zshconf="$EDITOR_BARE ~/.zshrc"

# Alias for neovim config file
alias nvimconf="$EDITOR_BARE ~/.config/nvim/init.lua"

# Alias for tmux config file
alias tmuxconf="$EDITOR_BARE ~/.tmux.conf"

# Alias for alacritty config file
alias alacrittyconf="$EDITOR_BARE ~/.config/alacritty/alacritty.yml"

# Alias for kitty config file
alias kittyconf="$EDITOR_BARE ~/.config/kitty/kitty.conf"

# Alias for current monitor setup
alias sm_home="$HOME/.scripts/monitors/home.sh"
alias sm_single="$HOME/.scripts/monitors/single.sh"
alias sm_office="$HOME/.scripts/monitors/office.sh"

# Alias for kitty config file
alias bat='/usr/bin/batcat'

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

# My settings------------------------------------------------------------------

# Default editor
export EDITOR=$EDITOR_BARE
export VISUAL=$EDITOR
export SUDO_EDITOR=$EDITOR

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Android
export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/build-tools/28.0.3

# Gradle
export PATH=$PATH:$HOME/Software/other/gradle-7.0.2/bin

# Java JRE from Android Studio
export PATH=$PATH:$HOME/Software/other/android-studio/jre/bin

# Golang
export PATH=$PATH:/usr/local/go/bin

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Add direnv bin
export PATH="$PATH:$HOME/Software/others/direnv"

# Add kubectx and kubens bins
export PATH="$PATH:$HOME/Software/repos/kubectx"

# Add postman bin
export PATH="$PATH:$HOME/Software/others/Postman"

# Just needed in dwm (or another window manager) for the JVM (Java Virtual
# Machine) to believe it is running a different window manager.
# It is useful for IntelliJ IDEA, for example. This prevents a "blank screen"
# when opening the IDE.
# More info at https://tools.suckless.org/x/wmname/
# wmname compiz

# Fix invisible commments in the terminal
export ZSH_HIGHLIGHT_STYLES[comment]='none'

export NODE_VERSIONS="$NVM_DIR/versions/node"
export NODE_VERSION_PREFIX=v

eval "$(direnv hook zsh)"

# Kubectl autocompletion
source <(kubectl completion zsh)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(starship init zsh)"
