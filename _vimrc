set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin 

:set go=

"���ó�ʼ����ΪGBK
set fileencoding=cp936
set guifont=YaHei\ Consolas\ Hybrid:h11
"*���ù���Ŀ¼Ϊ��ǰ�༭�ļ���Ŀ¼*

set bsdir=buffer
set autochdir

"*��������*/
set enc=utf-8
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936

"*��������*/
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set helplang=cn
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

"*��ֹ���ɱ����ļ�*/
set nobackup

"*�������Դ�Сд*/
set ignorecase

"*�������ַ�����*/
set incsearch

"*�����滻*/
set gdefault

"*ʼ����ʾ�к�*/
set number
			
"*��ʾ��������*/
set ruler

"*����Tab���Ŀ��*/
set shiftwidth=4
set tabstop=4

"*��Tab������Ϊ�ĸ��ո�*/
set expandtab

"Set mapleader
let mapleader = ","
let g:mapleader = ","


"*���ݱ༭ģʽ�������뷨�����ɫ��ͬʱ����IME�Զ��л�*/
if has('multi_byte_ime')
	hi Cursor guifg=bg guibg=Orange gui=NONE
	hi CursorIM guifg=NONE guibg=Skyblue gui=NONE
	set iminsert=0 imsearch=0
endif

"*��Windows���������*/
set clipboard+=unnamed

"*�༭vimrc�����¼���*/
autocmd! bufwritepost _vimrc source $VIM/_vimrc

"*������ɫ����*/
:color jellybeans 

syntax on 

set cindent     " ʹ�� C/C++ ���Ե��Զ�������ʽ
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s   
"����C/C++���Եľ���������ʽ
set linebreak        " ���ʻ���
set whichwrap=b,s,<,>,[,] " �������׺���ĩʱ����������һ��ȥ

"Vundle����
filetype off  
" �˴��涨Vundle��·��  
set rtp+=$VIM/vimfiles/bundle/vundle/  
call vundle#rc('$VIM/vimfiles/bundle/')  
filetype plugin indent on  



"���
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

"---NeoComplCache ����
let g:neocomplcache_enable_at_startup = 1 


 "--ctags setting--

 " ����F5��������tag�ļ���������taglist
map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
imap <F5> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR> :TlistUpdate<CR>
set tags=tags
set tags+=./tags "add current directory's generated tags file
set tags+=D:\vim\vimfiles\tags\Include_tags 
set tags+=D:\my_own_include\tags 
"add new tags file(�ո�����tags��·������ctags -R ����tags�ļ��󣬲�Ҫ��tags�ƶ������Ŀ¼������ctrl+��ʱ������ʾ�Ҳ���Դ���ļ�)


"SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-o><c-p>"


"-- Taglist setting --

let Tlist_Ctags_Cmd='ctags' "��Ϊ���Ƿ��ڻ�����������Կ���ֱ��ִ��
let Tlist_Use_Right_Window=1 "�ô�����ʾ���ұߣ�0�Ļ�������ʾ�����

let Tlist_Show_One_File=0 "��taglist����ͬʱչʾ����ļ��ĺ����б�
let Tlist_File_Fold_Auto_Close=1 "�ǵ�ǰ�ļ��������б��۵�����

let Tlist_Exit_OnlyWindow=1 "��taglist�����һ���ָ��ʱ���Զ��Ƴ�vim
"�Ƿ�һֱ����tags.1:����;0:������

let Tlist_Process_File_Always=1 "ʵʱ����tags
let Tlist_Inc_Winwidth=0

"-- Powerline setting --
set nocompatible
set laststatus=2
set t_Co=256
set encoding=utf-8 " Necessary to show Unicode glyphs
let g:Powerline_symbols = 'compatible'

"-- vim-markdown setting --
au BufNewFile,BufRead *.txt   set filetype=pandoc
