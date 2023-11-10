let g:lightline = {
    \ 'colorscheme': 'powerlineVSL',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'relativepath', 'readonly', 'modified' ],
    \             [ 'gitbranch', 'gitstatus' ],
    \             [ 'mappings' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'charvaluehex', 'fileencoding', 'filetype' ] ] },
    \ 'component': { 'charvaluehex': '0x%B' },
    \ 'component_function': {
    \   'gitbranch': 'FugitiveHead',
    \   'gitstatus': 'GitStatus'
    \ },
    \ 'component_expand': { 'mappings': 'Mappings' },
    \ 'component_type': { 'mappings': 'hint' },
    \ }
let g:lightline.inactive = g:lightline.active
function! Mappings()
    if &diff
        return 'Next/Prev Change: ]c/[c | Take ours/theirs: do/dp'
    else
        return ''
    endif
endfunction

