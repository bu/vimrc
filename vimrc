" Automatically install Plug.vim if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Install Plugins
call plug#begin('~/.vim/plugged')

Plug 'dunckr/vim-monokai-soda'
Plug 'ervandew/supertab'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'editorconfig/editorconfig-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

" Vim Configs

" Map ; to :
nnoremap ; :

" SHow line numbers
set number
set showtabline=2
set cursorline
set ruler
set title

" Map jk to <esc>
ino jk <esc>
cno jk <esc>

" Always color
syntax enable

set foldmethod=indent
set foldlevel=0

" Set our color scheme
colorscheme monokai-soda

" Plugin Configs
"
" NERDTree
" ------------
map 1 :NERDTreeToggle<CR>
