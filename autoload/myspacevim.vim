function! myspacevim#before() abort
  nnoremap <unique> ;w :w<cr>
  let g:neoformat_python_black = {
    \ 'exe': 'black',
    \ 'stdin': 1,
    \ 'args': ['-q', '-S', '-l', '79', '-'],
    \ }
  let g:neoformat_enabled_python = ['black']
  let g:neomake_python_enabled_makers = ['pep8', 'pylint']
  let g:neomake_open_list = 0
  let g:pydocstring_doq_path = "/usr/local/bin/doq"
  let g:vimwiki_list = [{'path': '/Users/raajay/vimwiki', 'ext': '.txt', 'syntax': 'default'}]
  let g:vimwiki_global_ext = 0
  let g:startify_custom_header = []
endfunction


function! myspacevim#after() abort
  let g:tagbar_left = 0

  call deoplete#custom#option('omni_patterns', {
    \ 'go': '[^. *\t]\.\w*',
    \})

endfunction
