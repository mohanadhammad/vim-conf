# vim-conf
This a - ready to use - configuration for vim to be used as an IDE

## Prerequisits

- Neovim version > 0.3.0
- Clangd should be installed. (https://clangd.llvm.org/installation.html)
    - Make sure its installed correctly by checking the version.
    - This is necessary for coc-clangd to work proparly.

## Vim

After cloning this repo to your machine, you will need to change paths in
plugins.vim and _vimrc which are mapping to ~/.config/nvim and instead let it
point to ~/.vim instead.

After that execute the following commands:

```sh
cp _vimrc ~/.vimrc
cp -r _vim ~/.vim
```

such that "~/" in linux stands for home directory "/home/<username>/".
In windows this should be "C:\Users\<username>\" and the file name will be
different:

- .vim/ -> _vimfiles
- .vimrc -> _vimrc.

## NeoVim

if you are using neovim instead of vim then the configuraions directory will be
different. In that case the commands you should run after cloning the repo are:

```sh
cp _vimrc ~/.config/nvim
cp -r _vim ~/.config/init.vim
```


