" Vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" Keep Plugin commands between vundle#begin/end

" Auto-Pairs: Auto brackets and quotes completion
Plugin 'jiangmiao/auto-pairs'

" vim-fugitive: Git command line tool for vim
Plugin 'tpope/vim-fugitive'

" vim-twiggy: Git branch tool for vim
Plugin 'sodapopcan/vim-twiggy'

" tagbar: Show tags of the current file and get an overview of its structure
Plugin 'preservim/tagbar'

" vim-airline: Colored status line plugin
Plugin 'vim-airline/vim-airline'

" vim-airline-themes: Themes for vim-airline
Plugin 'vim-airline/vim-airline-themes'

" nerdTree: Displaying an interactive file tree view plugin
Plugin 'preservim/nerdtree'

" emmet-vim: HTML plugin
Plugin 'mattn/emmet-vim'

" vim-css-color: CSS color preview
Plugin 'ap/vim-css-color'

" youcompletme: auto completion
Plugin 'ycm-core/YouCompleteMe'

" vim-javascript: Javascript syntax highlighting
Plugin 'pangloss/vim-javascript'

" vim-jsx-pretty: JSX syntax highlighting and auto indenting
Plugin 'MaxMEllon/vim-jsx-pretty'

" ejs-syntax: EJS syntax highlighting
Plugin 'nikvdp/ejs-syntax'

" python-syntax: Python syntax highlighting
Plugin 'vim-python/python-syntax'

" syntastic: vim syntax checker
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" -- SYNTASTIC CONFIG --
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" use python3 as python checker
let g:syntastic_python_python_exec = 'python3'
let g:syntastic_python_checkers = ['python']
" use eslint as javascript checker
" https://github.com/jaxbot/syntastic-react
let g:syntastic_javascript_checkers = ['eslint']

" -- PYTHON-SYNTAX CONFIG --
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0
let g:python_highlight_indent_errors = 0

" -- EMMET CONFIG --
" redefine trigger key
let g:user_emmet_leader_key = ','

" -- YOUCOMPLETME CONFIG --
" Turn off YouCompleteMe preview
set completeopt-=preview
" Turn off ycm syntax checker to use Syntastic
let g:ycm_show_diagnostics_ui = 0

" -- NERDTREE CONFIG --
" NERDTree auto-start
" autocmd VimEnter * NERDTree
" autocmd BufWinEnter * NERDTreeMirror
" Close NERDTree with current tab
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree")
			\ && b:NERDTree.isTabTree()) | q | endif

" -- VIM-AIRLINE CONFIG --
let g:airline_powerline_fonts = 1
let g:airline_theme = 'bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#whitespace#enabled = 0

let g:airline#extensions#syntastic#enabled = 1
let airline#extensions#syntastic#error_symbol = ':'
let airline#extensions#syntastic#stl_format_err = '%E{%fe #%e}'
let airline#extensions#syntastic#warning_symbol = ':'
let airline#extensions#syntastic#stl_format_warn = '%W{%fw #%w}'

" -- MAPPING --
" Vim tab rearrangement using Option + h, l
" 'Use Option as Meta Key' in terminal preference must be turned OFF
nnoremap ˙ :-tabmove<CR>
nnoremap ¬ :+tabmove<CR>
" Vim tab movement using Control + h, l
nnoremap <C-h> gT
nnoremap <C-l> gt
" Vim-fugitive key mapping
nnoremap git :G<CR>
" NERDTree key mapping
nnoremap nerd :NERDTreeToggle<CR>
" Tagbar key mapping
nnoremap tag :TagbarToggle<CR>

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
" set paste " 붙여넣기 계단현상 없애기
set shiftwidth=4 " 자동 들여쓰기 너비 설정
set showmatch " 일치하는 괄호 하이라이팅
set smartcase " 검색시 대소문자 구별
set smarttab
set smartindent
set softtabstop=4
set tabstop=4
set ruler " 현재 커서 위치 표시
set incsearch
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
