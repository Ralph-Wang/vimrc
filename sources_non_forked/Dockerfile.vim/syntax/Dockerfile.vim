" Vim syntax file
" Language: Dockerfile
" Maintainer: Eugene Kalinin
" Latest Revision: 11 September 2013
" Source: http://docs.docker.io/en/latest/use/builder/

if exists("b:current_syntax")
  finish
endif

" case sensitivity (fix #17)
" syn case  ignore

" Keywords
syn keyword dockerfileKeywords FROM MAINTAINER RUN CMD COPY
syn keyword dockerfileKeywords EXPOSE ENV ADD ENTRYPOINT
syn keyword dockerfileKeywords VOLUME USER WORKDIR ONBUILD

" Bash statements
setlocal iskeyword+=-
syn keyword bashStatement add-apt-repository adduser apt-get aptitude apt-key autoconf bundle
syn keyword bashStatement cd chgrp chmod chown clear complete composer cp curl du echo egrep
syn keyword bashStatement expr fgrep find gem gnufind gnugrep gpg grep groupadd head less ln
syn keyword bashStatement ls make mkdir mv node npm pacman php python rails rm rmdir rpm ruby
syn keyword bashStatement sed sleep sort strip tail tailf touch useradd virtualenv yum

" Strings
syn region dockerfileString start=/"/ skip=/\\"/ end=/"/
syn region dockerfileString1 start=/'/ skip=/\\'/ end=/'/

" Emails
syn region dockerfileEmail start=/</ end=/>/ contains=@ oneline

" Urls
syn match dockerfileUrl /\(http\|https\|ssh\|hg\|git\)\:\/\/[a-zA-Z0-9\/\-\.]\+/

" Comments
syn match dockerfileComment "#.*$"

" Highlighting
hi link dockerfileKeywords  Keyword
hi link dockerfileString    String
hi link dockerfileString1   String
hi link dockerfileComment   Comment
hi link dockerfileEmail     Identifier
hi link dockerfileUrl       Identifier
hi link bashStatement       Function

let b:current_syntax = "dockerfile"

set commentstring=#\ %s

" Enable automatic comment insertion
setlocal fo+=cro
