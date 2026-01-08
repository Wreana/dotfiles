# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/cachyos-zsh-config/cachyos-config.zsh
source $HOME/.local/bin/env
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

export PATH="$PATH:/home/wreana/.nvim/nvim-linux-x86_64/bin"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

eval $(thefuck --alias)
eval $(thefuck --alias fk)
eval "$(zoxide init zsh)"


export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_SDK_ROOT=$ANDROID_HOME
export PATH=$PATH:/usr/bin

unsetopt correct
unsetopt correct_all

# Universal Alias for better work flow
alias venv="source .venv/bin/activate"
alias zsh="source ~/.zshrc"
alias lzsh="nvim ~/.zshrc"
alias love="nvim"
alias ls="eza -aa --grid --color=never --long --git --no-filesize --icons=always --no-time --no-user --no-permissions"
alias init="/home/wreana/Documents/Personal/Project/MeowNitize/init.sh"
alias cd="z"

gi() {
    case "$1" in
        ps)
            shift
            git push "$@"
            ;;
        pl)
            shift
            git pull "$@"
            ;;
        st)
            shift
            git status "$@"
            ;;
        ct)
            shift
            git commit -m "$@"
            ;;
        *)
            git "$@"
            ;;
    esac
}

py() {
    case "$1" in
        run)
            shift
            python manage.py runserver "$@"
            ;;
        makemigrations)
            shift
            python manage.py makemigrations "$@"
            ;;
        migrate)
            shift
            python manage.py migrate "$@"
            ;;
        m)
            shift
            python manage.py "$@"
            ;;
        *)
            python "$@"
            ;;
    esac
}

. "$HOME/.local/bin/env"
. "$HOME/.asdf/asdf.sh"
fpath=("$HOME/.asdf/completions" $fpath)
autoload -Uz compinit
compinit

