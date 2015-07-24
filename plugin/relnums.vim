"Let’s tell Vim to automatically use absolute line numbers when we’re in
"insert mode and relative numbers when we’re in normal mode

autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber
