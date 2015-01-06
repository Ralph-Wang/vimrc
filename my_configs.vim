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
" show the line NO.
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
    colorscheme peaksea
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
autocmd FileType make set noet


" 1 tab == 2 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

"simple source looks well, large source not so good.
autocmd FileType javascript,html set shiftwidth=2
autocmd FileType javascript,html set tabstop=2

" Linebreak on 80 characters
set linebreak
set tw=80



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


" En/Disable relativenumber when <leader><space> is pressed
noremap <silent> <leader><Space> :set rnu!<cr>

" Useful noremappings for managing tabs
noremap <leader>tn :tabnew<cr>
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
noremap <leader>r :!

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

function! Autopep8()
    exe "!autopep8 -i %"
endfunction

function! Pep8()
    exe "!pep8 %"
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => plugins extented
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
" noremap <leader>nc to close NERDTree
nnoremap <leader>nc :NERDTreeClose<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => unmap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use <C-c> please
:inoremap <esc> <nop>

" use hjkl to move please
:noremap <Up> <nop>
:noremap <Down> <nop>
:noremap <Left> <nop>
:noremap <Right> <nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => inorenmap
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 将当前单词大写
inoremap <c-w> <esc>bgUwea
" 所有 esc 都用 c-c 代替
noremap <c-c> <esc>
inoremap ; <esc>mqA;<esc>`q'

" 在 insert 模式下模拟 emacs
inoremap <c-d> <del>
inoremap <c-e> <esc>A
inoremap <c-a> <esc>I
inoremap <c-k> <esc>ld$a
inoremap <c-f> <esc>la
inoremap <c-b> <esc>i



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => auto pairs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! AutoPair(open, close)
    let l:line = getline('.')
    if col('.') > strlen(l:line) || l:line[col('.') - 1] == ' '
        return a:open.a:close."\<ESC>i"
    else
        return a:open
    endif
endf

function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


inoremap ( <c-r>=AutoPair('(', ')')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { <c-r>=AutoPair('{', '}')<CR>
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ <c-r>=AutoPair('[', ']')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
