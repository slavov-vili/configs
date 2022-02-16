set nocompatible                     "Use Vim mode instead of Vi

" [Plugin setup]
"Load obligatory plugins
call plug#begin('~/.vim/vimplugs')
" Vim-plug automatically adds 'https://github.com/'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'tmsvg/pear-tree'
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
call plug#end()
packadd! matchit

" good guy vim-plug
filetype plugin indent on            "Use auto-indenting
syntax on                            "Enable syntax highlighting

" [Set GUI-specific settings]
if has('gui_running')
    colorscheme obsidian2            "Set GUI color scheme
else
    colorscheme elflord              "Set color scheme 
endif


" [Includes]
runtime user_functions.vim





" [Settings]

set autoindent                       "Follow indentation of last line
set autoread                         "Auto-detect file changes
set autowrite                        "Auto-save file before running
set backupdir=~/.backup,.,/tmp       "Do not put backups in current dir
set breakindent                      "Indent the text when wrapping
set cmdheight=2                      "Height of the command bar
set completeopt=longest,menuone      "Auto-completion option menu
set confirm                          "Confirm :q when unsaved changes
set cursorline                       "Highlight current line
:hi CursorLine cterm=bold guibg='#404040'
set directory=~/.backup,.,/tmp       "Don't put swaps in current dir
set equalalways                      "Make all windows equal in size
set encoding=utf-8
set expandtab                        "Replace tabs with spaces
set fileencoding=utf-8
set fileformat=unix
set foldenable                       "Enable folding
set foldcolumn=4                     "Width of column indicating folds
set foldlevelstart=42                "No closed folds at start
set foldmethod=indent                "Auto-folding of indented blocks
set foldnestmax=5                    "Maximum number of nested folds
set helplang=                        "Set help language to English
set hlsearch                         "Highlight search results
set ignorecase                       "Ignore case when searching
set incsearch                        "HL search matches while typing
set laststatus=2                     "Always show statusline
set lazyredraw                       "Redraw screen only when need to
set linebreak                        "Don't split words when wrapping
set list
set listchars=tab:▸\ ,eol:¬          "Set Tab and EOL characters
set mouse=a                          "Enable mouse in all modes
set nobomb                           "No BOM
set noerrorbells visualbell t_vb=
set noswapfile                       "Disable swap files
" set nowrap                           "Disable line wrapping
set number                           "Turn on line numbers
set omnifunc=syntaxcomplete#Complete "Native auto-complete 
set shell=/bin/bash                  "Set the default shell
set shellcmdflag=-ic                 "Make vim read my .bashrc (I just love my aliases too much)
set shiftwidth=4                     "Indentation size
set showcmd                          "Show incomplete commands (fd, cw, etc.)
set showmatch                        "Highlight matching brackets
set smartcase                        "Except when using capital letters
set smartindent                      "Use smart indentation
set smarttab                         "Use smart tabs
set splitbelow                       "New splits always below
set splitright                       "New vSplits always to the right"
set tabstop=4
set updatetime=100                   "Write after this many seconds of being idle
set wildmenu                         "Better auto-completion for cmd
let mapleader=","                    "Change leader key





" [Key mappings]

"Move the movement keys (ironic) 1 key to the right
noremap j h
noremap k j
noremap l k
noremap ; l
"Go to the Beginning/End/Middle of line
noremap J ^
noremap K $
noremap L :call cursor(line('.'), len(getline('.'))/2)<cr>
"Go to the Top/Bottom/Middle of screen
noremap <C-j> H
noremap <C-k> L
noremap <C-l> M
"gg => END
noremap G gg
noremap gg G
"Turns out its faster than :w
noremap <C-s> :w<cr>
"System clipboard is bae
noremap <C-Y> "+y
noremap <C-P> "+p
"Optical illusion?
noremap p P
noremap P p
"Get over here!
"noremap za zz
"Have to fold sometimes
"noremap zz za
"Toggle whether to show relative line numbers
noremap <leader>` :set rnu!<cr>
"Toggle whether to highlight current column
noremap <leader><leader> :set cursorcolumn!<cr>
"I found it, now go away!
nnoremap <leader><space> :noh<cr>
"Toggle spellchecker
nnoremap <leader>en :setlocal spell! spelllang=en_us<cr>
nnoremap <leader>de :setlocal spell! spelllang=de_de<cr>
nnoremap <leader>bg :setlocal spell! spelllang=bg_bg<cr>
"Run the current file
noremap <leader>r :Run<cr>
"Open the current file
noremap <leader>o :Open<cr>
"Reload .vimrc
noremap <leader><F5> :so $MYVIMRC<cr>

" Insert-Completion
" Omni-completion
inoremap <C-space> <C-x><C-o>
" Choose popup menu item also with Enter instead of only Ctrl-Y
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" Move up and down in the popup menu using MY movement keys
inoremap <expr> <C-l> pumvisible() ? "\<C-p>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-n>" : "\<C-k>"
" Close the popup menu like any other mode
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

"Tab manipulation
"Open file in new tab
nnoremap <Tab>n      :tabnew 
"Tab goto
nnoremap <Tab>l :tabnext 
"Tab goto previous/next
nnoremap <Tab>j :<C-U>execute "tabnext " . (tabpagenr() - v:count1)<cr>
nnoremap <Tab>k :<C-U>execute "tabnext " . (tabpagenr() + v:count1)<cr>
"Tab goto first/last
nnoremap <Tab>J :tabfirst<cr>
nnoremap <Tab>K :tablast<cr>
"Tab moving
nnoremap <Tab>mj :tabm -1<cr>
nnoremap <Tab>mk :tabm +1<cr>
"Tab closing
nnoremap <Tab>e :tabclose<cr>

"Window manipulation
"Vertical split
nnoremap <leader>wds<cr> <C-W>v
"Horizontal split
nnoremap <leader>wss<cr> <C-W>s
"New (empty) window
nnoremap <leader>wdn :vnew 
nnoremap <leader>wsn :new 
"Move current window to its own tab
nnoremap <leader>w<Tab> <C-W>T
"Window navigation
nnoremap <leader>ww <C-W>w
nnoremap <leader>wj <C-W>h
nnoremap <leader>wk <C-W>j
nnoremap <leader>wl <C-W>k
nnoremap <leader>w; <C-W>l
"Window resizing
"TIP: <C-W>= makes ALL windows have normal shapes
nnoremap <C-Left>  5<C-W>>
nnoremap <C-Right> 5<C-W><
nnoremap <C-Up>    5<C-W>+
nnoremap <C-Down>  5<C-W>-
"Window close current
nnoremap <leader>we<cr> <C-W>q
"Window close others
nnoremap <leader>wo<cr> <C-W>o





" [Shortcuts for user functions]
noremap <C-S-f> :call SearchInAllFilesWithInput(g:project_root)<cr>



" [Variables]
let g:my_root_markers = ['.git', 'pom.xml']





" [Plugin settings]

" CTRLP
" Some root markers are already pre-configured in ctrlp, but I like
" to keep things consistent :)
let g:ctrlp_regexp = 1
let g:ctrlp_root_markers = g:my_root_markers
let g:ctrlp_show_hidden = 1
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = '9t'
let g:ctrlp_prompt_mappings = {
    \ 'PrtSelectMove("k")':   ['<c-l>', '<up>'],
    \ 'PrtSelectMove("j")':   ['<c-k>', '<down>'],
    \ 'PrtSelectMove("t")':   ['<Home>', '<kHome>'],
    \ 'PrtSelectMove("b")':   ['<End>', '<kEnd>'],
    \ 'AcceptSelection("e")': ['<c-cr>'],
    \ 'AcceptSelection("h")': ['<c-x>'],
    \ 'AcceptSelection("t")': ['<cr>', '<1-LeftMouse>'],
    \ 'PrtInsert()':          ['<c-\>'],
    \ 'PrtCurStart()':        ['<c-s-j>'],
    \ 'PrtCurEnd()':          ['<c-s-k>'],
    \ 'PrtCurLeft()':         ['<c-j>', '<left>', '<c-^>'],
    \ 'PrtCurRight()':        ['<c-;>', '<right>'],
\ }


" NERDTree
noremap <leader>t :execute "NERDTreeFind "<cr>


" NERDCommenter
map <leader>cc <plug>NERDCommenterToggle


" Lightline
let g:lightline = {
    \ 'colorscheme': 'powerline'
\ }
let g:lightline.active = {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'relativepath', 'readonly', 'modified' ],
    \             [ 'gitstatus'] ],
    \   'right': [ [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'charvaluehex', 'fileencoding', 'filetype' ] ]
\ }
let g:lightline.inactive = g:lightline.active
let g:lightline.component = {
    \   'charvaluehex': '0x%B',
    \   'gitstatus': '%{GitStatus()}'
\ }


" PearTree
let g:pear_tree_smart_openers   = 1
let g:pear_tree_smart_closers   = 1
let g:pear_tree_smart_backspace = 1


" Rainbow
let g:rainbow_active = 1


" Git-Gutter
highlight SignColumn guibg=bg ctermbg=none
highlight GitGutterAdd    guibg=bg guifg=#009900 ctermbg=none ctermfg=2
highlight GitGutterChange guibg=bg guifg=#bbbb00 ctermbg=none ctermfg=7
highlight GitGutterDelete guibg=bg guifg=#ff2222 ctermbg=none ctermfg=1
function! GitStatus()
    let [added, modified, removed] = GitGutterGetHunkSummary()
    return printf('+%d ~%d -%d', added, modified, removed)
endfunction





" [Others]

let g:slime_target = "tmux"          "Tell slime to use tmux

" [File syntax]
" Prolog
autocmd BufNewFile,BufRead *.pl set syntax=prolog
autocmd BufNewFile,BufRead *.rasi set syntax=css
"Automatically retab files when opened
"autocmd BufNewFile,BufRead * :retab

autocmd VimEnter * let g:project_root = FindProjectRoot(getcwd(), g:my_root_markers)

