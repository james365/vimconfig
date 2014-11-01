""""""""""""""""""""""""""""""""""""""""""""""""""
" vundle 插件管理器配置文件
" 执行 vim +PluginInstall +qall 安装插件 
""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " required 
filetype off        " required !
set runtimepath+=~/.vim_config
call vundle#begin('~/.vim_config/vundle')
Plugin 'gmarik/Vundle.vim'

"my plugin here:
" 搜索关键字
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required                                       
