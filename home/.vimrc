filetype plugin indent on
filetype plugin on
set t_Co=256
set nocompatible
set ic
filetype off
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'c9s/helper.vim'
Plugin 'c9s/treemenu.vim'
Plugin 'c9s/vikube.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-fugitive'
Plugin 'gilgigilgil/anderson.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
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
Plugin 'hauleth/sad.vim'
Plugin 'vim-utils/vim-troll-stopper'
Plugin 'wfleming/vim-codeclimate'
Plugin 'kopischke/vim-fetch'
Plugin 'godlygeek/tabular'
Plugin 'nightsense/seabird'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'DaniRey/sqlplusvim'
call vundle#end()

" fzf plugin
set rtp+=/usr/local/opt/fzf
" powerline bindings
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" emmet keybindings
let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_settings = {
      \  'javascript.jsx' : {
         \      'extends' : 'jsx',
         \  },
      \}

"set 80 character column
if exists('+colorcolumn')
  set colorcolumn=120
end

set background=dark
colorscheme stormpetrel

let mapleader = " "

autocmd VimResized * :wincmd =

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.md set colorcolumn=80

nnoremap <leader>- :wincmd _<cr>:wincmd \|<cr>
nnoremap <leader>= :wincmd =<cr>
nmap <Leader>ca :CodeClimateAnalyzeProject<CR>
nmap <Leader>co :CodeClimateAnalyzeOpenFiles<CR>
nmap <Leader>cf :CodeClimateAnalyzeCurrentFile<CR>

" syntastic things
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_ruby_checkers = ['syntastic-ruby-rubocop']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

vnoremap <leader>\ :Tabularize /<bar><cr>
vnoremap <leader><bar> :Tabularize /<bar><cr>

" highlight non ascii bisnis
syntax match nonascii "[^\x00-\x7F]"
highlight nonascii guibg=Red ctermbg=2


" bind K to grep word under cursor
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!

let g:rspec_command = 'call Send_to_Tmux("bin/spring rspec {spec} --profile --format documentation\n")'

let NERDTreeShowHidden=1
let g:NERDSpaceDelims = 1
let vim_markdown_preview_github=1
let vim_markdown_preview_hotkey='<C-m>'

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·
set autoread
set clipboard=unnamed
set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set showmatch
set tabstop=2
set shiftwidth=2
set scrolloff=5
set shiftround
set expandtab
set number

" stop using arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
nnoremap <leader><leader> <c-^>
nnoremap <silent> <Leader>z :TagbarToggle<CR>
nnoremap Q <nop> " stop silly menu stuff happening
nmap <leader>py orequire "pry"; binding.pry<ESC>
nmap <leader>bb obyebug<ESC>
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpec()<CR>
map <Leader>wh :%s/\s\+$//<CR>:w<CR>
map <Leader>br :bufdo e!<CR>
map <leader>n :NERDTreeToggle<CR>
nmap <Leader>r :RuboCop<CR>
imap jj <Esc>
map <c-p> :FZF<CR>
