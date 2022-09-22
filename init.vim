"Specify Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
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


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""        self-custom  """"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let mapleader = "\"
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
noremap <silent> <SPACE>y  "+y
noremap <silent> <SPACE>p  "+p
noremap <leader>fi  :r !figlet<SPACE>
" shift+上下左右键分别来调整窗口大小
nnoremap <S-Down> :resize -1<CR>
nnoremap <S-Up> :resize +1<CR>
nnoremap <S-Left> :vertical resize -1<CR>
nnoremap <S-Right> :vertical resize +1<CR>


nnoremap <leader>tn :tabn<CR>
nnoremap <leader>tp :tabp<CR>


" autoformat
noremap <silent> <leader>fm  :Autoformat<CR>

" far
let g:far#ignore_files=[ '~/.vim/config/farignore' ]
let g:far#glob_mode='rg'

let g:far#source='rgnvim'
let g:far#enable_undo=1
noremap  <leader>frr  :Farr<CR>
noremap  <leader>frf  :Farf<CR>
noremap  <leader>frd  :Fardo<CR>
noremap  <leader>fru  :Farundo<CR>

nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
" run command :Spectre


" undotree
nnoremap <silent> <leader>ud :UndotreeToggle<CR>

" fugitive
nnoremap git :Git

" nvim
let g:ruby_host_prog = '/usr/local/bin/neovim-node-host'


" vimspector
let g:vimspector_enable_mappings = 'HUMAN'

" 调试c++ 需要先安装gdb,先编译 g++ foo.cpp -ggdb -o foo
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>de :VimspectorReset<CR>
nnoremap <leader>dw :VimspectorEval<SPACE>

"noremap <silent> <leader>dvs :call system('cp ~/.config/nvim/.vimspector.json .')<CR>
nmap <leader>dj :CocCommand java.debug.vimspector.start<CR>


" vim-maximizer
let g:maximizer_set_default_mapping = 0
nnoremap <silent> <leader>mt :MaximizerToggle<CR>


nmap <leader>ws <Plug>(wildfire-quick-select)

" md preview
let g:mkdp_auto_close = 0

nmap <silent> <leader>mp <Plug>MarkdownPreview
nmap <silent> <leader>ms <Plug>MarkdownPreviewStop

" ack
cnoreabbrev Ack Ack!
nnoremap <Leader>ak :Ack! -i<Space>


 " vista
 let g:vista_default_executive = 'coc'
 let g:vista#renderer#enable_icon = 0


"  By default vista.vim never run if you don't call it explicitly.

"  If you want to show the nearest function in your statusline automatically,
"  you can add the following line to your vimrc
 autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

 nnoremap <silent><leader>vt :Vista!!<CR>
 nnoremap <silent><leader>vf :Vista finder!<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""      grovbox    """"""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
" set background=dark    " 暗色系
set background=dark    " 暗色系
" set background=light   " 亮色系
let g:airline_theme = 'airline'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""     airline    """"""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:airline_theme='gruvbox'
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""     easygrep   """"""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let Grep_Default_Filelist = '*'
" nnoremap  <leader>g :Grep<SPACE>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""     nerdtree    """"""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 开启项目目录
" map <silent> <leader>tt :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""        fzf      """"""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <leader>ff :FZF<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""      floaterm       """"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! Lightline_FloatermInfo() abort
  let buffers = floaterm#buflist#gather()
  let cnt = len(buffers)
  if cnt == 0 
      return '' 
  endif
  let cur = floaterm#buflist#curr()
  let idx = index(buffers, cur) + 1
  return printf('Floaterm %s/%s', idx, cnt)
endfunction
let g:floaterm_wintype = 'split'
let g:floaterm_height = 0.4
let g:floaterm_shell = 'fish'
nnoremap   <silent>   <C-\><C-t>    :FloatermToggle<CR>
tnoremap   <silent>   <C-\><C-t>    <C-\><C-n>:FloatermToggle<CR>
" open from cur file
nnoremap   <silent>   <C-\><C-o>    :FloatermNew! cd %:p:h<CR>
tnoremap   <silent>   <C-\><C-o>    <C-\><C-n>:FloatermHide<CR>:FloatermNew! cd %:p:h<CR>
nnoremap   <silent>   <C-,>    :FloatermPrev<CR>
tnoremap   <silent>   <C-,>    <C-\><C-n>:FloatermPrev<CR>
nnoremap   <silent>   <C-.>    :FloatermNext<CR>
tnoremap   <silent>   <C-.>    <C-\><C-n>:FloatermNext<CR>

nnoremap   <silent>   <C-\><C-k>    :FloatermKill<CR>
tnoremap   <silent>   <C-\><C-k>    <C-\><C-n>:FloatermKill<CR>:FloatermLast<CR>
nnoremap   <silent>   <C-\><C-d>    :FloatermKill!<CR>
tnoremap   <silent>   <C-\><C-d>    <C-\><C-n>:FloatermKill!<CR>:FloatermLast<CR>
nnoremap   <silent>   <C-\><C-u>    <C-u>
tnoremap   <silent>   <C-\><C-u>    <C-\><C-n><C-u>
nnoremap   <silent>   <C-\><C-s>    :Floaterms<CR>
tnoremap   <silent>   <C-\><C-s>    <C-\><C-n>:FloatermHide<CR>:Floaterms<CR>
nnoremap   <silent>   <C-\><C-m>    :FloatermUpdate --height=0.99 --width=0.99<CR>
tnoremap   <silent>   <C-\><C-m>    <C-\><C-n>:FloatermUpdate --height=0.99 --width=0.99<CR>
nnoremap   <silent>   <C-\><C-,>    :FloatermUpdate --height=0.99 --width=0.85<CR>
tnoremap   <silent>   <C-\><C-,>    <C-\><C-n>:FloatermUpdate --height=0.99 --width=0.85<CR>
nnoremap   <silent>   <C-\><C-.>    :FloatermUpdate --height=0.4 --width=0.99<CR>
tnoremap   <silent>   <C-\><C-.>    <C-\><C-n>:FloatermUpdate --height=0.4 --width=0.99<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""      coc.nvim       """"""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" autocmd FileType markdown let b:coc_pairs_disabled = ['`']

let g:coc_global_extensions = ['coc-json',  
            \ 'coc-git', 
            \ 'coc-vimlsp',
            \ 'coc-tsserver',
            \ 'coc-java',
            \ 'coc-go',
            \ 'coc-clangd',
            \ 'coc-snippets',
            \ 'coc-pyright',
            \ 'coc-vimlsp',
            \ 'coc-yaml',
            \ 'coc-sql',
            \ 'coc-xml',
            \ 'coc-fzf-preview',
            \ 'coc-gitignore',
            \ 'coc-markdownlint',
            \ 'coc-marketplace',
            \ 'coc-floaterm',
            \ 'coc-vetur',
            \ 'coc-explorer']

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <C-j>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" nvim scroll
if has('nvim-0.4.0') || has('patch-8.2.0750')
    nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
    inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
    inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
    vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
    vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Formatting selected code.
xmap <leader>fs  <Plug>(coc-format-selected)
nmap <leader>fs  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>as  <Plug>(coc-codeaction-selected)
nmap <leader>as  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
" command! -nargs=0 Format :call CocAction('format')
nmap <silent><leader>cf :call CocAction('format')<CR>

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)
" nmap <silent><Leader>fd :call CocAction('fold')<CR>

" Add `:OR` command for organize imports of the current buffer.
" command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
nmap <silent> <leader>ai   :call     CocAction('runCommand', 'editor.action.organizeImport')<CR>

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
let g:lightline = {
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'cocstatus', 'readonly', 'filename', 'modified'] ],
        \ 'right': [
          \ ['floaterm_info']
        \ ]
        \ },
        \ 'component_function': {
        \   'cocstatus': 'coc#status',
        \   'floaterm_info': 'Lightline_FloatermInfo',
        \ },
        \ }

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>cd  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>cc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <leader>cs  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <leader>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>cr  :<C-u>CocListResume<CR>

" coc-java
nnoremap <silent><nowait> <leader>ju  :CocCommand java.projectConfiguration.update<CR>

" coc-fzf-preview
" add fish support
" let g:fzf_preview_git_status_preview_command = "tail -1000f {-1}"
let g:fzf_preview_if_binary_command = "string match 'binary' (file --mime {})"
let g:fzf_preview_grep_cmd = "rg --line-number --no-heading --color=never --hidden -g '!{**/node_modules/*,**/.git/*}'"
" The theme used in the bat preview
let $FZF_PREVIEW_PREVIEW_BAT_THEME = 'Monokai Extended'

nmap <leader>f [fzf-p]
xmap <leader>f [fzf-p]

nnoremap <silent> [fzf-p]p     :<C-u>CocCommand fzf-preview.FromResources project_mru git<CR>
nnoremap <silent> [fzf-p]gs    :<C-u>CocCommand fzf-preview.GitStatus<CR>
nnoremap <silent> [fzf-p]ga    :<C-u>CocCommand fzf-preview.GitActions<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocCommand fzf-preview.Buffers<CR>
nnoremap <silent> [fzf-p]B     :<C-u>CocCommand fzf-preview.AllBuffers<CR>
nnoremap <silent> [fzf-p]o     :<C-u>CocCommand fzf-preview.FromResources buffer project_mru<CR>
nnoremap <silent> [fzf-p]<C-o> :<C-u>CocCommand fzf-preview.Jumps<CR>
nnoremap <silent> [fzf-p]g;    :<C-u>CocCommand fzf-preview.Changes<CR>
nnoremap <silent> [fzf-p]/     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'"<CR>
nnoremap <silent> [fzf-p]*     :<C-u>CocCommand fzf-preview.Lines --add-fzf-arg=--no-sort --add-fzf-arg=--query="'<C-r>=expand('<cword>')<CR>"<CR>
nnoremap          [fzf-p]gr    :<C-u>CocCommand fzf-preview.ProjectGrep<Space>
xnoremap          [fzf-p]gr    "sy:CocCommand   fzf-preview.ProjectGrep<Space>-F<Space>"<C-r>=substitute(substitute(@s, '\n', '', 'g'), '/', '\\/', 'g')<CR>"
nnoremap <silent> [fzf-p]t     :<C-u>CocCommand fzf-preview.BufferTags<CR>
nnoremap <silent> [fzf-p]q     :<C-u>CocCommand fzf-preview.QuickFix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocCommand fzf-preview.LocationList<CR>

if executable('fish')
    " use fish for embedded terminals
    set shell=fish
    " use bash for else
    let $SHELL = 'bash'
endif

nmap <leader>tt  <Cmd>CocCommand explorer<CR>
nmap <Leader>er <Cmd>call CocAction('runCommand', 'explorer.doAction', 'closest', ['reveal:0'], [['relative', 0, 'file']])<CR>

autocmd User EasyMotionPromptBegin :let b:coc_diagnostic_disable = 1
autocmd User EasyMotionPromptEnd :let b:coc_diagnostic_disable = 0

" coc-snippets
let g:coc_snippet_next = '<tab>'

" rnvimr
let g:rnvimr_pick_enable = 1
tnoremap <silent> <leader>rr <C-\><C-n>:RnvimrResize<CR>
nnoremap <silent> <leader>rg :RnvimrToggle<CR>
tnoremap <silent> <leader>rg <C-\><C-n>:RnvimrToggle<CR>

" any-jump
let g:any_jump_disable_default_keybindings = 1
" Normal mode: Jump to definition under cursor
nnoremap <leader>aj :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
xnoremap <leader>aj :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap <leader>ab :AnyJumpBack<CR>
" Normal mode: open last closed search window again
nnoremap <leader>al :AnyJumpLastResults<CR>

if  has('nvim')
" fzf-lua
nnoremap <leader>fl <cmd>lua require('fzf-lua').files()<CR>

" which-key
lua << EOF
   require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    }
   require('nvim-treesitter.configs').setup {
     highlight = {
       enable = true,
       -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
       -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
       -- Using this option may slow down your editor, and you may see some duplicate highlights.
       -- Instead of true it can also be a list of languages
       additional_vim_regex_highlighting = false,
       }
   }
EOF

nnoremap <silent> <leader>wk :WhichKey<CR>
endif


" auto-pair

" let g:AutoPairs = {'(':')', '[':']', '{':'}','<':'>',"'":"'",'"':'"', "`":"`", '```':'```', '"""':'"""', "'''":"'''"}
let g:AutoPairsShortcutToggle = '<leader>ap'
" let g:AutoPairsLanguagePairs =  {
"         \ "erlang": {'<<': '>>'},
"         \ "tex": {'``': "''" },
"         \ "html": {'<': '>'},
"         \ "vue": {'<': '>'},
"         \ 'vim': {'\v(^\s*\zs"\ze|".*"\s*\zs"\ze$|^(\s*[a-zA-Z]+\s*([a-zA-Z]*\s*\=\s*)?)@!(\s*\zs"\ze((\\\"|[^"])*$)@=))': ''},
"         \ 'rust': {'\w\zs<': '>', '&\zs''': ''},
"         \ 'php': {'<?': '?>//k]', '<?php': '?>//k]'}
"         \ }
let g:AutoPairsShortcutJump = '<C-p>'

" multi=cursor
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<SPACE>n'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

" :CloseAllFloatingWindows
" Closes all floating windows, useful for cleaning up messed up pop-ups
if has('nvim-0.4.0')
  command! CloseAllFloatingWindows   lua _G.CloseAllFloatingWindows()
lua<<EOF
  _G.CloseAllFloatingWindows = function()
    local closed_windows = {}
    for _, win in ipairs(vim.api.nvim_list_wins()) do
      local config = vim.api.nvim_win_get_config(win)
      if config.relative ~= "" then  -- is_floating_window?
        vim.api.nvim_win_close(win, false)  -- do not force
        table.insert(closed_windows, win)
      end
    end
    print(string.format('Closed %d windows: %s', #closed_windows, vim.inspect(closed_windows)))
  end
EOF
endif
noremap <silent> <leader>ka  :CloseAllFloatingWindows<CR>


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

" async config
let g:asyncrun_open = 6

function! s:EnsureDirExists (dir)
  if !isdirectory(a:dir)
    if exists("*mkdir")
      call mkdir(a:dir,'p')
      echo "Created directory: " . a:dir
    else
      echo "Please create directory: " . a:dir
    endif
  endif
endfunction

let s:read_path = '~/.vim/config/prosrun/' 

" my run mutil projects
function! Read_config_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r '.s:read_path.a:template
endfunction

function s:LoadConfigTemplate(path)
    let s:read_path = a:path
    call fzf#run({
                \ 'source': 'ls -1 '.s:read_path,
                \ 'down': 20,
                \ 'sink': function('Read_config_template_into_buffer')
                \ })
endfunction
noremap <leader>pr :tabe .vim/prosrun.vim<CR>:call <sid>EnsureDirExists(".vim")<CR>:call <sid>LoadConfigTemplate('~/.vim/config/prosrun/')<CR>
noremap <leader>vs :tabe .vimspector.json<CR>:call <sid>LoadConfigTemplate('~/.vim/config/vimspector/config')<CR>
   
noremap <silent> <leader>mr :source .vim/prosrun.vim<CR>

noremap <silent> <LEADER>gi :CocList gitignore<CR>

" rooter, silent can anti statusline flicker
let g:rooter_silent_chdir = 1

" source ~/vim/myvim/helloworld.vim
