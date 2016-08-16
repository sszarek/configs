call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'benekastah/neomake'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhartington/oceanic-next'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'

call plug#end()

" For Neovim 0.1.3 and 0.1.4
 let $NVIM_TUI_ENABLE_TRUE_COLOR=1

 " Or if you have Neovim >= 0.1.5
 if (has("termguicolors"))
   set termguicolors
 endif

 " Theme
 syntax enable
 colorscheme OceanicNext
 set background=dark
 let g:airline_theme='oceanicnext'

 " Editor
 set number
 set ignorecase
 set tabstop=4
 set shiftwidth=4
 set softtabstop=4
 set expandtab

 " Key bindings
 map <C-n> :NERDTreeToggle<CR>

 " Airline
 let g:airline_powerline_fonts = 1

 " Linter
 autocmd! BufWritePost * Neomake

