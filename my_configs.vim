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
" show the cursor line
set cursorline

" show the 100 column line
set colorcolumn=101

" show the relative line number.
set number

" incsearch all the way
set incsearch

try
    set guifont=Monaco:h9:b:cANSI
catch
endtry

try
    set guifont="Source Code Pro":h9:b:cANSI
catch
endtry

" set mark{{{ }}} for fold
set foldmethod=marker

" 1 line height cmd is enough
set cmdheight=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
try
    colorscheme tnb
catch
    colorscheme desert
endtry


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Status Line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline=%!airline#statusline(1)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" turn on expandTab
set et
" turn off expandTab while writing Makefile
autocmd FileType make setlocal noet


" 1 tab == 2 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

"simple source looks well, large source not so good.
autocmd FileType java,scss,css,eruby,ruby,html setlocal shiftwidth=2
autocmd FileType java,scss,css,eruby,ruby,html setlocal tabstop=2

" Linebreak on 100 characters
set linebreak
set tw=100



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => noremappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"not to change readonly files
nnoremap <leader>w :w<cr>
"save & quit
nnoremap <leader>x :x<cr>
"normal quit
nnoremap <leader>q :q<cr>


" En/Disable highlight when <leader><cr> is pressed
noremap <silent> <leader><cr> :set hls!<cr>


function Switchnu()
    if &nu == 0
        set norelativenumber
        set number
    else
        set nonumber
        set relativenumber
    endif
endf


" En/Disable relativenumber when <leader><space> is pressed
noremap <silent> <leader><Space> :call Switchnu()<cr>

" Useful noremappings for managing tabs
noremap <leader>tn :tabnext 
noremap <leader>to :tabonly<cr>
noremap <leader>tc :tabclose<cr>
noremap <leader>tm :tabmove 
noremap <leader>t<space> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
noremap <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
if has("win32")
	nnoremap <M-j> mz:m+<cr>`z
	nnoremap <M-k> mz:m-2<cr>`z
	vnoremap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
	vnoremap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
else
	nnoremap j mz:m+<cr>`z
	nnoremap k mz:m-2<cr>`z
	vnoremap j :m'>+<cr>`<my`>mzgv`yo`z
	vnoremap k :m'<-2<cr>`>my`<mzgv`yo`z
endif

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

"lnk to load _vimrc & edit _vimrc
if has("win32")
	noremap <silent> <leader>sr :source $HOME/_vimrc<cr>
else
	noremap <silent> <leader>sr :source ~/.vimrc<cr>
endif

"quick run os commands
noremap <leader>c :!

" Quickly open a buffer for scribble
noremap <leader>b :e ~/buffer<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto maximum
if has("win32")
    autocmd! GUIEnter * sim ~x
endif

" spilt easy
noremap <leader>s :sp<CR>
noremap <leader>v :vsp<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins extented
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
" noremap <leader>nc to close NERDTree
nnoremap <leader>nc :NERDTreeClose<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => inorenmap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 将当前单词大写
inoremap <c-w> <esc>bgUwea
" 所有 esc 都用 c-c 代替
noremap <c-c> <esc>


"""""""""""""""""
" airline
"""""""""""""""""
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'
 
set laststatus=2 " Always display the statusline in all windows
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h14
" Hide the default mode text (e.g. -- INSERT -- below the statusline
set noshowmode


"""""""""""""""""
" From SPA
" Convert HTML to JS
"""""""""""""""""
vnoremap <silent> ;h :s?^\(\s*\)'\([^']\+\)',*\s*+$?\1\2?g<CR>
vnoremap <silent> ;q :s?^\(\s*\)\(.*\)\s*$? \1'\2' +?<CR>

"""""""""""""""""
" Convert characters to string list
"""""""""""""""""
vnoremap <silent> ;s :s?^\(\s*\)\(.*\)\s*$? \1"\2",?<CR>

"""""""""""""""""
" swap 2 characters
"""""""""""""""""
nnoremap <silent> <c-t> xph

"""""""""""""""""
" special for JS
"""""""""""""""""
autocmd FileType javascript setlocal commentstring=/*%s*/

"""""""""""""""""
" special for Python
"""""""""""""""""
autocmd FileType python nnoremap <F1> :!autopep8 -i %;isort %;<cr>
