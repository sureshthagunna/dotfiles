let mapleader = ","
" leader (which is "," key right now), will show up in the showcmd corner
map <Space> <leader>

call plug#begin('~/.local/share/nvim/plugged')

Plug 'bling/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'valloric/MatchTagAlways'
Plug 'mattn/emmet-vim'
Plug 'mkitt/tabline.vim'
" Plug 'tmhedberg/SimpylFold'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

call plug#end()

set nocompatible
set number relativenumber
set incsearch
set ignorecase
set smartcase
set encoding=utf-8

" map <leader><shift-1> tabm 1

" Bindings for switching tabs
	map <leader>1 1gt
	map <leader>2 2gt
	map <leader>3 3gt
	map <leader>4 4gt
	map <leader>5 5gt
	map <leader>6 6gt
	map <leader>7 7gt
	map <leader>8 8gt
	map <leader>9 9gt
	map <leader>0 :tablast<CR>

" Set emmet trigger key
	let g:user_emmet_leader_key=','

" Tab length exceptions on html files
	" autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Tab handling
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4

" Run black everytime python files are saved
	" autocmd BufWritePost *py, !black %
	" autocmd BufWritePost *py, :e

" Enables autocompletion:
	set wildmode=longest,list,full

" Automatically deletes all trailing whitespace on save.
	autocmd BufWritePre * %s/\s\+$//e

" Run xrdb whenever Xdefaults or Xresources are update.
	autocmd BufWritePost *Xresources,*Xdefaults !xrdb %



" Shortcutting split navigation, saving a keypress:
	map <S-j> <C-w>j
	map <S-k> <C-w>k
	map <S-l> <C-w>l
        map <S-h> <C-w>h
	" shift+jklh was mapped to stuff already so just mapping
	" ctrl in its place for thosekeys. Optional)
	nnoremap <C-j> <S-j>
	nnoremap <C-k> <S-k>
	nnoremap <C-l> <S-l>
        nnoremap <C-h> <S-h>

" Splits open at bottom and right
	set splitbelow splitright

" Enable italics (urxvt and gnome-terminal handle it well)
	let g:gruvbox_italic=1

"Color scheme dracula
	colorscheme gruvbox

" Nerd Tree
	map <leader>n :NERDTreeToggle<cr>

" hide .pyc files in nerdtree
	let NERDTreeIgnore=['\.pyc$', '\~$']

" Deoplete
	let g:deoplete#enable_at_startup = 1
	" Navigate through autocompletion list with Tab
	inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
