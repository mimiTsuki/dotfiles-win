cd ~/

git clone https://github.com/mimiTsuki/dotfiles.git

ln dotfiles/zsh/.zshrc ~/.zshrc

# homebrewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Zinitのインストール

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Starshipのインストール
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
