" Open file under cursor in a vertical split, make windows the same width
nnoremap <buffer> v
      \ :let @x = b:netrw_curdir..'/'..expand('<cfile>')<cr>
      \<c-w>p
      \:rightbelow vsplit <c-r>x<cr>
      \<c-w>=

" Open file under cursor in a vertical split, make windows the same width
nnoremap <buffer> V
      \ :let @x = b:netrw_curdir..'/'..expand('<cfile>')<cr>
      \<c-w>p
      \:leftabove vsplit <c-r>x<cr>
      \<c-w>=

" Open file under cursor in a horizontal split under last used window
nnoremap <buffer> o
      \ :let @x = b:netrw_curdir..'/'..expand('<cfile>')<cr>
      \<c-w>p
      \:split <c-r>x<cr>

" Open file under cursor in a previous (last accessed) window
nnoremap <buffer> p
      \ :let @x = b:netrw_curdir..'/'..expand('<cfile>')<cr>
      \<c-w>p
      \:edit <c-r>x<cr>

" Open file under cursor in a preview window
nnoremap <buffer> <silent> P
      \ :let lnum = getpos('.')<cr>
      \:let @x = b:netrw_curdir..'/'..expand('<cfile>')<cr>
      \<c-w>p
      \:vert pedit <c-r>x<cr>
      \<c-w>=
      \<c-w>h
      \:call setpos('.', lnum)<cr>
