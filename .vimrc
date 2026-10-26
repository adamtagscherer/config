" basic ---------------------- {{{
filetype on
" }}}

" let ---------------------- {{{
:let mapleader = " "
" }}}

" set ---------------------- {{{
:set number
:set statusline=%f         " Path to the file
:set statusline+=%=        " Switch to the right side
:set statusline+=%l        " Current line
:set statusline+=/         " Separator
:set statusline+=%L        " Total lines
" }}}

" remap ---------------------- {{{
:noremap <leader>- ddp
:noremap <leader>_ ddkkp

:inoremap <leader><c-u> <esc>viwUa
:nnoremap <leader><c-u> viwU<esc>

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>en :vsplit ~/notes/todo<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

:nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
:vnoremap <leader>` <esc>`>a"<esc>`<i"<esc>
:nnoremap <leader>H 0
:nnoremap <leader>L $
" }}}

" onoremap ---------------------- {{{
onoremap in( :<c-u>normal! f(vi(<cr>
onoremap an( :<c-u>normal! f(va(<cr>
onoremap il( :<c-u>normal! F)vi(<cr>
onoremap al( :<c-u>normal! F)va(<cr>

onoremap in{ :<c-u>normal! f{vi{<cr>
onoremap an{ :<c-u>normal! f{va{<cr>
onoremap il{ :<c-u>normal! F}vi{<cr>
onoremap al{ :<c-u>normal! F}va{<cr>

onoremap in@ :<c-u>execute "normal! /\\v[[:alnum:]._%+-]+\\@[[:alnum:].-]+\\.[[:alpha:]]+\r:nohlsearch\rgn"<cr>
" }}}

" file type ---------------------- {{{
augroup filetype_javascript
    autocmd!
    autocmd FileType javascript nnoremap <buffer> <localleader>c I//<esc>
augroup END

augroup filetype_python
    autocmd!
    autocmd FileType python nnoremap <buffer> <localleader>c I#<esc>
augroup END

augroup filetype_html
    autocmd!
    autocmd FileType html nnoremap <buffer> <localleader>f Vatzf
augroup END

augroup markdown_headings
    autocmd!
    autocmd FileType markdown onoremap <buffer> ih :<c-u>execute "normal! ?^[=-]\\{2,}$\r:nohlsearch\rkvg_"<cr>
    autocmd FileType markdown onoremap <buffer> ah :<c-u>execute "normal! ?^[=-]\\{2,}$\r:nohlsearch\rg_vk0"<cr>
augroup END

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}
