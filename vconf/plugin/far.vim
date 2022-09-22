
  " __            
 " / _| __ _ _ __ 
" | |_ / _` | '__|
" |  _| (_| | |   
" |_|  \__,_|_|   
                
let g:far#ignore_files=[ '~/.vim/config/farignore' ]
let g:far#glob_mode='rg'

let g:far#source='rgnvim'
let g:far#enable_undo=1

noremap  <leader>frr  :Farr<CR>
noremap  <leader>frf  :Farf<CR>
noremap  <leader>frd  :Fardo<CR>
noremap  <leader>fru  :Farundo<CR>

