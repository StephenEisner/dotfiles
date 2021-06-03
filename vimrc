"za to open fold

"Uses ~/.vim/bundle/Vundle.vim
"VUNDLE
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle"begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Allows for submode in vimrc
Plugin 'StephenEisner/vim-submode'


"StatusBar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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
""""""VUNDLE END"""""""""""""""""""""""""""""""""""""""""""""""""

"Uses ~/.vim/bundle/vim-airline
"AIRLINE 
"TODO modify the airline so it can track your modes
let g:airline#extensions#tabline#enabled = 1

"end of airline"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"BASICS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard=unnamed
set expandtab
set tabstop=4

syntax enable

set number

set relativenumber

"end of basics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

"FOLDS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"change fold color
highlight Folded ctermbg=black


au BufReadPre *.rs setlocal foldmethod=syntax

"
"
"TODO show folds even when they are open


"""""""""""""""""""""""""""""""""""""""""""""""""""""""


"Uses ~/.vim/bundle/vim-submode
"SUBMODES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"settings

let g:submode_timeoutlen = 400

"end of settings

"window mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""WindowMode"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('WindowsMode', 'n', '', '<Space>w', ':echo "WindowMode"<CR>')
call submode#leave_with('WindowsMode', 'n', '', '<Space>w')

" Change of windows with hjkl
call submode#map('WindowsMode', 'n', '', 'j', '<C-w>j')
call submode#map('WindowsMode', 'n', '', 'k', '<C-w>k')
call submode#map('WindowsMode', 'n', '', 'h', '<C-w>h')
call submode#map('WindowsMode', 'n', '', 'l', '<C-w>l')


" split windows with / and !
call submode#map('WindowsMode', 'n', '', 's', '<C-w>s')
call submode#map('WindowsMode', 'n', '', 'v', '<C-w>v')

call submode#map('WindowsMode', 'n', '', 'q', '<C-w>c')
call submode#map('WindowsMode', 'n', '', 'c', '<C-w>c')

call submode#map('WindowsMode', 'n', '', 'J', '<C-w>J')
call submode#map('WindowsMode', 'n', '', 'K', '<C-w>K')
call submode#map('WindowsMode', 'n', '', 'H', '<C-w>H')
call submode#map('WindowsMode', 'n', '', 'L', '<C-w>L')
call submode#map('WindowsMode', 'n', '', 'x', '<C-w>x')

call submode#map('WindowsMode', 'n', '', '>', '<C-w>5>')
call submode#map('WindowsMode', 'n', '', '<', '<C-w>5<')
call submode#map('WindowsMode', 'n', '', '=', '<C-w>2+')
call submode#map('WindowsMode', 'n', '', '-', '<C-w>2-')

call submode#map('WindowsMode', 'n', '', 'z', '<C-w>_ \| <C-w>\|')
call submode#map('WindowsMode', 'n', '', 'o', '<C-w>=')

call submode#map('WindowsMode', 'n', '', 't', '<C-w>T')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""WindowModeEnd""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"tab mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Tab Mode"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('TabMode', 'n', '', '<Space>t', ':echo "TabMode"<CR>')
call submode#leave_with('TabMode', 'n', '', '<Space>t')

call submode#map('TabMode', 'n', '', 'n', ':tabnew<CR>')
call submode#map('TabMode', 'n', '', 'c', ':tabclose<CR>')
call submode#map('TabMode', 'n', '', 'q', ':tabclose<CR>')
call submode#map('TabMode', 'n', '', 'l', ':tabnext<CR>')
call submode#map('TabMode', 'n', '', 'h', ':tabprevious<CR>')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Tab Mode End"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"comment mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Comment Mode"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('Comment', 'n', '', '<Space>c', ':echo "CommentMode"<CR>')
call submode#leave_with('Comment', 'n', '', '<Space>c')

"Turn off timeout for this mode
"Create a button that runs a comment script

"Add entered symbol to begining of line
"TODO figure out how to make this regex for anything
call submode#map('Comment', 'n', '', '/', ':s/^/\//<CR>')
call submode#map('Comment', 'n', '', '"', ':s/^/\"/<CR>')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Comment End"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"buffer mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""buffer Mode"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('BufferMode', 'n', '', '<Space>b', ':echo "BufferMode"<CR>')
call submode#leave_with('BufferMode', 'n', '', '<Space>b')

" Change of windows with hjkl
call submode#map('BufferMode', 'n', '', 'l', ':bn<CR>')
call submode#map('BufferMode', 'n', '', 'h', ':bp<CR>')
call submode#map('BufferMode', 'n', '', 'd', ':bd<CR>')

"TODO map to key that displays list of buffers and allows you to switch to
"selection


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Buffer Mode End"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"fold mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Fold Mode"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('FoldMode', 'n', '', '<Space>f', ':echo "FoldMode"<CR>')
call submode#leave_with('FoldMode', 'n', '', '<Space>f')

"open
call submode#map('FoldMode', 'n', '', 'o', 'zo')
"close
call submode#map('FoldMode', 'n', '', 'c', 'zc')
"toggle
call submode#map('FoldMode', 'n', '', 'a', 'za')


"create fold within }
call submode#map('FoldMode', 'n', '', 'f', 'zfa}')
call submode#map('FoldMode', 'n', '', 'c', 'zf%')
"TODO create bind to enter interactive mode to create fold under selected text

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Fold Mode End"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"scroll mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""scroll Mode"""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('ScrollMode', 'n', '', '<Space>s', ':echo "ScrollMode"<CR>')
call submode#leave_with('ScrollMode', 'n', '', '<Space>s')

call submode#map('ScrollMode', 'n', '', 'j', '5<C-e>')
call submode#map('ScrollMode', 'n', '', 'k', '5<C-y>')
call submode#map('ScrollMode', 'n', '', 'J', '<C-d>')
call submode#map('ScrollMode', 'n', '', 'K', '<C-u>')


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""scroll Mode End"""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"
"explore mode

"TODO create an explore mode that maybe uses netrw or maybe something else
"could be <SPACE>e because that is similar to emacs

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Explore Mode"""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call submode#enter_with('ExploreMode', 'n', '', '<Space>.', ':echo "ExploreMode"<CR>')
call submode#leave_with('ExploreMode', 'n', '', '<Space>.')

" Change of windows with hjkl
call submode#map('ExploreMode', 'n', '', '.', ':Explore<CR>')
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""Explore Mode End""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"end of explore mode

"Project submode. allows you to set key pages that can be reopened with single
"keystrokes
"add a mks! button

"Task submode. potential integration with taskwarrior

"END OF SUBMODES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""



