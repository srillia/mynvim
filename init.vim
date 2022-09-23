       " _             _       
 " _ __ | |_   _  __ _(_)_ __  
" | '_ \| | | | |/ _` | | '_ \ 
" | |_) | | |_| | (_| | | | | |
" | .__/|_|\__,_|\__, |_|_| |_|
" |_|            |___/         

call plug#begin('~/.vim/plugged')

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" vim-go
Plug 'fatih/vim-go', { 'tag': '*' }

" fugitive
Plug 'tpope/vim-fugitive'

" coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" vim-autoformat
Plug 'Chiel92/vim-autoformat'

"auto-pairs   下面这个和coc自动补全有冲突, 使用一个fork维护版本 LunarWatcher/auto-pairs
" Plug 'jiangmiao/auto-pairs'
Plug 'LunarWatcher/auto-pairs'

" nerdtree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" airline
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

" vim-floaterm
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/fzf-floaterm'

" gruvbox
Plug 'morhetz/gruvbox'

" nerdcommenter
" Plug 'scrooloose/nerdcommenter'

" vim-commentary
Plug 'tpope/vim-commentary'

" undotree
Plug 'mbbill/undotree'

" smoothie
Plug 'psliwka/vim-smoothie'


" " asyncrun
" Plug 'skywind3000/asynctasks.vim'
" Plug 'skywind3000/asyncrun.vim'
" " install telescope
" Plug 'nvim-lua/popup.nvim'
" Plug 'nvim-telescope/telescope.nvim'
" " install this integration
" Plug 'GustavoKatel/telescope-asynctasks.nvim'

" fzf
" Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
if has('nvim')
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
endif
" optional for icon support
Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'

" markdown-preview.nvim', {arkdown
Plug 'godlygeek/tabular'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
Plug 'dkarter/bullets.vim'

" grep
" Plug 'dkprice/vim-easygrep'

" startify
Plug 'mhinz/vim-startify'

" ack
Plug 'mileszs/ack.vim'
Plug 'brooth/far.vim'
Plug 'nvim-lua/plenary.nvim' " nvim-spectre dep
Plug 'nvim-pack/nvim-spectre'

" vim spector
Plug 'puremourning/vimspector', { 'do': './install_gadget.py --enable-go'  }

" On-demand lazy load
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!']  }
if has('nvim')
Plug 'folke/which-key.nvim'
endif

" Taglist
Plug 'liuchengxu/vista.vim'

" vim-maximizer
Plug 'szw/vim-maximizer'

" surround
Plug 'tpope/vim-surround' " type yskw' to wrap the word with '' or type cs'` to change 'word' to `word`
Plug 'gcmt/wildfire.vim' " in Visual mode, type k' to select all text in '', or type k) k] k} kp

" vim-snippets
" Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" lightline
Plug 'itchyny/lightline.vim'

" easymotion
Plug 'easymotion/vim-easymotion'

" multiple-cursors
Plug 'terryma/vim-multiple-cursors'

" HTML, CSS, JavaScript, Typescript, PHP, JSON, etc.
Plug 'leafOfTree/vim-svelte-plugin'

" Initialize plugin system
call plug#end()


       " _             _                              __ _       
 " _ __ | |_   _  __ _(_)_ __         ___ ___  _ __  / _(_) __ _ 
" | '_ \| | | | |/ _` | | '_ \ _____ / __/ _ \| '_ \| |_| |/ _` |
" | |_) | | |_| | (_| | | | | |_____| (_| (_) | | | |  _| | (_| |
" | .__/|_|\__,_|\__, |_|_| |_|      \___\___/|_| |_|_| |_|\__, |
" |_|            |___/                                     |___/ 

source ~/.vim/vconf/base.vim
source ~/.vim/vconf/legacy.vim
source ~/.vim/vconf/mine.vim
source ~/.vim/vconf/plugin/ack.vim
source ~/.vim/vconf/plugin/any-jump.vim
source ~/.vim/vconf/plugin/auto-pairs.vim
source ~/.vim/vconf/plugin/autoformat.vim
source ~/.vim/vconf/plugin/coc.vim
source ~/.vim/vconf/plugin/far.vim
source ~/.vim/vconf/plugin/floaterm.vim
source ~/.vim/vconf/plugin/fugitive.vim
source ~/.vim/vconf/plugin/fzf-lua.vim
source ~/.vim/vconf/plugin/fzf.vim
source ~/.vim/vconf/plugin/gruvbox.vim
source ~/.vim/vconf/plugin/maximizer.vim
source ~/.vim/vconf/plugin/md-preview.vim
source ~/.vim/vconf/plugin/multi-cursors.vim
source ~/.vim/vconf/plugin/rnvimr.vim
source ~/.vim/vconf/plugin/rooter.vim
source ~/.vim/vconf/plugin/spectre.vim
source ~/.vim/vconf/plugin/treesitter.vim
source ~/.vim/vconf/plugin/undotree.vim
source ~/.vim/vconf/plugin/vimspector.vim
source ~/.vim/vconf/plugin/vista.vim
source ~/.vim/vconf/plugin/which-key.vim
source ~/.vim/vconf/plugin/wildfire.vim



       " _   _               
  " ___ | |_| |__   ___ _ __ 
 " / _ \| __| '_ \ / _ \ '__|
" | (_) | |_| | | |  __/ |   
 " \___/ \__|_| |_|\___|_|   
                           
" set vitual select colorscheme
if (&background == 'dark')
  hi Visual cterm=NONE ctermfg=NONE ctermbg=237 guibg=#3a3a3a
else
  hi Visual cterm=NONE ctermfg=NONE ctermbg=223 guibg=#ffd7af
endif

" neovide setting
if exists("g:neovide")
    " Put anything you want to happen only in Neovide here
    let g:neovide_fullscreen=v:true
    " let g:neovide_transparency=0.9
    " let g:neovide_remember_window_size = v:true
else
    hi Normal guibg=NONE ctermbg=NONE
endif


" source ~/vim/myvim/helloworld.vim
