call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'helino/vim-json'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-dispatch'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'ddollar/nerdcommenter'
Plug 'altercation/vim-colors-solarized'
call plug#end()

let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

set clipboard=unnamed
set mouse=a
set number

"keymappings.. try and stick to approximately intellij
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>p <C-w>p
nnoremap <C-Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

"syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
