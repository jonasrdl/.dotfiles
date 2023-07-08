" init.vim

" Enable Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Plugins
Plug 'fatih/vim-go'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
" Add other colorschemes here if desired

" Keybindings
let g:go_fmt_command = "goimports"
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage)
autocmd FileType go nmap <leader>d <Plug>(go-def)
autocmd FileType go nmap <leader>i <Plug>(go-info)
autocmd FileType go nmap <leader>a <Plug>(go-alternate)

" Toggle NERDTree with Ctrl+n
nnoremap <C-n> :NERDTreeToggle<CR>
" Set NERDTree as the default on startup
autocmd VimEnter * NERDTree
" Hide NERDTree on file open
autocmd BufEnter,FocusGained * if !exists("g:NERDTree") | NERDTreeFind | wincmd p | endif


" Enable plugin loading
call plug#end()

" Set colorscheme
" colorscheme gruvbox
colorscheme one
