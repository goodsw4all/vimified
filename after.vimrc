"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"			function key map
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "man page
map <F1> :
    "map <F2> :w<cr>:!gcc -Wall % -o %< && ./%<
"map <F2> :w<cr>:!gcc -Wall % -o %< && ./%<
"map <F2> :set makeprg=./build.sh\ uImage<cr>:w<cr>:make<cr>:ccl<cr>:cw<cr>
map <F2> :wa<cr>:!colormake<cr>
"map <F2> :so ./.vimrc<cr>
map <F3> :bp<cr>
map <F4> :bn<cr>

" TagList
"map <F5> :VimFiler -status<cr>
au VimEnter * map <F5> :Exp<cr>
map <F6> :TagbarToggle<cr>
map <F7> :TagbarShowTag<cr>
map <F8> :SrcExplToggle<cr>
"function folding
"map <F9> v]}zf
 "unfolding
map <F9> :NERDTreeToggle<cr>
"local variable trace
"return
map <F10> :BufExplorer<cr>

map <F11> :BufOnly<cr>
map <F12> :!cscope -R -k -b<CR>:cs reset<CR>

" buffer list
map ,1 :b!1<CR>
map ,2 :b!2<CR>
map ,3 :b!3<CR>
map ,4 :b!4<CR>
map ,5 :b!5<CR>
map ,6 :b!6<CR>
map ,7 :b!7<CR>
map ,8 :b!8<CR>
map ,9 :b!9<CR>
map ,0 :b!10<CR>
"map  :wqa<CR>

" HJKL for insert mode
inoremap <A-h> <C-o>h
inoremap <A-j> <C-o>j
inoremap <A-k> <C-o>k
inoremap <A-l> <C-o>l

command WW :execute ':silent w !sudo tee % > /dev/null' | :edit!
map <S-q> :noh<cr>
map <C-p> :pop<cr>

set background=dark
colorscheme seoul256
let g:seoul256_background = 233

set norelativenumber
set nofoldenable
set nolist
set mouse=a
set nu
set ruler
set showmode
set scrolloff=5
set autowrite
set backspace=eol,start,indent
set history=1000
set hlsearch
set incsearch
"set nows "when search at the end doesn't go back to first
set ic
set scs
set showmatch "(), {}
syntax on
set t_Co=256
"Enable mouse click
"set completeopt=menuone,preview,longest
set completeopt=menuone
"tab to spaces"
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
"Encoding
set encoding=utf-8
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
" Format the status line
set laststatus=2
set clipboard=unnamedplus
set selection=inclusive
set linebreak
set wildmenu

let g:LargeFile=10
set cursorline
"set tagstack

highlight TagbarHighlight guifg=Green ctermbg=DarkGray
au WinEnter * highlight Cursorline ctermbg=235
autocmd VimEnter * nested :TagbarOpen
map <C-a> :A<cr>
