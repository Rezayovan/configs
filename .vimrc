set number
set relativenumber
set incsearch
let python_highlight_all=1

set nowrap
set scrolloff=15

set tabstop=4
set shiftwidth=4

let mapleader = ' '

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

"REMAPS
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

" page up down center
nnoremap <C-u> 20k zz
nnoremap <C-d> 20jzz

" move vim screens
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k

" nerdtree
nnoremap <leader>e :NERDTree<Cr>
let NERDTreeShowHidden=1

"
" install vim-plug if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  oilent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

let g:everforest_transparent_background=2


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
Plug 'jnurmine/Zenburn'


" autocomplete
Plug 'prabirshrestha/asyncomplete.vim'

" syntax highlighting
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'

" nerdtree
Plug 'preservim/nerdtree'
 


call plug#end()

if has('termguicolors')
	set termguicolors
endif

set background=dark
colorscheme everforest
syntax on
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
let g:lsp_document_highlight_enabled=0
let g:lsp_diagnostics_highlights_enabled=0


