"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important: 
"       This requries that you install https://github.com/Ralph-Wang/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" => airblade/vim-gitgutter
""""""""""""""""""""""""""""""
nmap <Leader>hs <Plug>(GitGutterStageHunk)
nmap <Leader>hr <Plug>(GitGutterUndoHunk)


""""""""""""""""""""""""""""""
" => mhinz/vim-startify
""""""""""""""""""""""""""""""
let g:startify_list_order = [
            \ ['    MRU(all):'],
            \ 'files',
            \ ['    MRU(current dir):'],
            \ 'dir',
            \ ['    Sessions:'],
            \ 'sessions',
            \ ['    Bookmarks:'],
            \ 'bookmarks'
            \ ]


""""""""""""""""""""""""""""""
" => vim-scripts/TaskList.vim
""""""""""""""""""""""""""""""
map <unique> ;t <Plug>TaskList

""""""""""""""""""""""""""""""
" => vim-multiple-cursors
""""""""""""""""""""""""""""""
let g:multi_cursor_start_key='<C-s>'
" let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-k>'
let g:multi_cursor_quit_key='<C-c>'


""""""""""""""""""""""""""""""
" => YouCompleteMe
""""""""""""""""""""""""""""""
let g:ycm_min_num_of_chars_for_completion = 2
nmap <leader>d :YcmCompleter GoTo<cr>
nmap <leader>u :YcmCompleter GoToReferences<cr>
nmap <leader>k :YcmCompleter GetDoc<cr>
" There is a blank after Rename to enter the new name like :YcmCompleter RefactorRename <new_name>
nmap <leader>r :YcmCompleter RefactorRename 
nmap <leader>t :YcmCompleter GetType<cr>


""""""""""""""""""""""""""""""
" => ultisnips
""""""""""""""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-h>"
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" google python style
let g:ultisnips_python_style="jedi"

""""""""""""""""""""""""""""""
" => indentLine
""""""""""""""""""""""""""""""

map <leader>l :TagbarToggle<cr>

""""""""""""""""""""""""""""""
" => indentLine
""""""""""""""""""""""""""""""
" Vim
let g:indentLine_color_term = 239

"GVim
let g:indentLine_color_gui = '#797979'

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)

let g:indentLine_char = '┆'


""""""""""""""""""""""""""""""
" => csv.vim
""""""""""""""""""""""""""""""
let g:csv_delim=','

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankRing
""""""""""""""""""""""""""""""
if has("win16") || has("win32")
    " Don't do anything
else
    let g:yankring_history_dir = '~/.vim_runtime/temp_dirs/'
endif

" map ,y to list yankring
map <leader>y :YRShow<cr>


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeShowHidden = 1
noremap <leader>nn :NERDTreeToggle<cr>
noremap <leader>nb :NERDTreeFromBookmark 
noremap <leader>nf :NERDTreeFind 
noremap <leader>nr :NERDTreeRefreshRoot<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree Git Plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
let g:NERDTreeGitStatusUseNerdFonts = 1
let g:NERDTreeGitStatusShowIgnored = 0
let g:NERDTreeGitStatusShowClean = 0
let g:NERDTreeGitStatusConcealBrackets = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline config (force color)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme="luna"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_python_checkers=['pyflakes']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LargeFile. disable features like syntax on LargeFile
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LargeFile=1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => markdown plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" instant_markdown
let g:instant_markdown_slow = 1
let g:instant_markdown_port=23055
let g:instant_markdown_autostart = 0
nnoremap <leader>mp :InstantMarkdownPreview<cr>
nnoremap <leader>ms :InstantMarkdownStop<cr>
" pandoc markdown
augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => emmet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:user_emmet_settings = {
            \ 'wxss': {
            \   'extends': 'css',
            \ },
            \ 'wxml': {
            \   'extends': 'html',
            \   'aliases': {
            \     'div': 'view',
            \     'span': 'text',
            \   },
            \  'default_attributes': {
            \     'block': [{'wx:for-items': '{{list}}','wx:for-item': '{{item}}'}],
            \     'navigator': [{'url': '', 'redirect': 'false'}],
            \     'scroll-view': [{'bindscroll': ''}],
            \     'swiper': [{'autoplay': 'false', 'current': '0'}],
            \     'icon': [{'type': 'success', 'size': '23'}],
            \     'progress': [{'precent': '0'}],
            \     'button': [{'size': 'default'}],
            \     'checkbox-group': [{'bindchange': ''}],
            \     'checkbox': [{'value': '', 'checked': ''}],
            \     'form': [{'bindsubmit': ''}],
            \     'input': [{'type': 'text'}],
            \     'label': [{'for': ''}],
            \     'picker': [{'bindchange': ''}],
            \     'radio-group': [{'bindchange': ''}],
            \     'radio': [{'checked': ''}],
            \     'switch': [{'checked': ''}],
            \     'slider': [{'value': ''}],
            \     'action-sheet': [{'bindchange': ''}],
            \     'modal': [{'title': ''}],
            \     'loading': [{'bindchange': ''}],
            \     'toast': [{'duration': '1500'}],
            \     'audio': [{'src': ''}],
            \     'video': [{'src': ''}],
            \     'image': [{'src': '', 'mode': 'scaleToFill'}],
            \   }
            \ },
            \}
