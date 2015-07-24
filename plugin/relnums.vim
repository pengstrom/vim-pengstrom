"Let’s tell Vim to automatically use absolute line numbers when we’re in
"insert mode and relative numbers when we’re in normal mode

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


" Toggle with <C-n>

function! NumberToggle()
  if(&relativenumber == 1)
    set number
  else
    set relativenumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


" Return to absolute when focus is lost

au FocusLost * :set number
au FocusGained * :set relativenumber


