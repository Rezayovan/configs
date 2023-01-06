set number
set relativenumber
set incsearch
set syntax
set nowrap
set scrolloff=10

set tabstop=4
set shiftwidth=4
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


let mapleader = ' '


" REMAPS
inoremap jk <Esc>:w<Cr>
nnoremap <leader>e :Ex<Cr>
nnoremap <leader>l :Lex<Cr>:vertical resize 45<Cr>

" lsp
" let g:lsc_server_commands = { 'python': 'pyright' }

" FZF maps
nnoremap <leader>p :GFiles<Cr>
nnoremap <C-p> :Files<Cr>

nnoremap gd :LspDefinition<Cr>
nnoremap gr :LspReferences<Cr>

" quickfix list
nnoremap <leader>c :cn<Cr>


"
" install vim-plug if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin()

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

"close parans
Plug 'jiangmiao/auto-pairs' 

" surround change, etc
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" lsp
" Plug 'natebosch/vim-lsc'
" Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'


" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" colorscheme
Plug 'sainnhe/everforest'

" autocomplete
Plug 'prabirshrestha/asyncomplete.vim'

call plug#end()

let g:everforest_transparent_background=1
set background=dark
colorscheme everforest

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
