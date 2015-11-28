" smash escape
inoremap jk <Esc>

" Leader mappings
let mapleader=","
" Buffers
nnoremap <silent> <Leader>b :BufExplorer<CR>
" Yank History
noremap <Leader>y :Yanks<cr>
" Leader mapping help
nmap <Leader>h <Plug>(FollowMyLead)
" Undo
nmap <Leader>u <Plug>(RepeatUndo)
" Redo
nmap <Leader>r <Plug>(RepeatRedo)
" View undo tree
nmap <Leader>U :UndoTreeToggle<cr>
" Close Window
nmap <Leader>w :bd<CR>
" Format paragraph
nmap <Leader>f gqip
" Toggle Search highlight
nmap <Leader>i :set hlsearch!<cr>
" Change list
nmap <Leader>cl :cl<cr>
" Next change
nmap <Leader>cn :cn<cr>
" Previous change
nmap <Leader>cp :cp<cr>
" Current change
nmap <Leader>cc :cc<cr>
" Prev yank
nmap <leader>p <Plug>yankstack_substitute_older_paste
" Next yank
nmap <leader>P <Plug>yankstack_substitute_newer_paste


" Various settings that I like
set ignorecase
set smartcase
set hlsearch
set list
set listchars=tab:>-,trail:-,extends:\
set mouse=""
set expandtab
set wildmode=longest:full
set wildmenu
colorscheme peachpuff
filetype on
filetype indent on
filetype plugin indent on
syntax enable

" Plugins
" curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'bendk/vim-follow-my-lead'
Plug 'bling/vim-airline'
Plug 'jamessan/vim-gnupg'
Plug 'justinmk/vim-sneak'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/undotree.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'honza/vim-snippets'
Plug '~/vim-hyperdrive'
Plug 'jlanzarotta/bufexplorer'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'hynek/vim-python-pep8-indent'
"Plug 'AutoComplPop'
" Autocomplete with tabw
" inoremap <Tab> <C-R>=pumvisible() ? "\<lt>CR>" : "\<lt>Tab>"<CR>
" let g:acp_behaviorKeywordCommand = "\<C-p>"
call plug#end()

let g:UltiSnipsExpandTrigger = "<C-t>"
let UltiSnipsJumpForwardTrigger = "<C-t>"
let UltiSnipsJumpForwardTrigger = "<C-h>"

" Plugin Settings
let g:gitgutter_map_keys = 0
let g:yankstack_map_keys = 0
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerDefaultHelp=0
let g:yankstack_yank_keys = ['c', 'C', 'd', 'D', 'y', 'Y']

" Make sure vim-repeat is loaded so our undo/redo keys work
runtime! autoload/repeat.vim
