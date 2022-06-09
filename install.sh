#!/usr/bin/sh

backupAndLink(){
    filename=$1;
    path=~/$filename;

    if [ -f $path ]; then
        echo "Moving $path to $path.bak"
        mv $path $path.bak
    fi

    ln -sv "${PWD}/$filename" $path
}

backupAndLink .zshrc
backupAndLink .vimrc
backupAndLink .iterm2.omp.json

sudo apt-get update

# Install zsh
sudo apt install -y zsh

# Install oh-my-zsh
rm -rf ~/.oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended --keep-zshrc

# Install oh-my-posh
sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh
sudo chmod +x /usr/local/bin/oh-my-posh

# Install oh-my-zsh plugins
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}
rm -rf "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
rm -rf "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Change default shell
chsh -s $(which zsh)

# run zsh
exec zsh -l
