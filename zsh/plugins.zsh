# powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# fast-syntax-highlighting
zinit light zdharma/fast-syntax-highlighting

# zsh-autosuggestions
zinit light zsh-users/zsh-autosuggestions
bindkey '^j' autosuggest-accept

# bat
zinit ice as"program" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# bat_alias
if builtin command -v bat > /dev/null; then
  alias cat="bat"
fi
