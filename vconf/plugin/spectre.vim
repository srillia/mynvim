                     " _            
 " ___ _ __   ___  ___| |_ _ __ ___ 
" / __| '_ \ / _ \/ __| __| '__/ _ \
" \__ \ |_) |  __/ (__| |_| | |  __/
" |___/ .__/ \___|\___|\__|_|  \___|
    " |_|                           
    
nnoremap <leader>S <cmd>lua require('spectre').open()<CR>

"search current word
nnoremap <leader>sw <cmd>lua require('spectre').open_visual({select_word=true})<CR>
vnoremap <leader>s <esc>:lua require('spectre').open_visual()<CR>
"  search in current file
nnoremap <leader>sp viw:lua require('spectre').open_file_search()<cr>
