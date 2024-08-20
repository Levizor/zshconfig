ZOXIDE_CMD_OVERRIDE="cd"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$ZDOTDIR/ohmyzsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time

ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
COMPLETION_WAITING_DOTS="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"


# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi


#sourcing
source /home/levizor/zsh_config/.antidote/antidote.zsh
antidote load
source /home/levizor/zsh_config/aliases.zsh

MAGIC_ENTER_OTHER_COMMAND='lsd -a'
MAGIC_ENTER_GIT_COMMAND='lsd -a'

#binding
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#zsh autosuggestion style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#464577,bold"



setopt completealiases
setopt extended_glob

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:complete:*' fzf-preview 'lsd -1 --color=always $realpath'
zstyle ':fzf-tab:complete:nvim*:' fzf-preview 'bat $realpath' 
zstyle ':fzf-tab:*' switch-group '<' '>'

# give a preview of commandline arguments when completing `kill`
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,comm -w -w"
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-preview \
  '[[ $group == "[process ID]" ]] && ps --pid=$word -o cmd --no-headers -w -w'
zstyle ':fzf-tab:complete:(kill|ps):argument-rest' fzf-flags --preview-window=down:3:wrap;
zstyle ':fzf-tab:complete:systemctl-*:*' fzf-preview 'SYSTEMD_COLORS=1 systemctl status $word'

export LESSOPEN='|~/.lessfilter %s'

eval "$(oh-my-posh init zsh --config '~/.config/oh-my-posh/config.toml')"

#history
setopt SHARE_HISTORY
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/zsh_config/.zsh_history

#exporting
export PATH="$PATH:/home/levizor/.local/bin"

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export LS_COLORS=$(vivid generate rose-pine-moon)
export BAT_THEME="base16-256"

