filetype plugin indent on
filetype plugin on
set t_Co=256
set nocompatible
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-rails'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-sleuth'
Plugin 'ngmy/vim-rubocop'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'christoomey/vim-tmux-runner'
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-endwise'
Plugin 'ervandew/supertab'
Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'tpope/vim-rbenv'
Plugin 'jgdavey/tslime.vim'
Plugin 'jgdavey/vim-blockle'
call vundle#end()

set background=dark
colorscheme gruvbox

set runtimepath^=~/.vim/bundle/ctrlp.vim

let mapleader = " "
autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize

nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>

if exists('+colorcolumn')
  set colorcolumn=80
end

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

let g:rspec_command = 'call Send_to_Tmux("be rspec {spec}\n")'
let NERDTreeShowHidden=1
" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
set autoread
set clipboard=unnamed
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set showmatch
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set scrolloff=5
set shiftround
set expandtab
set number
let g:NERDSpaceDelims = 1
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <leader>. :CtrlPTag<cr>
nnoremap <leader><leader> <c-^>
nnoremap Q <nop>
nmap <leader>py orequire "pry"; binding.pry<ESC>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpec()<CR>
map <leader>n :NERDTreeToggle<CR>
nmap <Leader>r :RuboCop<CR>
imap jj <Esc>
