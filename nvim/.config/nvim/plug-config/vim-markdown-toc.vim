" taken from https://github.com/mzlogin/vim-markdown-toc
" auto update toc on save 
let g:vmt_auto_update_on_save = 1

" By default, the :GenTocXXX commands will add <!-- vim-markdown-toc --> fence to the table of contents, it is designed for feature of auto update table of contents on save and :UpdateToc command, it won't effect what your Markdown file looks like after parse.
" If you don't like this, you can remove the fence by add the following line to your vimrc file:
" let g:vmt_dont_insert_fence = 1

" By default, * is used to denote every level of a list:
" every level will instead cycle between the valid list item markers *, - and +:
" let g:vmt_cycle_list_item_markers = 1

let g:vmt_list_item_char = "-" 
