" ===================================================
" ==== General Settings =============================
" ===================================================
syntax on
set nowrap
set encoding=utf8
set mouse=a     	" on OSX press. ALT and click "
set bs=2        	" make backspace behave like normal again "

" ===================================================
" ==== Sourcing the plugins file ====================
" ===================================================
so ~/.vim/plugins.vim


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


