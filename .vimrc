call pathogen#infect()

set nocompatible

set mouse=a

set number
set numberwidth=4

set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set wrap

set showmatch
set ruler
set nohls

set lbr
set backspace=indent,eol,start
set whichwrap+=<,>,[,]

set autoread

nnoremap <Tab> <Esc>
vnoremap <Tab> <Esc>gV
onoremap <Tab> <Esc>
inoremap <Tab> <Esc>`^
inoremap <S-Tab> <Tab>

set background=dark

set showcmd
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
endif

if has('cscope')
  set nocscopeverbose

  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

endif
