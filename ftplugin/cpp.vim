" tags
set tags+=~/.vim/tags/stl

" OmniCppComplete
let OmniCpp_ShowScopeInAbbr     = 1
let OmniCpp_ShowPrototypeInAbbr = 1
let OmniCpp_ShowAccess          = 1
let OmniCpp_MayCompleteDot      = 1 
let OmniCpp_MayCompleteArrow    = 1
set completeopt = "menuone"
autocmd CursorMovedI * if pumvisible() == 0 | pclose | endif
autocmd InsertLeave  * if pumvisible() == 0 | pclose | endif

" Generate tags for current project
map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>
set shiftwidth=4
set tabstop=4
set noexpandtab
