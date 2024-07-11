# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# if [ -d ~/.zshrc.d ]; then  # Zsh typically uses a .zshrc.d directory
unset rc
. "$HOME/.cargo/env"
if [ -f /etc/zshrc ]; then  # Zsh equivalent of /etc/bashrc
    source /etc/zshrc
fi
if ! [[ $PATH =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

alias neofetch="fastfetch --logo ~/.config/neofetch/.neofetch_img.txt"
alias pdf="~/.config/zathura/search"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

export java_home=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:/opt/maven/bin
export PATH=$PATH:/opt/maven/bin
export PATH=$PATH:~/.platformio/penv/bin


neofetch

export PATH=$PATH:/snap/bin

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:/home/tired_atlas/.juliaup/bin:*)
        ;;

    *)
        export PATH=/home/tired_atlas/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
alias cd="z"


