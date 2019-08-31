function FindProjectRoot(start_path, root_markers)
    let files_list = []
    for root in a:root_markers
        let files_list = extend(files_list, globpath(a:start_path, root, 0, 1))
    endfor
    let file_count = len(files_list)

    if file_count > 1
        echoe 'ERROR: Too many root files: ' . file_count
        return ''

    elseif file_count == 1
        return a:start_path

    else
        if a:start_path == '/'
            echo 'WARNING: No project root found!'
            return ''
        else
            let parent_path = fnamemodify(a:start_path, ':h')
            return FindProjectRoot(parent_path, a:root_markers)
        endif
    endif
endfunction





" TODO: Just use a dictionary!
"Call the Run function with the Run command
command Run execute "call Run()"     
"Function to run the current file in the cases of certain filetypes
function Run()
    "Always save file before running
    :w!
    if &filetype == 'python'
        exe '!python3 %'

    elseif &filetype == 'prolog'
        exe '!swipl %'

    elseif &filetype == 'java' 
        "Compile and run
        exe '!echo "Compiling..." && javac %'
        exe '!java %:r'

    elseif &filetype == 'haskell'
        exe '!ghci %'

    elseif &filetype == 'go'
        exe '!go run %'

    elseif &filetype == 'scala'
        exe '!scala %'

    elseif &filetype == 'racket'
        exe '!racket -f % -i'
        
    elseif &filetype == 'tex'
        exe '!pdflatex %'

    elseif &filetype == 'html'
        exe '!xdg-open %'
    endif
endfunction

