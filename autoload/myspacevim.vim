function! myspacevim#before() abort
  nnoremap <unique> ;w :w<cr>
  let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-q', '-S', '-l', '79', '-'],
    \ }
  let g:neoformat_enabled_python = ['black']
  let g:neomake_open_list = 0
  let g:pydocstring_doq_path = "/usr/local/bin/doq"
  let g:vimfiler_direction = 'topleft'
endfunction

function! myspacevim#after() abort
  let g:tagbar_left = 0
endfunction
