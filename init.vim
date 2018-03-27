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
inoremap <Leader><Tab> <Tab>

"The following is useful for getting to column 80
nnoremap g<Bar> 80<Bar>

set splitright

set background=dark

set showcmd
set ignorecase
set smartcase
set incsearch
set autowrite
set hidden
set hlsearch

if has("syntax")
  syntax on
endif

if has("autocmd")
  filetype plugin indent on
  autocmd FileType rust setlocal sw=2 sts=2 ts=2
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2
endif

" if has('cscope')
"   set nocscopeverbose
"
"   set cscopetag cscopeverbose
"
"   if has('quickfix')
"     set cscopequickfix=s-,c-,d-,i-,t-,e-
"   endif
"
"   cnoreabbrev csa cs add
"   cnoreabbrev csf cs find
"   cnoreabbrev csk cs kill
"   cnoreabbrev csr cs reset
"   cnoreabbrev css cs show
"   cnoreabbrev csh cs help
" endif

let vimpager_scrolloff=0

set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='latexmk -pdf $*'
let g:Tex_ViewRule_pdf='evince'

if has('persistent_undo')
    set undofile
    set undodir=$HOME/.vim/undo

    nnoremap U :GundoToggle<CR>
    let g:gundo_preview_bottom = 1
    let g:gundo_right = 1
    let g:gundo_help = 0
    let g:gundo_close_on_revert = 1
endif

let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0
