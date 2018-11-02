"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.config/nvim/dein')
  call dein#begin('~/.config/nvim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.config/nvim/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('autozimu/LanguageClient-neovim', {'build': 'make release'})
  call dein#add('junegunn/fzf')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('ncm2/ncm2')
  call dein#add('Shougo/echodoc.vim')
  "call dein#add('zchee/deoplete-jedi')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('morhetz/gruvbox')

  call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'cpp': ['clangd'],
    \ 'c': ['clangd'],
    \ 'rust': ['rls'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

set background=dark
let g:gruvbox_italic=1
colorscheme gruvbox


let g:airline_powerline_fonts = 1
let g:python_host_prog = '/home/evan/.local/share/virtualenvs/neovim2-JJY8v187/bin'
let g:python3_host_prog = '/home/evan/.local/share/virtualenvs/neovim3--Mrqmd01/bin/python'

set listchars=tab:▸\ ,eol:¬
set list
