set nocompatible                     "Use Vim mode instead of Vi

" Because nvim-tree
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1


" TODO: check plugin configs (pear-tree kinda slow, do I need sleuth?, configure fzf?)
" [Plugin setup]
call plug#begin('~/.local/share/nvim/vimplugs')
" Movement
Plug 'smoka7/hop.nvim'
" Editing
Plug 'tmsvg/pear-tree'
Plug 'tpope/vim-surround'
" Files
Plug 'chrisgrieser/nvim-genghis'
Plug 'nvim-tree/nvim-tree.lua'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
" LSP
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'
" Visual
Plug 'itchyny/lightline.vim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'luochen1990/rainbow'
" Others
Plug 'ibhagwan/fzf-lua', {'branch': 'main'}
Plug 'tpope/vim-sleuth'
call plug#end()
packadd! matchit

filetype plugin indent on            "Use auto-indenting
syntax on                            "Enable syntax highlighting

" [Set GUI-specific settings]
if has('gui_running')
    colorscheme obsidian2            "Set GUI color scheme
else
    colorscheme elflord              "Set color scheme 
endif



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
set diffopt=internal,filler,closeoff,algorithm:patience
set directory=~/.backup,.,/tmp       "Don't put swaps in current dir
set equalalways                      "Make all windows equal in size
set encoding=utf-8
set expandtab                        "Replace tabs with spaces (overwritten by vim-sleuth)
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
set laststatus=3                     "Always show statusline
set lazyredraw                       "Redraw screen only when need to
set linebreak                        "Don't split words when wrapping
set list
set listchars=tab:\|\ ,eol:¬          "Set Tab and EOL characters
set mouse=a                          "Enable mouse in all modes
set nobomb                           "No BOM
set noerrorbells visualbell t_vb=
set noswapfile                       "Disable swap files
" set nowrap                           "Disable line wrapping
set number                           "Turn on line numbers
set omnifunc=syntaxcomplete#Complete "Native auto-complete 
set scroll=10
set scrolloff=7
set shell=/bin/bash                  "Set the default shell
set shellcmdflag=-ic                 "Make vim read my .bashrc (I just love my aliases too much)
set shiftwidth=4                     "Indentation size (overwritten by vim-sleuth)
set showcmd                          "Show incomplete commands (fd, cw, etc.)
set showmatch                        "Highlight matching brackets
set smartcase                        "Respect capital letters in searches
set smartindent                      "Use smart indentation
set smarttab                         "Use smart tabs (overwritten by vim-sleuth)
set splitbelow                       "New splits always below
set splitright                       "New vSplits always to the right"
set tabstop=4
set updatetime=300                   "Write after this many miliseconds of being idle
set wildmenu                         "Better auto-completion for cmd
let mapleader=","                    "Change leader key



" [Highlighting]
" WARNING: this assumes that the used font is dark (elflord)
highlight CursorLine cterm=bold guibg='#404040'
" TODO: also set for gui
highlight DiffChange ctermbg=NONE
highlight DiffText ctermbg=100
highlight DiffDelete ctermbg=52



" [Key mappings]
"gg => END
noremap G gg
noremap gg G
" Optical illusion?
noremap P p
noremap p P
"Toggle whether to show relative line numbers
noremap <leader>` :set rnu!<cr>
"Toggle whether to highlight current column
noremap <leader><leader> :set cursorcolumn!<cr>
"I found it, now go away!
nnoremap <leader><space> :nohlsearch<cr>
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

" Visual mode mappings
"Reopen visual mode after indentation
vnoremap > >gv
vnoremap < <gv

" Insert mode mappings
" Insert-Completion
" Omni-completion
inoremap <C-space> <C-x><C-o>
" Choose popup menu item also with Enter instead of only Ctrl-Y
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
" Close the popup menu like any other mode
inoremap <expr> <Esc> pumvisible() ? "\<C-e>" : "\<Esc>"

" Terminal mode mappings
autocmd TermOpen * startinsert
tnoremap <Esc> <C-\><C-n>
nnoremap <leader>; :vsplit term://bash<cr>

" Execute line under cursor as vim command
nnoremap <leader>: yy:@"<cr>
" Execute selection as vim command
vnoremap <leader>: y:@"<cr>

"Tab manipulation
nnoremap <Tab>n  :tabnew 
nnoremap <Tab>o  :tabonly<cr>
nnoremap <Tab>j  gT
nnoremap <Tab>k  gt
nnoremap <Tab>J  :tabfirst<cr>
nnoremap <Tab>K  :tablast<cr>
nnoremap <Tab>mj :tabmove -1<cr>
nnoremap <Tab>mk :tabmove +1<cr>
nnoremap <Tab>c  :tabclose<cr>

"Window manipulation
nnoremap <leader>s :split 
nnoremap <leader>v :vsplit 
nnoremap <C-W><Tab> <C-W>T



"Load stuff from runtimepath
runtime! plugin-config/*.lua "Plugin configs
runtime! plugin-config/*.vim "Plugin configs

