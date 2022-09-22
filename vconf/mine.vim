

" nvim
let g:ruby_host_prog = '/usr/local/bin/neovim-node-host'

" :CloseAllFloatingWindows
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


" set vitual select colorscheme
if (&background == 'dark')
  hi Visual cterm=NONE ctermfg=NONE ctermbg=237 guibg=#3a3a3a
else
  hi Visual cterm=NONE ctermfg=NONE ctermbg=223 guibg=#ffd7af
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

noremap <silent> <leader>ka  :CloseAllFloatingWindows<CR>

