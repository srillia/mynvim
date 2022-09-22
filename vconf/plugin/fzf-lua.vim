  " __     __       _             
 " / _|___/ _|     | |_   _  __ _ 
" | ||_  / |_ _____| | | | |/ _` |
" |  _/ /|  _|_____| | |_| | (_| |
" |_|/___|_|       |_|\__,_|\__,_|
                                
if  has('nvim')
nnoremap <leader>fl <cmd>lua require('fzf-lua').files()<CR>
endif

