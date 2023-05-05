command_exists() {
  command -v "$@" >/dev/null 2>&1
}

alias wget='wget -O /tmp'
alias odoorc="vi ~/.odoorc"

if command_exists exa; then
	alias ll="exa -lg --sort=modified --reverse --icons"
	alias la="exa -lag --sort=modified --reverse --icons"
fi

if command_exists bat; then
	# alias cat='bat --paging=never'
	alias cat='bat'
	alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
	batdiff() {
		git diff --name-only --relative --diff-filter=d $@ | xargs bat --diff
	}
	alias gd='batdiff'
fi

if command_exists wsl.exe && [ -n "$WSL_DISTRO_NAME" ]; then
	alias e='explorer.exe'
	alias winget='winget.exe'
	sudo touch /usr/bin/powershell
	sudo chmod +x /usr/bin/powershell
	echo 'powershell.exe -ExecutionPolicy Bypass $@' | sudo tee /usr/bin/powershell > /dev/null
	export WINHOME="$(wslpath "$(wslvar USERPROFILE)")"
	export DESKTOP="$WINHOME/Desktop"
fi
