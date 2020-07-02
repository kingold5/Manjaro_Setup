" Show line numbers
set rnu

" Apply color theme ir_black
colorscheme gruvbox

" Toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" CtrlP search hidden files
let g:ctrlp_show_hidden = 1

" NerdTree show hidden files
let NERDTreeShowHidden = 1

" nvim clipboard systemwide
set clipboard+=unnamedplus

