" config file for mhinz/vim-startify
" Entire doc is at https://github.com/mhinz/vim-startify/blob/master/doc/startify.txt
"
" custom header 
let g:ascii = [
            \'███╗   ██╗    ██╗   ██╗    ██╗    ███╗   ███╗',
            \'████╗  ██║    ██║   ██║    ██║    ████╗ ████║',
            \'██╔██╗ ██║    ██║   ██║    ██║    ██╔████╔██║',
            \'██║╚██╗██║    ╚██╗ ██╔╝    ██║    ██║╚██╔╝██║',
            \'██║ ╚████║     ╚████╔╝     ██║    ██║ ╚═╝ ██║',
            \'╚═╝  ╚═══╝      ╚═══╝      ╚═╝    ╚═╝     ╚═╝',
            \]
let g:startify_custom_header = 
            \ 'startify#center(g:ascii + startify#fortune#boxed())'

" Avoid issue with goyo plugin
" If you followed :h startify-faq-17 to create a new Startify buffer for each new tab, you might run into issues when creating a new tab with goyo enabled. Add this condition instead:
autocmd BufEnter *
       \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') | 
       \   let t:startify_new_tab = 1 |
       \   Startify |
       \ endif
