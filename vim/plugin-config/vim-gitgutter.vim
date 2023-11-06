function! GitStatus()
    let [added, modified, removed] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', added, modified, removed)
endfunction

highlight SignColumn      guibg=bg ctermbg=none
highlight GitGutterAdd    guibg=bg guifg=#009900 ctermbg=none ctermfg=2
highlight GitGutterChange guibg=bg guifg=#bbbb00 ctermbg=none ctermfg=7
highlight GitGutterDelete guibg=bg guifg=#ff2222 ctermbg=none ctermfg=1

