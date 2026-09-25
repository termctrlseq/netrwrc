" Netrw file explorer
let g:netrw_banner  =   0 "  suppress banner (use I to toggle)
let g:netrw_preview =   1 "  preview in a vertically split window
let g:netrw_winsize = -20 "  use 20 columns

function RemoveEmptyBuffers() abort
  for buf in getbufinfo({'buflisted':1})
    if buf.name == '' && buf.variables->has_key('netrw_curdir')
      execute ':bdelete ' .. buf.bufnr
    endif
  endfor
endfunction
augroup NetRW
  au!
  autocmd WinClosed * call RemoveEmptyBuffers()
augroup END

" Netrw toggle
nnoremap <silent> <leader>f :Lex<cr><c-w>=
nnoremap <silent> - :Lex %:h<cr><c-w>=
