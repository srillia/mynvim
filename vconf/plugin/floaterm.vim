
  " __ _             _                      
 " / _| | ___   __ _| |_ ___ _ __ _ __ ___  
" | |_| |/ _ \ / _` | __/ _ \ '__| '_ ` _ \ 
" |  _| | (_) | (_| | ||  __/ |  | | | | | |
" |_| |_|\___/ \__,_|\__\___|_|  |_| |_| |_|
                                          
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

