 " _                      _ _   _            
" | |_ _ __ ___  ___  ___(_) |_| |_ ___ _ __ 
" | __| '__/ _ \/ _ \/ __| | __| __/ _ \ '__|
" | |_| | |  __/  __/\__ \ | |_| ||  __/ |   
 " \__|_|  \___|\___||___/_|\__|\__\___|_|   
                                           
if  has('nvim')

lua << EOF
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
endif
