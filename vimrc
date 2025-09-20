" " jump to the last cursor position
autocmd BufReadPost *
	\ if ! exists("g:leave_my_cursor_position_alone") |
	\     if line("'\"") > 0 && line ("'\"") <= line("$") |
	\         exe "normal g`\"" |
	\     endif |
	\ endif

map mm <esc>:make<cr>

map co <esc>:copen<cr>
map cw <esc>:cwindow<cr>
map cc <esc>:.cc<cr>

map cf <esc>:cfirst<cr>
map cp <esc>:cp<cr>
map cn <esc>:cn<cr>
map cl <esc>:clast<cr>

" " set number
nnoremap <F11> :set nonumber!<CR>:set foldcolumn=0<CR>

" " use extended regular expressions
set magic

" " use Vim features
set nocompatible

" " exrc is a potential security leak
set noexrc

" " show the cursor position all the time
set ruler

" " Show (partial) command in status line.
set showcmd
set showmode

" " Wrap after 80 chars
set textwidth=0

"set mouse=a

" " enable / disable paste mode
map <F12> :set invpaste<CR>
set pastetoggle=<F12>

set noautoindent
set nocindent
set noexpandtab

set tabstop=4
set shiftwidth=4

" " Automatically switch to UTF-8 encoding, 
" " when typing non-ASCII characters
"scriptencoding utf-8 
"set encoding=utf-8

"set foldmethod=syntax 

syntax on

autocmd FileType c,cpp set cindent autoindent
autocmd FileType c set formatoptions+=ro
autocmd FileType perl,java,php,html,js set smartindent
autocmd FileType make set noexpandtab shiftwidth=8

filetype plugin on
filetype indent on
