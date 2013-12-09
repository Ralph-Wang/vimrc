""""""""""""""""""""""""""""""
" => Ralph-Wang's Config
" Maintainer:
"   Ralph Wang
" Github:
"   https://github.com/Ralph-Wang
" Email:
"   ralph_ld@aliyun.com
""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"show the line NO.
set number
set guifont=Monaco:h9:b:cANSI

" set mark{{{ }}} for fold
set foldmethod=marker

" 1 line height cmd is enough
set cmdheight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    colorscheme desert
catch
endtry

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on expandTab
set et
" turn off expandTab while writing markdown files
autocmd! FileType markdown set noet


" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

" Linebreak on 100 characters
set linebreak
set tw=80



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"not to change readonly files
nmap <leader>w :w<cr>
"save & quit
nmap <leader>x :x<cr>
"normal quit
nmap <leader>q :q<cr>


" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :set nohls<cr>
" Enable highligth when <leader><Space> is pressed
map <silent> <leader><Space> :set hls<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 
map <leader>t<space> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
if has("win32")
	nmap <M-j> mz:m+<cr>`z
	nmap <M-k> mz:m-2<cr>`z
	vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
	vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
else
	nmap j mz:m+<cr>`z
	nmap k mz:m-2<cr>`z
	vmap j :m'>+<cr>`<my`>mzgv`yo`z
	vmap k :m'<-2<cr>`>my`<mzgv`yo`z
endif

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

"lnk to load _vimrc & edit _vimrc
if has("win32")
	map <silent> <leader>es :tabedit ~/_vimrc<cr>
	map <silent> <leader>sr :source $HOME/_vimrc<cr>:sim ~x<cr>
else
	map <silent> <leader>es :tabedit ~/.vimrc<cr>
	map <silent> <leader>sr :source $HOME/.vimrc<cr>
endif


"quick run os commands
map <leader>r :!

" Quickly open a buffer for scribble
map <leader>b :e ~/buffer<cr>

"

" map the CopyAll function to normal mode
nmap <leader>y :call CopyAll()<CR>
" same command for virtual mode.
vmap <leader>y "*y
" map copy
map <leader>y "*p

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto maximum
autocmd! GUIEnter * sim ~x


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" copy the whole file to System Clip
function! CopyAll()
    exe "normal mz"
    exe "normal gg"
    exe "normal \"*yG"
	exe "normal `z"
	delmarks z
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins extented
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
" map <leader>nc to close NERDTree
nmap <leader>nc :NERDTreeClose<cr>
