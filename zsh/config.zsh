## HISTORY ##

# 履歴を他のシェルと共有する
setopt share_history

## COMPLEMENT ##

# 補完を有効化する
autoload -Uz compinit && compinit

# 大文字小文字関係なく補完する
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

# 補完方法ごとにグループ化する
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

# 補完候補をメニューから選択する
zstyle ':completion:*:default' menu select=2

## OTHER ##

# ディレクトリ名のみ入力されたときにもcdする
setopt auto_cd

