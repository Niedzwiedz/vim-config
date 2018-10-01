" =================================================================================================
"
"                           ▄   ▄███▄   ████▄     ▄   ▄█ █▀▄▀█
"                            █  █▀   ▀  █   █      █  ██ █ █ █
"                        ██   █ ██▄▄    █   █ █     █ ██ █ ▄ █
"                        █ █  █ █▄   ▄▀ ▀████  █    █ ▐█ █   █
"                        █  █ █ ▀███▀           █  █   ▐    █
"                        █   ██                  █▐        ▀
"                                                ▐  CONFIG
"
" =================================================================================================
"                _________________________________
"               |:::::::::::::;;::::::::::::::::::|
"               |:::::::::::'~||~~~``:::::::::::::|
"               |::::::::'   .':     o`:::::::::::|
"               |:::::::' oo | |o  o    ::::::::::|
"               |::::::: 8  .'.'    8 o  :::::::::|
"               |::::::: 8  | |     8    :::::::::|
"               |::::::: _._| |_,...8    :::::::::|
"               |::::::'~--.   .--. `.   `::::::::|
"               |:::::'     =8     ~  \ o ::::::::|
"               |::::'       8._ 88.   \ o::::::::|
"               |:::'   __. ,.ooo~~.    \ o`::::::|
"               |:::   . -. 88`78o/:     \  `:::::|
"               |::'     /. o o \ ::      \88`::::|   "He will join us or die."
"               |:;     o|| 8 8 |d.        `8 `:::|
"               |:.       - ^ ^ -'           `-`::|
"               |::.                          .:::|
"               |:::::.....           ::'     ``::|
"               |::::::::-'`-        88          `|
"               |:::::-'.          -       ::     |
"               |:-~. . .                   :     |        - Darth Vader on VSCode user
"               | .. .   ..:   o:8      88o       |
"               |. .     :::   8:P     d888. . .  |
"               |.   .   :88   88      888'  . .  |
"               |_________________________________|
"

" =================================================================================================
""" COLORS FIX
" -------------------------------------------------------------------------------------------------
""Use 25-bit (true-color) mode in Vim/Neovim when outside tmux.
" If you're using tmux version 3.2 or later, you can remove the outermost $TMUX check and use tmux's
" 24-bit color support
" (see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  " For Neovim > 0.1.5 and Vim > patch 7.4.1799 <
  " https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  " Based on Vim patch 7.4.1770 (`guicolors` option) <
  "
  " https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
" =================================================================================================
"
" -------------------------------------------------------------------------------------------------
" TABLE OF CONTENTS
" -------------------------------------------------------------------------------------------------
" 1. PLUGINS
" 1.1 Programming workflow related
" 1.2 Syntax plugins
" 1.3 Completion plugins
" 1.4 Looks
" 1.5 Focus plugins
" 1.6 Other
" -------------------------------------------------------------------------------------------------
" 2. CONFIGURATION
" 2.1 General
" 2.2 Advanced
" 2.3 Codestyle
" 2.4 Keybindings
"     2.4.1 Buffer - keybindings
"     2.4.2 Plugins - keybindings
" 2.5 Plugins configs
" -------------------------------------------------------------------------------------------------
"
" =================================================================================================


" =================================================================================================
""" 1. PLUGINS
" =================================================================================================
call plug#begin('~/.local/share/nvim/plugged')

" -------------------------------------------------------------------------------------------------
"" 1.1 Programming workflow related
" -------------------------------------------------------------------------------------------------
" Fuzzy finder (uses fzy - brew install fzy)
Plug 'srstevenson/vim-picker'
"Search pattern in project - using `ripgrep` (leader ff, leader fw)
Plug 'eugen0329/vim-esearch'
" Async Lint Engine - linting etc.
Plug 'w0rp/ale'
" Display marks at the left side
Plug 'kshenoy/vim-signature'
" Nerdtree
Plug 'scrooloose/nerdtree'
"[!]TODO <leader> bi - tags at the right (not often used - check if really needed)
" Plug 'majutsushi/tagbar'

"" T.Pope plugins - quality of life plugins
" surrounding stuff by tags etc.
Plug 'tpope/vim-surround'
" Formula1 in commenting stuff `gcc`
Plug 'tpope/vim-commentary'
" Git wraper (useful! GBlame!, GStatus etc.)
Plug 'tpope/vim-fugitive'
" autocomplete for quotes etc.
Plug 'Raimondi/delimitMate'

" Magit - git wrapper(like in emacs)
Plug 'jreybert/vimagit'

"" Technology specific

" -------------------------------------------------------------------------------------------------
" 1.2 Syntax
" -------------------------------------------------------------------------------------------------
" Ruby linting
Plug 'neomake/neomake'
" lots of different syntaxes
Plug 'sheerun/vim-polyglot'
" Elixir specific
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'gasparch/vim-elixir-fold'
" Haskell specific
Plug 'neovimhaskell/haskell-vim'
" coffee script
Plug 'kchmck/vim-coffee-script'
" haml
Plug 'tpope/vim-haml'


" -------------------------------------------------------------------------------------------------
"" 1.3 Completion plugins
" -------------------------------------------------------------------------------------------------
" Deoplete completion uses python3 - make sure it is installed by `:echo has("python3")`
Plug 'Shougo/deoplete.nvim'

"[!]TODO snippets - might be usefull, but I am not using it right now, teach me some snippets
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'


" -------------------------------------------------------------------------------------------------
"" 1.4 Looks
" -------------------------------------------------------------------------------------------------
" Themes to remember about
" Plug 'AlessandroYorba/Sierra'
" Plug 'freeo/vim-kalisi'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'morhetz/gruvbox'
" Plug 'joshdick/onedark.vim'
" Plug 'KeitaNakamura/neodark.vim'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'rakr/vim-two-firewatch'
" Plug 'altercation/vim-colors-solarized'
" Plug 'icymind/NeoSolarized'
" Plug 'Erichain/vim-monokai-pro'
" Currently used themes
Plug 'arcticicestudio/nord-vim'
Plug 'jacoborus/tender.vim'

" Airline and themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Identation showing chars
Plug 'Yggdroot/indentLine'

" -------------------------------------------------------------------------------------------------
"" 1.5 Focus plugins
" -------------------------------------------------------------------------------------------------
"[!]TODO (not used - check if still needed)
Plug 'junegunn/goyo.vim'
"[!]TODO (not used - might be useful - check if needed)
Plug 'junegunn/limelight.vim'
" -------------------------------------------------------------------------------------------------

" -------------------------------------------------------------------------------------------------
"" 1.6 Other
" -------------------------------------------------------------------------------------------------
"  start screen
Plug 'mhinz/vim-startify'
Plug 'yuttie/comfortable-motion.vim'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()
" =================================================================================================


" =================================================================================================
""" 2. CONFIGURATION
" =================================================================================================
set termguicolors

" -------------------------------------------------------------------------------------------------
" 2.1 General
" -------------------------------------------------------------------------------------------------
set t_Co=256
syntax on
filetype plugin indent on
" do not highliht syntax after 128 column
set synmaxcol=128
" relative numbers
set number relativenumber
set autoread
set linebreak
" show line at 100 char
set showbreak=+++
set textwidth=100
set colorcolumn=100

" search
set showmatch
set visualbell
set cursorline

set hlsearch
set smartcase
set ignorecase
set incsearch

" tabs etc
set autoindent
set smartindent
set smarttab
set modeline
set softtabstop=2

set tabstop=2
set shiftwidth=2
set expandtab

set diffopt+=vertical

set background=dark
" colorscheme nord
colorscheme tender

" -------------------------------------------------------------------------------------------------
"" 2.2 Advanced
" -------------------------------------------------------------------------------------------------
set ruler
set scrolloff=5

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2

set undolevels=1000
set backspace=indent,eol,start

let g:enable_bold_font = 1
let g:enable_italic_font = 1

" -------------------------------------------------------------------------------------------------
"" 2.3 Codestyle
" -------------------------------------------------------------------------------------------------
if has("autocmd")
  " remove trailing white spaces
  autocmd BufWritePre * :%s/\s\+$//e
endif

" -------------------------------------------------------------------------------------------------
"" 2.4 Keybindings
" -------------------------------------------------------------------------------------------------
" space as leader key
let mapleader=" "
" esc as jk
imap jk <ESC>

" disable highlight with double enter instead of :noh
nnoremap <CR> :noh<CR><CR>

" switching panes with leader kjhl
nmap <silent> <leader>k :wincmd k<CR>
nmap <silent> <leader>j :wincmd j<CR>
nmap <silent> <leader>h :wincmd h<CR>
nmap <silent> <leader>l :wincmd l<CR>

" switching panes with ctrl kjhl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -------------------------------------------------------------------------------------------------
""" 2.4.1 Buffer - keybindings
" -------------------------------------------------------------------------------------------------
"  next buffer
map gn :bn<CR>
"  previous buffer
map gp :bp<CR>
"  delete buffer
map gd :bd<CR>
" switch to `n` buffer
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
nnoremap <leader><Tab> :bn<CR>

" -------------------------------------------------------------------------------------------------
""" 2.4.2 Plugins - keybindings
" -------------------------------------------------------------------------------------------------
" VimPicker (fuzzy find in project)
" PickerEdit - most used - rest we will see (probably can be unmaped)
nmap <unique> <leader>pf <Plug>PickerEdit
nmap <unique> <leader>ps <Plug>PickerSplit
nmap <unique> <leader>pt <Plug>PickerTabedit
nmap <unique> <leader>pv <Plug>PickerVsplit
nmap <unique> <leader>pb <Plug>PickerBuffer
nmap <unique> <leader>p] <Plug>PickerTag
nmap <unique> <leader>pw <Plug>PickerStag
nmap <unique> <leader>po <Plug>PickerBufferTag
nmap <unique> <leader>ph <Plug>PickerHelp
" Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Tagbar
nmap <leader>bi :TagbarToggle<CR>

" Neosnippet
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" -------------------------------------------------------------------------------------------------
" 2.5 Plugins config
" -------------------------------------------------------------------------------------------------
"" Esearch

let g:esearch = {
  \ 'adapter':    'rg',
  \ 'backend':    'nvim',
  \ 'out':        'qflist',
  \ 'batch_size': 1000,
  \ 'use':        ['visual', 'hlsearch', 'last'],
  \}

"" Airline
let g:airline_theme='tender'
let g:airline#extensions#tabline#enabled = 1


" ----------------------------------------
"      Add custom word to airline
" ----------------------------------------
"""" color word for airline
" call airline#parts#define_accent('(ノಠ益ಠ)ノ彡┻━┻', 'green')
"""" Add colored Lightsaber word to section A of Airline
" let g:airline_section_a = airline#section#create(['(ノಠ益ಠ)ノ彡┻━┻', ' | ', 'mode'])
let g:airline_mode_map = {
  \ 'n' : 'NORMAL ( ´･ω･)',
  \ 'i' : 'INSERT (ノಠ益ಠ)ノ彡┻━┻',
  \ 'R' : 'REPLACE SRSLY?(ﾟ┏Д┓ﾟ ;)',
  \ 'v' : 'VISUAL ┬──┬ ノ( ゜-゜ノ)',
  \ 'V' : 'V-LINE  ರ╭╮ರ',
  \ }
" ----------------------------------------

let g:indentLine_color_term = 255

"" Neosnippet

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

"" Goyo & Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" "" Seeing Is Believing - good to remember

"""" Startify

"List of kinds of things that get to be displayed in startify
let g:startify_lists = [
      \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
      \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \ { 'type': 'commands',  'header': ['   Commands']       },
      \ ]

" Startify bookmarked projects
let g:startify_bookmarks = [
      \ "~/projects/preferredreturn",
      \ "~/projects/yalty-backend",
      \ "~/.config/nvim/init.vim"]

" Number of files in list
let g:startify_files_number = 4

" Some Vader ascii art
let g:ascii = [
        \"    _________________________________",
        \"   |:::::::::::'~||~~~``:::::::::::::|",
        \"   |::::::::'   .':     o`:::::::::::|",
        \"   |:::::::' oo | |o  o    ::::::::::|",
        \"   |::::::: 8  .'.'    8 o  :::::::::|",
        \"   |::::::: 8  | |     8    :::::::::|",
        \"   |::::::: _._| |_,...8    :::::::::|",
        \"   |::::::'~--.   .--. `.   `::::::::|",
        \"   |:::::'     =8     ~    o ::::::::|",
        \"   |::::'       8._ 88.     o::::::::|",
        \"   |:::'   __. ,.ooo~~.      o`::::::|",
        \"   |:::   . -. 88`78o/:        `:::::|",
        \"   |::'     /. o o   ::       88`::::|",
        \"   |:;     o|| 8 8 |d.        `8 `:::|",
        \"   |:.       - ^ ^ -'           `-`::|",
        \"   |::.                          .:::|",
        \"   |:::::.....           ::'     ``::|",
        \"   |::::::::-'`-        88          `|",
        \"   |:::::-'.          -       ::     |",
        \"   |:-~. . .                   :     |",
        \"   | .. .   ..:   o:8      88o       |",
        \"   |_________________________________|",
        \]

let g:startify_custom_header =
  \ 'map(startify#fortune#boxed() + g:ascii, "\"   \".v:val")'

"" Deoplete -completion tool- config
let g:deoplete#enable_at_startup = 1

" Vim-picker grep tool as ripgrep
let g:picker_find_executable = 'rg'
