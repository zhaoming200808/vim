" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'tomasr/molokai'
Plugin 'nsf/gocode', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" golang
au BufRead,BufNewFile *.go set filetype=go
"autocmd FileType go autocmd BufWritePre Fmt
set runtimepath+=~/.vim/bundle/vim-go/

"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

" vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_fmt_command = "goimports"

"let g:go_fmt_fail_silently = 1
"let g:go_fmt_autosave = 0

"set TagbarToggle

" set mouse
set mouse=c
set pastetoggle=<F2>

"set back
set backup
set backupdir=$HOME/.vimbak
autocmd BufWritePre * let &backupext = strftime(".%Y-%m-%d-%H-%M-%C")

"设置 delete可删除
set backspace=indent,eol,start
set nocompatible              " be iMproved, required

" fomat
filetype plugin indent on    " required
syntax on
"colorscheme molokai

"设置缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent

set hls "关闭匹配的高亮显示  
set incsearch "设置快速搜索  

"set cursorcolumn "高亮当前列 cuc
"set cursorline "高亮当前行 cul

"右下角显示光标信息
 set ruler
 set rulerformat=%20(%2*%<%f%=\ %m%r\ %3l\ %c\ %p%%%)

"set cursorline "开启光亮光标行 
"set cursorcolumn "开启高亮光标列   


au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"ctag

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
	\ }
