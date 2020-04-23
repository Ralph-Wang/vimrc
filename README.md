
# My vimrc Setting

* Base on [amix/vimrc](https://github.com/amix/vimrc)
* Switch to [vim-plug](https://github.com/junegunn/vim-plug) for plugin management

# Requirements

### vim version

8.1

### Tools
* git
* `vim` should make with '--enable-pythoninterp=yes'
* [Exuberant ctags](http://ctags.sourceforge.net/)

### Python packages
```
[sudo] pip install isort autopep8 flake8
```

### Node pacakges

```
[sudo] npm install -g jshint instant-markdown-d
```


# Install

```
git clone --recursive https://github.com/Ralph-Wang/vimrc ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
vim +PlugInstall +qall
```

### install ycm

```
cd ~/.vim_runtime/bundle/YouCompleteMe
python install.py --all # or specify the language you need
```
