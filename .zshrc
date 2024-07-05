_ZO_CMD_PREFIX="cd"

source /home/levizor/.antidote/antidote.zsh
antidote load
source ~/zsh_config/aliases.zsh


plugins=(zoxide autojump git adb aliases alias-finder 
          archlinux cp web-search zsh-autosuggestions 
          zsh-history-substring-search zsh-syntax-highlighting
        fzf-tab zsh-vi-mode)



setopt completealiases
setopt extended_glob

# Created by `pipx` on 2024-04-04 16:37:06
export PATH="$PATH:/home/levizor/.local/bin"

# eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export LS_COLORS=$(vivid generate one-light)
export BAT_THEME="Monokai Extended Light"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
zstyle ':fzf-tab:*' switch-group '<' '>'

eval "$(oh-my-posh init zsh --config '~/.config/oh-my-posh/config.toml')"
