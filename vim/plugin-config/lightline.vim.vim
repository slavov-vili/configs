let g:lightline = {
    \ 'colorscheme': 'powerlineVSL' }
let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'relativepath', 'readonly', 'modified' ],
    \             [ 'gitstatus' ],
    \             [ 'mappings' ] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'charvaluehex', 'fileencoding', 'filetype' ] ] }
let g:lightline.inactive = g:lightline.active
let g:lightline.component = {
    \   'charvaluehex': '0x%B' }
let g:lightline.component_function = {
    \   'gitstatus': 'GitStatus' }
let g:lightline.component_expand = {
    \   'mappings': 'Mappings' }
let g:lightline.component_type = {
    \   'mappings': 'hint' }
function! Mappings()
    if &diff
        return 'Next/Prev Change: ]c/[c | Take ours/theirs: do/dp'
    else
        return ''
    endif
endfunction

