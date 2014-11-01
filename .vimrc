call pathogen#infect()

"-----------------------
" FB Stuff
"-----------------------
if filereadable("/home/engshare/admin/scripts/vim/biggrep.vim")
  source /home/engshare/admin/scripts/vim/biggrep.vim
  source /home/engshare/admin/scripts/vim/plugin/hack.vim
  source /mnt/vol/engshare/admin/scripts/vim/fbvim.vim

  if match(getcwd(), '\c\/fbcode\/') >= 0
    nmap <Leader>gw :FBGW<CR>
    vmap <Leader>gs y:FBGS <C-R>0<CR><CR>
  elseif match(getcwd(), '\c\/www-') >= 0
    nmap <Leader>gw :TBGW<CR>
    vmap <Leader>gs y:TBGS <C-R>0<CR><CR>
  endif
  nmap <Leader>gf :TBGR function <C-R>=expand("<cword>")<CR>\(<CR>
  nmap <Leader>gm :TBGR @providesModule <C-R>=expand("<cword>")<CR>$<CR>
  nmap <Leader>gc :TBGR class <C-R>=expand("<cword>")<CR> <CR>
  nmap <Leader>k :!t %<CR>
  nmap <Leader>d :%s/function test/function atest/g<CR>
  nmap <Leader>e :%s/function atest/function test/g<CR>
  nmap <Leader>h :HackMake<CR>
  nmap <Leader>ff :FBVimFilenameSearch<CR>
  nmap <Leader>ft :FBVimMuralSearchCurrentWord<CR>
endif

"-----------------------
" General
"-----------------------
nmap <Leader>w :w<CR>
set mouse=a
"set statusline=%f%h%m%=%c,%l/%L\ %P

"-----------------------
" Interface
"-----------------------
syntax on

set wildmenu
set ruler
set backspace=2

set ignorecase
set smartcase
set incsearch
set hlsearch

set laststatus=2

set showmatch
set mat=2

set number

set t_Co=256
colorscheme desert2

set cursorline
hi CursorLine cterm=NONE ctermbg=235

"-----------------------
" Indenting
"-----------------------
set shiftwidth=2
set softtabstop=2
set expandtab

syn match tab display "\t"
hi link tab Error

set autoindent
set smartindent

"-----------------------
" Movement
"-----------------------
" window movement
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tt :tabnext<cr>
map <leader>tp :tabprevious<cr>

map <Leader>nh :noh<cr>

"-----------------------
" Plugins
"-----------------------
nmap <Leader>nt :NERDTreeToggle<CR>
nmap <Leader>nf :NERDTreeFind<CR>

let Tlist_WinWidth=60
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Sort_Type = "name"
nmap <Leader>tl :TlistToggle<CR>

"nmap <Leader>t :Unite -start-insert monocle<CR>
"nmap <C-]> :UniteWithCursorWord -start-insert monocle<CR>
"nmap <C-t> <C-o>

highlight PmenuSel ctermfg=blue ctermbg=grey

" airline config
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_a=''
let g:airline_section_y=''
let g:airline_theme='bubblegum'
set ttimeoutlen=50

" a.vim
nmap <Leader>a :A<CR>

