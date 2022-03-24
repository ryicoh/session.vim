let g:session#directory = expand("~/.vim/sessions")

function! session#filepath() abort
  return g:session#directory . "/" . sha256(getcwd()) . ".vim"
endfunction

function! session#save() abort
  if len(v:argv) > 1
    return
  endif

  execute "mksession! " . session#filepath()
endfunction

function! session#restore() abort
  if len(v:argv) > 1
    return
  endif

  let l:path = session#filepath()
  if filereadable(l:path)
    execute "source " . l:path
  endif
endfunction
