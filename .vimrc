" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end
" delimitMate: Auto-closing bracket plugin
Plugin 'Raimondi/delimitMate'
" lightline: Colored status line plugin
Plugin 'itchyny/lightline.vim'
" nerdTree: Displaying an interactive file tree view plugin
Plugin 'preservim/nerdtree'
" vim-javascript: Syntax Highlighting for JavaScript
Plugin 'pangloss/vim-javascript'
" vim-jsx: Syntax Highlighting for JSX
Plugin 'mxw/vim-jsx'
" emmet-vim: HTML plugin
Plugin 'mattn/emmet-vim'
" vim-jsx-pretty: JSX beautifier
Plugin 'maxmellon/vim-jsx-pretty'
" vim-css-color: CSS color preview
Plugin 'ap/vim-css-color'

Bundle 'nikvdp/ejs-syntax'

call vundle#end()
filetype plugin indent on

" -- VIM-JSX CONFIG --
" Syntax Highlighting for JSX written in .js file
let g:jsx_ext_required = 0

" -- EMMET CONFIG --
" redefine trigger key
let g:user_emmet_leader_key=','

" lightline plugin - colourscheme configuration
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
	\ }
" NERDTree key mapping
nmap nerd :NERDTreeToggle<CR>

set mouse=a
set encoding=utf-8
set fileencodings=utf-8,cp949
set hlsearch " 검색어 하이라이팅
set nu " 줄번호
set autoindent " 자동 들여쓰기
set scrolloff=2
set wildmode=longest,list
set ts=4 "tag select
set sts=4 "st select
set sw=1 " 스크롤바 너비
set autowrite " 다른 파일로 넘어갈 때 자동 저장
set autoread " 작업 중인 파일 외부에서 변경됬을 경우 자동으로 불러옴
set cindent " C언어 자동 들여쓰기
set bs=eol,start,indent
set history=256
set laststatus=2 " 상태바 표시 항상
"set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
" 파일 인코딩을 한국어로
if $LANG[0]=='k' && $LANG[1]=='o'
set fileencoding=korea
endif
" 구문 강조 사용
if has("syntax")
 syntax on
endif
" 컬러 스킴 사용
colorscheme jellybeans
