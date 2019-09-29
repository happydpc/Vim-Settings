#!/bin/bash

# Help
echoHelp() {
    echo "Usage: $0 [options]"
    echo "  --all     setup all of the following"
    echo "  --nvim    setup Neovim and install plugins with vim-plug"
    echo "  --vim     setup Vim and install plugins with vim-plug"
    exit 0
}

# Check
checkEnable() {
    _curl=$(which curl)
    if [ -z ${_curl} ]; then
        echo "[31mError[0m: You need to have curl installed and in your system path for this task to work"
        exit 1
    fi

    _git=$(which git)
    if [ -z ${_git} ]; then
        echo "[31mError[0m: You need to have git installed and in your system path for this task to work"
        exit 1
    fi
}

# Dotfiles
setDotfiles() {
    checkEnable

    curl -fLo "${HOME}/.clang-format" "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/dotfiles/clang-format"
    curl -fLo "${HOME}/.ctags" "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/dotfiles/ctags"
    curl -fLo "${HOME}/.mypy.ini" "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/dotfiles/mypy.ini"
    curl -fLo "${HOME}/.pylintrc" "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/dotfiles/pylintrc"
}

# Neovim
setNeovim() {
    checkEnable

    _nvim=$(which nvim)
    if [ -z ${_nvim} ]; then
        echo "[31mError[0m: You need to have nvim installed and in your system path for this task to work"
        return 1
    fi

    if [ ! -e "${HOME}/.local/share/nvim/site/autoload/plug.vim" ]; then
        curl -fLo "${HOME}/.local/share/nvim/site/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    fi

    curl -fLo "${HOME}/.config/nvim/init.vim" --create-dirs "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/nvim/init.vim"
    curl -fLo "${HOME}/.config/nvim/plugins.vim" --create-dirs "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/nvim/plugins.vim"
    curl -fLo "${HOME}/.config/nvim/keybindings.vim" --create-dirs "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/nvim/keybindings.vim"

    chmod +x "${HOME}/.config/nvim/init.vim"
    chmod +x "${HOME}/.config/nvim/plugins.vim"
    chmod +x "${HOME}/.config/nvim/keybindings.vim"

    nvim +PlugInstall +qall
}

# Vim
setVim() {
    checkEnable

    _vim=$(which vim)
    if [ -z ${_vim} ]; then
        echo "[31mError[0m: You need to have vim installed and in your system path for this task to work"
        return 1
    fi

    if [ ! -e "${HOME}/.vim/autoload/plug.vim" ]; then
        curl -fLo "${HOME}/.vim/autoload/plug.vim" --create-dirs "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    fi

    curl -fLo "${HOME}/.vimrc" "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/vim/vimrc.vim"
    curl -fLo "${HOME}/.vim/plugins.vim" --create-dirs "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/vim/plugins.vim"
    curl -fLo "${HOME}/.vim/keybindings.vim" --create-dirs "https://raw.githubusercontent.com/hwyncho/Vim-Settings/master/vim/keybindings.vim"

    chmod +x "${HOME}/.vimrc"
    chmod +x "${HOME}/.vim/plugins.vim"
    chmod +x "${HOME}/.vim/keybindings.vim"

    vim +PlugInstall +qall
}

# main
main() {
    declare -a params=$@
    for p in ${params[@]}; do
        case "${p}" in
        --help)
            echoHelp
            ;;
        --nvim)
            setNeovim
            setDotfiles
            ;;
        --vim)
            setNeovim
            setDotfiles
            ;;
        *)
            echo "Error: invalid option: $p"
            exit 1
            ;;
        esac
    done
}

main $@
