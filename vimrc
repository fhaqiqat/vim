set nocompatible              " be iMproved, required
filetype plugin on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" This is latex plugin
Plugin 'https://github.com/vim-latex/vim-latex'
"This is youcompleteme for autocompleting differnt types of code
Plugin 'Valloric/YouCompleteMe'
"Nerd Tree for file manager
Plugin 'scrooloose/nerdtree'

"plugin easy way to browse the tags of the current file
Plugin 'https://github.com/majutsushi/tagbar'

"Syntastic is a syntax checking plugin for Vim 
Plugin 'https://github.com/vim-syntastic/syntastic'
"It provides keyword completion system
Plugin 'https://github.com/Shougo/neocomplete.vim'
"Git plugin
Plugin 'https://github.com/tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set history=10000
set mouse=a
set nu!
set expandtab
set shiftwidth=4
set softtabstop=4
colorscheme desert
" tell it to use an undo file
set undofile
" set a directory to store the undo history
" syntastic settings
set undodir=/home/farhad/.vimundo/
set undolevels=1000
set undoreload=10000
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" IMPORTANT; win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash
" IMPORTANT; grep will sometimes skip displaying the file name if you
"  search in a singe file. This will confuse Latex-Suite. Set your grep
"  program to always generate a file-name.
set grepprg=grep\ -nH\ $*
"setting the path to tags to main directory of every project
:set tags=./tags;

"Automatically running Nerdtree when vim opens
"autocmd vimenter * NERDTree
" map C-n for toggling the Nerdtree
map <C-n> :NERDTreeToggle<CR>

" OPTIONAL; Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_mode_map = {
        \ "mode": "active",
        \ "active_filetypes": ["ruby", "php"],
        \ "passive_filetypes": ["python"] }

" end of syntastic setting
