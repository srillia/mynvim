       " _                               _             
" __   _(_)_ __ ___  ___ _ __   ___  ___| |_ ___  _ __ 
" \ \ / / | '_ ` _ \/ __| '_ \ / _ \/ __| __/ _ \| '__|
 " \ V /| | | | | | \__ \ |_) |  __/ (__| || (_) | |   
  " \_/ |_|_| |_| |_|___/ .__/ \___|\___|\__\___/|_|   
       "                |_|                            
       
let g:vimspector_enable_mappings = 'HUMAN'

" 调试c++ 需要先安装gdb,先编译 g++ foo.cpp -ggdb -o foo
nnoremap <leader>dd :call vimspector#Launch()<CR>
nnoremap <leader>de :VimspectorReset<CR>
nnoremap <leader>dw :VimspectorEval<SPACE>

"noremap <silent> <leader>dvs :call system('cp ~/.config/nvim/.vimspector.json .')<CR>
nmap <leader>dj :CocCommand java.debug.vimspector.start<CR>
