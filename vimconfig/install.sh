#!/bin/bash 
#filename: install.sh 
#description: install vimconfig to ~/.vim_config

debug=0

if [ x"$1" == x"-d" -o x"$1" == x"--debug" ]
then
    mkdir -p ~/.vim_config
    debug=1
else
    if [ -d ~/.vim_config ]
    then
        # deleted all file under the directory.
        pushd ~/.vim_config
        rm ./* -rf 
        popd
    else
        mkdir -p ~/.vim_config 
    fi
fi
#copy all file to ~/.vim_config
cp ./* ~/.vim_config/ -af 

cat > ~/.vimrc << END
set runtimepath+=~/.vim_config

source ~/.vim_config/vimrcs/pathogen_config.vim 
source ~/.vim_config/vimrcs/vundle_config.vim 
source ~/.vim_config/vimrcs/basic.vim
source ~/.vim_config/vimrcs/extended.vim
source ~/.vim_config/vimrcs/plugins_config.vim 

try
source ~/.vim_config/vimrcs/my_configs.vim
catch
endtry
END

echo "Download plugins ..."
vim +PluginInstall +qall

# 执行插件配置脚本 
if [ -d ~/.vim_config/plugins_install ]
then
    pushd ~/.vim_config/plugins_install 
    for name in *.sh
    do
        bash ./$name
    done
    popd

fi

echo "Installed the Vim configuration successfully! Enjoy :-)"





    
