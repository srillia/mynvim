
          " _     _      _           _              
" __      _| |__ (_) ___| |__       | | _____ _   _ 
" \ \ /\ / / '_ \| |/ __| '_ \ _____| |/ / _ \ | | |
 " \ V  V /| | | | | (__| | | |_____|   <  __/ |_| |
  " \_/\_/ |_| |_|_|\___|_| |_|     |_|\_\___|\__, |
          "                                   |___/ 
if  has('nvim')
lua << EOF

   require("which-key").setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    }

EOF
nnoremap <silent> <leader>wk :WhichKey<CR>
endif
