

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

unset rc

alias neofetch="neofetch --source ~/.config/neofetch/.neofetch_img.txt"
alias con-website="cd ~/Documents && ssh -i ssh-key-2024-01-12.key ubuntu@130.61.63.156"
alias confs-website="cd ~/Documents && sshfs -i ssh-key-2024-01-12.key ubuntu@130.61.63.156:/home/ubuntu ."

alias pdf="~/.config/zathura/search"
unset rc
. "$HOME/.cargo/env"
eval "$(starship init bash)"
eval "$(zoxide init bash)"

export java_home=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:/opt/maven/bin
export PATH=$PATH:/opt/maven/bin


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
