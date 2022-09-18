# version control settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst

# prompts
PROMPT='%n%B@%b%m %1~ %# '
RPROMPT='%(?.✅.❌) ${vcs_info_msg_0_}'

# zstyles for version control
zstyle ':vcs_info:git:*' formats '(%b)%r'
# zstyle ':vcs_info:*' enable git

# zsh imports
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# zsh autosuggestion settings
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
