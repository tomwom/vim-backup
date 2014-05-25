set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin 

:set go=

"设置初始编码为GBK
set fileencoding=cp936
set guifont=YaHei\ Consolas\ Hybrid:h11
"*设置工作目录为当前编辑文件的目录*

set bsdir=buffer
set autochdir

"*编码设置*/
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"*语言设置*/
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"*禁止生成备份文件*/
set nobackup

"*搜索忽略大小写*/
set ignorecase

"*搜索逐字符高亮*/
set incsearch

"*行内替换*/
set gdefault

"*始终显示行号*/
set number
			
"*显示光标的坐标*/
set ruler

"*设置Tab键的宽度*/
set shiftwidth=4
set tabstop=4

"*将Tab键更改为四个空格*/
set expandtab

"Set mapleader
let mapleader = ","
let g:mapleader = ","


"*根据编辑模式更改输入法光标颜色，同时禁用IME自动切换*/
if has('multi_byte_ime')
	hi Cursor guifg=bg guibg=Orange gui=NONE
	hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
	set iminsert=0 imsearch=0
endif

"*与Windows共享剪贴板*/
set clipboard+=unnamed

"*编辑vimrc后，重新加载*/
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"*设置配色方案*/
:color jellybeans 

syntax on 

set cindent     " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s   
"设置C/C++语言的具体缩进方式
set linebreak        " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去

"Vundle配置
filetype off  
" 此处规定Vundle的路径  
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
filetype plugin indent on  



"插件
Bundle 'vim-pandoc-preview'
Bundle 'neocomplcache'
Bundle 'gmarik/vundle'
Bundle 'git://git.wincent.com/command-t.git'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle 'OmniCppComplete'
Bundle 'vim-scripts.vim'
Bundle 'SuperTab'
Bundle 'taglist.vim'
Bundle 'echofunc.vim'
Bundle 'git://github.com/Lokaltog/vim-powerline.git'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'ctags'
Bundle 'plasticboy/vim-markdown'

"---NeoComplCache 启动
let g:neocomplcache_enable_at_startup = 1 


 "--ctags setting--

 " 按下F5重新生成tag文件，并更新taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=D:\vim\vimfiles\tags\Include_tags 
set tags+=D:\my_own_include\tags 
"add new tags file(刚刚生成tags的路径，在ctags -R 生成tags文件后，不要将tags移动到别的目录，否则ctrl+］时，会提示找不到源码文件)


"SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-o><c-p>"


"-- Taglist setting --

let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=1 "让窗口显示在右边，0的话就是显示在左边

let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏

let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
"是否一直处理tags.1:处理;0:不处理

let Tlist_Process_File_Always=1 "实时更新tags
let Tlist_Inc_Winwidth=0

"-- Powerline setting --
set nocompatible
set laststatus=2
set t_Co=256
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'compatible'

"-- vim-markdown setting --
au BufNewFile,BufRead *.txt   set filetype=pandoc
