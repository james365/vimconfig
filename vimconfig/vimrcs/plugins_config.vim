"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" filename: plugins_config.vim 
" description: 
"   plugins' settings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" Tagbar  
""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_ctags_bin = '/usr/bin/ctags'

let g:tagbar_left = 0

let g:tagbar_width = 30

let g:tagbar_autofocus = 0

nnoremap <silent> <F8> :TagbarToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" vim mark 高亮各种 tags 标记，便于观看调试
" 命令简介：
"   mm mark 或者 unmark 光标下的 tag
"   mr 输入正则表达式用于搜索 
"   mn 删除标记 
"   <leader>* 当前MarkWord的下一个
"   <leader># 当前MarkWord的上一个
"   <leader>/ 有MarkWord的下一个
"   <leader>? 所有MarkWord的上一个
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree 
""""""""""""""""""""""""""""""""""""""""""""""""""
map <F7> :NERDTreeToggle<CR>
let g:NERDTreeMinimalUI  = 1

""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP 模糊匹配文件，快速打开应用
" 命令： Ctrl +　p
""""""""""""""""""""""""""""""""""""""""""""""""""
" 忽略文件 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }



