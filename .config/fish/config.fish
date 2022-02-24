set fish_greeting ""
set -x SSH_AUTH_SOCK $XDG_RUNTIME_DIR/ssh-agent.socket

# Colors

set fish_color_normal brblue
set fish_color_autosuggestion '#7d7d7d'
set fish_color_command brblue
set fish_color_error '#ff6c6b'
set fish_color_param brcyan


# Aliases

alias grep "grep --color=auto"
alias cat "bat --style=plain --paging=never"
alias ls "exa --group-directories-first"
alias tree "exa -T"
alias dotfiles "git --git-dir $HOME/.dotfiles/ --work-tree $HOME"
alias mirror "sudo reflector -c Spain -c Germany -a 12 -p https -p http --sort rate --save /etc/pacman.d/mirrorlist"
alias orphans "sudo pacman -Rns (pacman -Qqtd)"

# Abbreviations

abbr p "sudo pacman"
abbr SS "sudo systemctl"

# Prompt

starship init fish | source
