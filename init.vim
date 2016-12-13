" Leader mappings
let mapleader=","
" Buffers
nnoremap <silent> <Leader>b :BufExplorer<CR>
" Leader mapping help
nmap <Leader>h <Plug>(FollowMyLead)
nmap <Leader>u :UndoTreeToggle<cr>
" Ctrl-P
nmap <Leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'wa'
" Ctrl-P buffers
nmap <Leader>b :CtrlPBuffer<CR>
" easymotion
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'OEUIDHTN.PCRJKMWAS'
let g:EasyMotion_use_upper = 1
map <Space> <Plug>(easymotion-prefix)
map <Space><Space> <Plug>(easymotion-repeat)
map s <Plug>(easymotion-s)
" clever-f
let g:clever_f_smart_case = 1
let g:clever_f_fix_key_direction = 1
let g:clever_f_chars_match_any_signs = 1
nmap ; <Plug>(clever-f-repeat-forward)
nmap , <Plug>(clever-f-repeat-back)
" Close Window
nmap <Leader>w :bd<CR>
" Format paragraph
nmap <Leader>f gqip
" Change list
nmap <Leader>cl :cl<cr>
" Next change
nmap <Leader>cn :cn<cr>
" Previous change
nmap <Leader>cp :cp<cr>
" Current change
nmap <Leader>cc :cc<cr>
" Prev yank
nmap <leader>y <Plug>yankstack_substitute_older_paste
" Next yank
nmap <leader>Y <Plug>yankstack_substitute_newer_paste
" Emmet
let g:user_emmet_expandabbr_key = '<C-e>'
" Jedi goto definition
nmap <Leader>d <nop>
" Jedi Rename
nmap <Leader>r <nop>
" Buffer Jump
" nmap <Space> <Plug>BufferjumpStart
" Load the correct virtualenv
autocmd BufNewFile,BufRead /home/ben/unisubs/* VirtualEnvActivate unisubs
" Jedi
let g:jedi#auto_vim_configuration = 0
let g:jedi#goto_command="<Leader>d"
let g:jedi#goto_assignments_command=""
let g:jedi#goto_definitions_command=""
let g:jedi#usages_command=""
let g:jedi#rename_command="<Leader>r"
let g:jedi#documentation_command=""

let completeopt="menuone,longest,preview"
" vim-gnupg
let g:GPGExecutable="gpg2"
" vim-ack
let g:ackprg = 'rg --vimgrep --smart-case'
cnoreabbrev a Ack
" Incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map <Leader>/  <Plug>(incsearch-fuzzy-/)
map <Leader>?  <Plug>(incsearch-fuzzy-?)
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
" Don't go into ex mode
nmap Q <nop>
" Various settings that I like
set clipboard=unnamedplus
set completeopt=menuone
set ignorecase
set smartcase
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

augroup LongLines
  autocmd!
  autocmd Filetype * match none
  autocmd Filetype python match ErrorMsg '\%>80v.\+'
augroup END

" Plugins
" curl -flo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.config/nvim/plugged')
Plug 'bendk/vim-follow-my-lead'
Plug 'bling/vim-airline'
Plug 'jamessan/vim-gnupg'
Plug 'easymotion/vim-easymotion'
Plug 'rhysd/clever-f.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'SirVer/ultisnips'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/DeleteTrailingWhitespace'
Plug 'vim-scripts/undotree.vim'
Plug 'jlanzarotta/bufexplorer'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'hynek/vim-python-pep8-indent'
Plug 'chase/vim-ansible-yaml'
Plug 'mileszs/ack.vim'
Plug '~/vim-bufferjump'
Plug 'ervandew/supertab'
Plug 'jmcantrell/vim-virtualenv'
Plug 'davidhalter/jedi-vim'
call plug#end()

let g:UltiSnipsExpandTrigger = "<C-t>"
let g:UltiSnipsListSnippets = "<C-s>"
let UltiSnipsJumpForwardTrigger = "<C-t>"
let UltiSnipsJumpForwardTrigger = "<C-h>"

" Plugin Settings
let g:gitgutter_map_keys = 0
let g:yankstack_map_keys = 0
let g:bufExplorerDisableDefaultKeyMapping=1
let g:bufExplorerDefaultHelp=0
let g:yankstack_yank_keys = ['c', 'C', 'd', 'D', 'y', 'Y']
