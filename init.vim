" ===================================================
" ==== General Settings =============================
" ===================================================
syntax on
set nowrap
set encoding=utf8
set mouse=a     	" on OSX press. ALT and click "
set bs=2        	" make backspace behave like normal again "
set autoread<

filetype plugin on

" ===================================================
" ==== Sourcing the plugins file ====================
" ===================================================
source ~/.config/nvim/plugins.vim
source ~/.config/nvim/coc.vim

" ===================================================
" ==== Line numbering and display rules =============
" ===================================================
set number      					" show line number  "
set ruler
set cursorline						" Enable highlighting of the current line "
set history=700
set undolevels=700
set tw=79       " width of document (used by gd) "
set colorcolumn=80
highlight ColorColumn ctermbg=233


" ===================================================
" ==== Tabs and Spaces ==============================
" ===================================================
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set smarttab
set expandtab


" ===================================================
" ==== Search Settings ==============================
" ===================================================
set hlsearch
set incsearch
set ignorecase
set smartcase


" ===================================================
" ==== Backup and Swap files Settings ===============
" ===================================================
set nobackup
set nowritebackup
set noswapfile


" ===================================================
" ==== Show whitespaces =============================
" ===================================================
" Show whitespace
" Must be inserted before the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/


" ===================================================
" ==== Theme and Styling ============================
" ===================================================
" Theme and Styling
set t_Co=256
set background=dark

if (has("termguicolors"))
  set termguicolors
endif

let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme spacegray

let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1

"""""""""""""""""""""""""""""""""""""
" Mappings configurationn
"""""""""""""""""""""""""""""""""""""

" Nerdtree and tagbar shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>


" Copy/paste shortcuts
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p


" Quick save commands
noremap <C-s> :update<CR>
vnoremap <C-s> <C-c>:update<CR>
inoremap <C-s> <C-o>:update<CR>


" Quick quit command
noremap <Leader>e :quit<CR>         " Quit current window "
noremap <Leader>E :qa!<CR>          " Quit all windows "


" Omnicomplete Better Nav
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")


" Easier moving between tabs
map <Leader>n <ESC>:tabprevious<CR>
map <Leader>m <ESC>:tabnext<CR>


" Easier moving of code blocks
vnoremap < <gv                      " better indentation right "
vnoremap > >gv                      " better indentation left  "


" cmake4vim mappings
nmap <c-g> :CMake<CR>
nmap <c-b> :CMakeBuild<CR>

" fzf mappings
map <S-TAB> :Files<CR>
map ; :Buffers<CR>

" Tabs shortcuts
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :tabm -1<CR>
nnoremap <silent> <A-Right> :tabm +1<CR>

"let notabs = 0
"nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>


" NerdTree shortcuts
nnoremap <C-t> :NERDTreeFocus<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" NerdTree Tabs shortcuts
nnoremap <C-n> :NERDTreeTabsToggle<CR>

" NERDComToggleComment
map <C-y> <plug>NERDCommenterToggle

" for autoread
map <F5> :checktime<CR>
map! <F5> <C-O>:checktime<CR>

" copy (write) highlighted text to .vimbuffer
vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

"=====================================
"============ NerdCommenter
"=====================================
" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

"=====================================
"============ NerdTree
"=====================================

" Open the existing NERDTree on each new tab.
"autocmd BufWinEnter * silent NERDTreeMirror

"=====================================
"============ cmake4vim
"=====================================
let g:cmake_build_dir = "build"



