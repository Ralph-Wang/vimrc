
# My vimrc Setting

* Base on [amix/vimrc](https://github.com/amix/vimrc)
* Switch to vundle for plugin management

# Requirements

### Tools
* git
* `vim` should make with '--enable-pythoninterp=yes'
* [Exuberant ctags](http://ctags.sourceforge.net/)

### Python packages
```
[sudo] pip install isort autopep8 jedi
```

### Node pacakges

```
[sudo] npm install -g jshint instant-markdown-d
```


# Install

```
git clone --recursive https://github.com/Ralph-Wang/vimrc ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
vim +PluginInstall +qall
```
