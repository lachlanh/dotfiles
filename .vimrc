call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'pangloss/vim-javascript'
Plug 'helino/vim-json'
Plug 'OmniSharp/omnisharp-vim'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-dispatch'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

source $HOME/.vim/rc/omnisharp.vim

set clipboard=unnamed
set mouse=a
set number

"keymappings.. try and stick to approximately intellij
map <C-n> :NERDTreeToggle<CR>
nnoremap <Leader>p <C-w>p

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
