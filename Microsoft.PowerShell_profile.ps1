Import-Module PSReadLine
Import-Module oh-my-posh
Import-Module z

Set-PSReadLineKeyHandler -Chord UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Chord DownArrow -Function HistorySearchForward
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -HistorySearchCursorMovesToEnd

oh-my-posh --init --shell pwsh --config ~/Desktop/dotfiles/.iterm2.omp.json | Invoke-Expression