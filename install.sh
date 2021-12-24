#!/usr/bin/sh

# Machine initilize script

sudo apt-get update && sudo apt-get upgrade

# Link dotfiles
mv ~/.zshrc ~/.zshrc.bak
sudo ln -sf "${PWD}/.zshrc" ~/.zshrc

mv ~/.vimrc ~/.vimrc.bak
# mkdir -p ~/.config/nvim
# sudo ln -sf "${PWD}/.vimrc" ~/.config/nvim/init.vim
sudo ln -sf "${PWD}/.vimrc" ~/.vimrc

mkdir -p ~/.config
mv ~/.config/startship.toml ~/.config/starship.toml.bak
sudo ln -sf "${PWD}/.config/starship.toml" ~/.config/starship.toml

mv ~/.gitconfig ~/.gitconfig.bak
sudo ln -sf "${PWD}/.gitconfig" ~/.gitconfig

# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
unset ZSH
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# Install startship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Install oh-my-zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Change default shell
chsh -s $(which zsh)
