set number
set relativenumber
set incsearch
set syntax

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

nnoremap gd :ALEGoToDefinition<Cr>
nnoremap gr :ALEFindReferences<Cr>
let g:airline#extensions#ale#enabled = 1
let g:ale_set_highlights = 1


" Use all the defaults (recommended):
" let g:lsc_auto_map = v:true
"
" " Apply the defaults with a few overrides:
" let g:lsc_auto_map = {'defaults': v:true, 'FindReferences': '<leader>r'}
"
"" Setting a value to a blank string leaves that command unmapped:
" let g:lsc_auto_map = {'defaults': v:true, 'FindImplementations': ''}

" ... or set only the commands you want mapped without defaults.
" " Complete default mappings are:
" let g:lsc_auto_map = {
"     \ 'GoToDefinition': '<C-]>',
"         \ 'GoToDefinitionSplit': ['<C-W>]', '<C-W><C-]>'],
"             \ 'FindReferences': 'gr',
"                 \ 'NextReference': '<C-n>',
"                     \ 'PreviousReference': '<C-p>',
"                         \ 'FindImplementations': 'gI',
"                             \ 'FindCodeActions': 'ga',
"                                 \ 'Rename': 'gR',
"                                     \ 'ShowHover': v:true,
"                                         \ 'DocumentSymbol': 'go',
"                                             \ 'WorkspaceSymbol': 'gS',
"                                                 \ 'SignatureHelp': 'gm',
"                                                     \ 'Completion':
"                                                     'completefunc',
"                                                         \}
" }
" "

" install vim-plug if not installed
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

"close parans
Plug 'jiangmiao/auto-pairs' 

" surround change, etc
Plug 'tpope/vim-surround'

" lsp
" Plug 'natebosch/vim-lsc'
Plug 'dense-analysis/ale'

call plug#end()
