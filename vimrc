syntax on
filetype plugin indent on

set number
set mouse=a
set autoindent
set hlsearch
set nowrap
set textwidth=80
set colorcolumn=80
set shiftwidth=2
set tabstop=2
set expandtab
set splitright
set splitbelow
let mapleader = ","
colorscheme jellybeans
hi Search ctermfg=8
set backspace=indent,eol,start

map <leader>w :w<cr>
map <leader>s :sh<cr>

" Open quickfix window full width at the bottom
augroup QuickfixPositionAndSize
  autocmd!
  autocmd FileType qf wincmd J
augroup END

" Window being edited gets a red status bar
augroup StatusLineColor
  autocmd!
  autocmd WinEnter * hi StatusLine ctermbg=red ctermfg=white
augroup END

" Default register is OS clipboard
set clipboard=unnamed,unnamedplus

" Get template associated with file extension
augroup FileExtensionTemplate
  autocmd!
  autocmd BufNewFile * silent! 0r ~/.vim/skel/templ.%:e
augroup END

" Remove trailing white spaces when file is saved
augroup RemoveTrailingWhiteSpaces
  autocmd!
  autocmd BufWritePre * :%s/\s\+$//e
augroup END

" CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.svn|vendor/bundle|node_modules)$',
  \ }

let g:ctrlp_working_path_mode='r'

" NERDTree
map <F1> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.o$']
let NERDTreeMapOpenSplit  = "h"
let NERDTreeMapOpenVSplit = "v"
" Force NERDTree to close with last window
augroup NERDTreeClosesWithLastWindow
  autocmd!
  autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup END
" Show NERDTree's arrow chars in macOS
scriptencoding utf-8
set encoding=utf-8

" Signify
let g:signify_vcs_list = [ 'git', 'svn' ]

" vim-jsx
let g:jsx_ext_required = 0

" === vimbits.com

" Automatically reload vimrc when it's saved
augroup AutoReloadVimRC
  autocmd!
  autocmd BufWritePost $MYVIMRC so $MYVIMRC
augroup END

" Improve movement on wrapped lines
nnoremap j gj
nnoremap k gk
" nnoremap $ g$
" nnoremap 0 g0

" Force saving files that require root permission
cmap w!! %!sudo tee > /dev/null %

" Remove f1 help
inoremap <F1> <nop>
vnoremap <F1> <nop>

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
