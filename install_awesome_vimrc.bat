@echo off
cd %HOME%/.vim_runtime

echo set runtimepath+=%HOME%/.vim_runtime  > %HOME%/_vimrc

echo source %HOME%/.vim_runtime/vimrcs/basic.vim >> %HOME%/_vimrc
echo source %HOME%/.vim_runtime/vimrcs/filetypes.vim >> %HOME%/_vimrc
echo source %HOME%/.vim_runtime/vimrcs/plugins_config.vim >> %HOME%/_vimrc
echo source %HOME%/.vim_runtime/vimrcs/extended.vim >> %HOME%/_vimrc

echo try >> %HOME%/_vimrc
echo source %HOME%/.vim_runtime/my_configs.vim >> %HOME%/_vimrc
echo catch >> %HOME%/_vimrc
echo endtry >> %HOME%/_vimrc

echo Installed the Ultimate Vim configuration successfully! Enjoy :-)
