function! myspacevim#before() abort
  nnoremap <unique> ;w :w<cr>
  let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-q', '-S', '-l', '79', '-'],
    \ }
  let g:neoformat_enabled_python = ['black']
  let g:neomake_open_list = 0
endfunction

function! myspacevim#after() abort
endfunction
