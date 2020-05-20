# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/antonhub/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="af-magic" #option
# ZSH_THEME="eastwood" #option
# ZSH_THEME="sunaku" #option
ZSH_THEME="avit" #option
# ZSH_THEME="agnoster" #option
# ZSH_THEME="robbyrussell" #option

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# My settings------------------------------------------------------------------
DEFAULT_USER prompt_context(){}

# neovim as default editor
export EDITOR=nvim

# Aliases-----------------------------------------------------------------------

# Alias for ping
alias pin='ping -c 3 8.8.8.8'

# Alias for XAMPP service
alias xampp='sudo /opt/lampp/xampp'

# Alias for mysql (XAMPP)
alias mysql_xampp='/opt/lampp/bin/mysql'

# Alias for zsh config file
alias zshconf='nvim ~/.zshrc'

# Alias for neovim config file
alias nvimconf='nvim ~/.config/nvim/init.vim'

# Alias for tmux config file
alias tmuxconf='nvim ~/.tmux.conf'

#Alias for alacritty config file
alias alacrittyconf='nvim ~/.config/alacritty/alacritty.yml'

#Alias for kitty config file
alias kittyconf='nvim ~/.config/kitty/kitty.conf'

#Alias for i3 config file
alias i3conf='nvim ~/.config/i3/config'

#PATH-----------------------------------------------------------------------

# Set JAVA_HOME variable
# export JAVA_HOME=$HOME/Software/jdk1.8.0_221/bin/java
export JAVA_HOME=$HOME/Software/jdk1.8.0_221 # VSCode needs it

# Set JRE_HOME variable
export JRE_HOME=$HOME/Software/jdk1.8.0_221/jre/bin/java

# Add my composer packages to the path
export PATH=$PATH:$HOME/.config/composer/vendor/bin

# Add my scripts to the path
export PATH=$PATH:$HOME/.scripts

# Add Java bins to PATH variable
export PATH=$PATH:$HOME/Software/jdk1.8.0_221/bin

# Add Javacc bins to PATH variable
export PATH=$PATH:$HOME/Software/javacc-6.0/bin

# Add NodeJS bins to PATH variable
export PATH=$PATH:$HOME/Software/other/node-v12.16.3-linux-x64/bin

# Add Golang bins to PATH variable
export PATH=$PATH:/usr/local/go/bin

# Set TERM to xterm-256color if tmux is not running (Some terminal emulators haven't
# this config as defautl). This for correct colors in neovim inside tmux
[ -z "$TMUX" ] && export TERM=xterm-256color

if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
