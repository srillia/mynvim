"                           _  __ 
"  _ __ ___  _   _ ___  ___| |/ _|
" | '_ ` _ \| | | / __|/ _ \ | |_ 
" | | | | | | |_| \__ \  __/ |  _|
" |_| |_| |_|\__, |___/\___|_|_|  
"            |___/                

set nocompatible
set number
set relativenumber
set showcmd
set hlsearch
set incsearch
set title
set wildmenu
set wildmode=longest:list,full
set wildignore=*.dll,*.exe,*.jpg,*.gif,*.png
set ignorecase
set updatetime=1
set backspace=2
" set smartcase

"设置代码格式化规则
set cindent
set autoindent
set smartindent     " indent when
set tabstop=4       " tab width
set softtabstop=4   " backspace
set shiftwidth=4    " indent width
set expandtab       " expand tab to space
set splitright
" set termguicolors


autocmd FileType json,sh setl shiftwidth=2 tabstop=2 softtabstop=2 expandtab

set scrolloff=20
set pastetoggle=<F1>

" 鼠标指针样式 和终端有关
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" nvim config
let g:python3_host_prog = '/usr/local/bin/python3.9'

" self custom shortcuts
noremap <silent> <leader>sv :source ~/.vimrc<CR>:noh<CR>
noremap <silent> <leader>sn :source ~/.config/nvim/init.vim<CR>:noh<CR>
noremap <silent> <leader>sw :w !sudo tee %<CR>
" noremap <silent> <SPACE>y  "+y
" noremap <silent> <SPACE>p  "+p
noremap <leader>fi  :r !figlet<SPACE>
" shift+上下左右键分别来调整窗口大小
nnoremap <S-Down> :resize -1<CR>
nnoremap <S-Up> :resize +1<CR>
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>


nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>
