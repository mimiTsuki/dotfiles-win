cd ~/

sudo apt-get install git

git clone https://github.com/mimiTsuki/dotfiles.git

ln dotfiles/linux/.zshrc ~/.zshrc

# homebrewのインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# zshのインストール
sudo apt-get install zsh

chsh -s $(which zsh)

echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.zshrc

# Zinitのインストール

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# Starshipのインストール
brew install starship
echo 'eval "$(starship init zsh)"' >> ~/.zshrc