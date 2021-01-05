let g:ale_disable_lsp = 1
let g:ale_fixers = [ 'prettier' ]
let g:ale_fix_on_save = 1
let g:ale_linters = {
  \ 'javascript': ['eslint'],
  \ 'typescript': ['eslint'],
  \ 'rust': ['rustc'],
  \ 'cs': ['OmniSharp']
  \}
