set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'SrcExpl'
""Plugin 'taglist.vim'
Plugin 'AutoComplPop'
Plugin 'bufexplorer.zip'
call vundle#end()

syntax on
set virtualedit=all 
set nu				" line number
set ic				" ignorecase
set hlsearch        " 검색어 하이라이팅
set ruler           " 현재 커서 위치 표시
set cursorline


set cindent         " c, c++, java 
set smartindent     " #if ...
set autoindent  
set ts=4                        " tab stop - tab 크기, \t
set sw=4                        " shift width - shift 크기 조절, autoindent >>key <<key
set sts=4                       " soft tab stop - tab 이동 크기, tab key


map ,d :NERDTreeToggle<CR>
map ,f :NERDTreeFind<CR>
map ,b :BufExplorer<CR>
map ,c :copen<CR>


if has("syntax")
syntax on
endif

" 현재 열린 파일의 경로로 shell을 연다
map ,` :cd %:p:h<CR>:sh<CR>
command CDC cd %:p:h

"" 마지막으로 수정된 곳에 커서를 위치
au BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "norm g`\"" |
            \ endif
