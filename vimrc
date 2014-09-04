" vim-pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set mouse=a
set autoindent
set hlsearch
set nowrap
set textwidth=80
set shiftwidth=2
set tabstop=2
set expandtab
set splitright
set splitbelow
let mapleader = ","
colorscheme jellybeans
hi Search ctermfg=8

map <leader>w :w<cr>
map <leader>s :sh<cr>

" Window being edited gets a red status bar
autocmd WinEnter * hi StatusLine ctermbg=red ctermfg=white

" Default register is OS clipboard
set clipboard=unnamedplus

" Get template associated with file extension
autocmd! BufNewFile * silent! 0r ~/.vim/skel/templ.%:e

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.svn|vendor/bundle|)$',
  \ }

" NERDTree
map <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.o$']
let NERDTreeMapOpenSplit  = "h"
let NERDTreeMapOpenVSplit = "v"
" Force NERDTree to close with last window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Signify
let g:signify_vcs_list = [ 'git', 'svn' ]

" === vimbits.com

" Automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  au!
  " automatically reload vimrc when it's saved
  au BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" Improve up/down movement on wrapped lines
nnoremap j gj
nnoremap k gk

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Remove f1 help
inoremap <F1> <nop>
vnoremap <F1> <nop>

" Turn off arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
cnoremap <up> <nop>
cnoremap <down> <nop>
cnoremap <left> <nop>
cnoremap <right> <nop>

" Easy split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Better comand-line editing
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-l> <t_kr>
cnoremap <C-h> <t_kl>
