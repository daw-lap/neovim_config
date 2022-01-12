# my_neovim - personal neovim configuration

## Requirements: 
[Neovim 0.5.x](https://github.com/neovim/neovim) , [FZF](https://github.com/junegunn/fzf)

## Installation
1. Install neovim 
2. Clone this repository:
```
git clone https://github.com/dl1987/my_neovim ~/.config/nvim
```
3. Install package manager [vim-plug](https://github.com/junegunn/vim-plug):
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
4. Create python-virtualenv for python3 at least, install pynvim for created venv:
```
python3 -m venv ~/.venv/neovim_p3
source $HOME/.venv/neovim_p3/bin/activate
python -m pip install pynvim
deactivate
```
5. Install plugins using vim-plug:
```
:PlugInstall
```
Running ```:UpdateRemotePlugins``` may be needed
