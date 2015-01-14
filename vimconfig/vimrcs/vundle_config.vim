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
" tagbar 
Plugin 'majutsushi/tagbar'

" 高亮选中的关键字
Plugin 'dimasg/vim-mark'

" airline 状态栏 
"Plugin 'bling/vim-airline'

" powerline
Plugin 'Lokaltog/vim-powerline'

" 文件管理
Plugin 'scrooloose/NERDTree'

" 模糊搜索 file, buffer, mru, tag 等等
Plugin 'kien/ctrlp.vim'

" markdown 文件格式高亮 
Plugin 'tpope/vim-markdown'

" 语法检测 
Plugin 'scrooloose/syntastic'

" 加速移动 
Plugin 'rhysd/accelerated-jk'
Plugin 'yonchu/accelerated-smooth-scroll'

" 搜索
Plugin 'dkprice/vim-easygrep'

" 代码注释/取消注释快捷工具
Plugin 'scrooloose/nerdcommenter'

" Syntax highlighting for ARM assembler
Plugin 'armasm'

" 主题 
Plugin 'jnurmine/Zenburn'
Plugin 'tomasr/molokai'
Plugin 'sickill/vim-monokai'
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required                                       
