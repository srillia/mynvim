       " _     _        
" __   _(_)___| |_ __ _ 
" \ \ / / / __| __/ _` |
 " \ V /| \__ \ || (_| |
  " \_/ |_|___/\__\__,_|
                      
 let g:vista_default_executive = 'coc'
 let g:vista#renderer#enable_icon = 0


"  By default vista.vim never run if you don't call it explicitly.

"  If you want to show the nearest function in your statusline automatically,
"  you can add the following line to your vimrc
 autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

 nnoremap <silent><leader>vt :Vista!!<CR>
 nnoremap <silent><leader>vf :Vista finder!<CR>
