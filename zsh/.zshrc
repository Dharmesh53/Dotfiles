# zmodload zsh/zprof 


gacp() {
  git add .
  git commit -m "$1"
  git push
}

# eval "$(starship init zsh)"
eval "$(zoxide init --cmd cd zsh)"

export ZSH="$HOME/.oh-my-zsh"
export SSH_AUTH_SOCK=/run/user/$UID/keyring/ssh
export PATH="/home/ninjafire/.local/bin:/home/ninjafire/.local/share/pnpm:$PATH"
export GTK_PATH="/usr/include/gtk3.0"
export XDG_CACHE_HOME=/home/ninjafire/.cache
export XAUTHORITY=/home/ninjafire/.Xauthority
export EDITOR='nvim'
export GTK_THEME=Gruvbox-Dark
export LANG=en_US.UTF-8
export MICRO_TRUECOLOR=1
export GDK_BACKEND=x11
export DISPLAY=:0

HYPHEN_INSENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"

ZSH_THEME="steeef"
DISABLE_AUTO_UPDATE="true"
plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

alias mivn="NVIM_APPNAME=mivn nvim"
alias ..='cd ..'
alias ....='cd ../..'
alias dots='cd ~/Dotfiles'
alias conf='cd ~/.config'
alias df='cd ../frontend'
alias db='cd ../backend'

alias nv='nvim'
alias vn="sudo nvim"
alias zconf="nvim ~/.zshrc"
alias clearvim='rm ~/.local/state/nvim ~/.local/share/nvim ~/.cache/nvim'
alias clearmivn='rm ~/.local/state/mivn ~/.local/share/mivn ~/.cache/mivn'

alias uncommit="git reset HEAD~1"
alias recommit="git commit --amend --no-edit"
alias editcommit="git commit --amend"

alias vv="bat ~/Workspace/.todo"
alias ee="nvim ~/Workspace/.todo"
alias aa="bat >> ~/Workspace/.todo"

alias ls='eza --grid --color auto --icons --sort=type'
alias ll='eza --long --color always --icons --sort=type'
alias la='eza --grid --all --color auto --icons --sort=type'
alias lla='eza --long --all --color auto --icons --sort=type'

alias cache='paru -Scc'
alias orphan='paru -Rns $(pacman -Qtdq)'
alias mirrors='sudo reflector --verbose --sort rate -l 30 --save /etc/pacman.d/mirrorlist'

alias rm='rm -vrf'
alias ts='tesseract'
alias df='duf'
alias lol='lolcat'
alias cost='scc'
alias du='du -shc'
alias secret='openssl rand -hex 32'

alias waves='sudo systemctl restart hotspot.service'
alias stop='sudo systemctl stop hotspot.service'

alias rebuild='sudo make clean install'
alias patch='patch -p1 < '

# zprof
