#!usr/bin/env bash

install_zsh() {
  echo "Installing Zsh..."
  sudo apt-get install zsh -y
  chsh -s $(which zsh)
}

install_oh_my_zsh() {
  echo "Installing Oh My Zsh..."
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)" "" --skip-chsh --keep-zshrc

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
}

install_oh_my_posh() {
  echo "Installing Oh My Posh..."
  sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-$(dpkg --print-architecture) -O /usr/local/bin/oh-my-posh
  sudo chmod +x /usr/local/bin/oh-my-posh
}

install_fzf() {
  echo "Installing FZF..."
  tag=0.38.0
  name="fzf-$tag-linux_$(dpkg --print-architecture).tar.gz"
  wget https://github.com/junegunn/fzf/releases/download/$tag/fzf-$tag-linux_$(dpkg --print-architecture).tar.gz -O /tmp/$name
  tar -xzf /tmp/$name -C /tmp
  sudo mv /tmp/fzf /usr/local/bin
  rm /tmp/$name
}

install_rg() {
  echo "Installing Ripgrep..."
  sudo apt-get install ripgrep -y
}

install_fd() {
  echo "Installing fd..."
  tag=8.7.0
  name="fd_${tag}_$(dpkg --print-architecture).deb"
  wget https://github.com/sharkdp/fd/releases/download/v$tag/$name -O /tmp/$name
  sudo dpkg -i /tmp/$name
  rm /tmp/$name
}

install_exa() {
  echo "Installing exa..."
  tag=0.10.0
  name="exa-linux-x86_64-v${tag}.zip"
  wget https://github.com/ogham/exa/releases/download/v$tag/$name -O /tmp/$name
  unzip -o /tmp/$name -d /tmp/exa
  sudo mv /tmp/exa/bin/exa /usr/bin/
  rm /tmp/$name
}

install_bat() {
  echo "Installing bat..."
  tag=0.23.0
  name="bat_${tag}_$(dpkg --print-architecture).deb"
  wget https://github.com/sharkdp/bat/releases/download/v$tag/$name -O /tmp/$name
  sudo dpkg -i /tmp/$name
  rm /tmp/$name
}

install_neovim() {
  echo "Installing NeoVim..."
  wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb -O /tmp/nvim-linux64.deb
  sudo dpkg -i /tmp/nvim-linux64.deb
  rm /tmp/nvim-linux64.deb

  sudo update-alternatives --install $(which vi) vi /usr/bin/nvim 60
  sudo update-alternatives --install $(which vim) vim /usr/bin/nvim 60
  sudo update-alternatives --install $(which editor) editor /usr/bin/nvim 60
}

install_nvm() {
  echo "Installing NVM..."
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash
}

install_neovim_config() {
  echo "Installing NeoVim config..."
  git clone https://github.com/waltkra/neovim-config $HOME/.config/nvim
}

install_gh_cli() {
  echo "Installing Github CLI..."
  tag=2.25.1
  name="gh_${tag}_linux_$(dpkg --print-architecture).deb"
  wget https://github.com/cli/cli/releases/download/v$tag/$name -O /tmp/$name
  sudo dpkg -i /tmp/$name
  rm /tmp/$name
  gh config set editor nvim
}

install_package_list() {
	if [ -f package-list.txt ]; then
		echo "Installing package list..."
		sudo apt-get update
		sudo apt-get install -y $(cat package-list.txt)
	fi
}
