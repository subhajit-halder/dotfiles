" Important!!
  if has('termguicolors')
    set termguicolors
  endif
" For dark version.
  set background=dark
" For light version.
" set background=light
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
  let g:gruvbox_material_background = 'soft'
  let g:gruvbox_material_transparent_background = 0
    
  colorscheme gruvbox-material
