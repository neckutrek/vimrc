call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'clangd/coc-clangd'
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'mg979/vim-studio-dark'
Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'
Plug 'rbong/vim-flog'
Plug 'airblade/vim-gitgutter'
Plug 'zivyangll/git-blame.vim'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'cloudhead/neovim-fuzzy'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

nnoremap <Space> <Nop>
:let mapleader = " "

nnoremap <ESC> <ESC><ESC>:noh<CR><ESC>

" vim-fugitive Git integration
nmap <Leader>gs :G<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gj :diffget //3<CR>
nmap <Leader>gf :diffget //2<CR>

let g:airline#extensions#fugitiveline#enabled = 1
"autocmd CursorMoved * call gitblame#echo()

" Coc, coc-clangd
let $COCCONFIG = $HOME . '/.config/nvim/coc.vim'
if filereadable($COCCONFIG)
   source $COCCONFIG
endif

" Windows-style file saving
map <C-s> <ESC>:w<cr>
imap <C-s> <ESC>:w<cr>

" Vertical split stuff
nnoremap <Leader>te <C-w>v<C-w>w :term<CR>i
tnoremap <C-w>w <C-\><C-n><C-w>w
tnoremap <C-w><C-w> <C-\><C-n><C-w>w
nnoremap <Leader>co :vert bo copen<CR>

" Navigate vim windows
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

" Navigate buffers
nmap <Leader>bp :bp<cr>
nmap <Leader>bn :bn<cr>
nmap <Leader>bd :bp<cr>:bd#<cr>
nmap <Leader>bD :bp<cr>:bd!#<cr>

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '  '
let g:airline_theme='luna'

" Color theme
colorscheme Atelier_DuneDark
syntax on
highlight LineNr ctermfg=244 ctermbg=233
set number
set cursorline

highlight ExtraWhitespace ctermbg=lightred guibg=lightred
match ExtraWhitespace /\s\+$/

" Tabstop
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

" File system naviagtion
nmap <Leader>fo :FuzzyOpen<CR>

let $DEFXCONFIG = $HOME . '/.config/nvim/defx.vim'
if filereadable($DEFXCONFIG)
   source $DEFXCONFIG
endif

