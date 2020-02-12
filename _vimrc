so ~\vimfiles\plugins.vim

set background=dark
set encoding=utf-8
set expandtab
set gdefault
set hidden
set hlsearch
set noshowmode
set noswapfile
set nowrap
set number
set shiftwidth=2
set showtabline=2
set softtabstop=2
set spelllang=pt,en
set splitbelow
set splitright
set tabstop=2
colorscheme onedark

if has('gui_running')
  set columns=140
  set cursorline
  set guifont=Fira_Code:h11
  set guioptions=rL
  set lines=37
  set renderoptions=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
  set spell
endif

let mapleader = ','
let maplocalleader = '\\'
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>ep :e $HOME\vimfiles\plugins.vim<CR>
vmap <C-c> "+y
nmap <Leader>ft :setfiletype
nmap <Leader><Space> :nohlsearch<CR>
nmap <silent> <Leader>q :bd<CR> :echo 'Buffer deleted'<CR>
imap AA <C-O>A
imap II <C-O>I
nmap <C-H> <C-W><C-H>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>

nmap <C-S> :Startify<cr>

nmap <silent> <leader>/ :NERDTreeToggle<cr>

nmap <Leader>g :e#<CR>
nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9
nmap <Leader>b <Plug>AirlineSelectPrevTab
nmap <Leader>f <Plug>AirlineSelectNextTab

let g:ctrlp_open_new_file = 'r'
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v\/(\.git|node_modules)$',
      \ 'file': '\v\/\.(exe|so|dll)$'
      \ }

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_skip_empty_sections = 1

if has('gui_running')
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_color_change_percent = 2
endif

let g:gitgutter_max_signs = 1000

let g:startify_custom_header = []

let g:ale_linters_explicit = 1
let g:ale_linters = {
      \   'sql': ['sqlint'],
      \   'vim': ['vint'],
      \   'yaml': ['yamllint'],
      \}

let g:polyglot_disabled = ['latex']

let vim_markdown_preview_github=1

"nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
"nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
"nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>
"nnoremap <silent> <Leader><Space> :call gruvbox#hls_hide()<CR>

"nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
"nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
"nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

com! FormatXML :setfiletype xml|%!py -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

augroup vimrc
  autocmd!
  autocmd BufWritePost _vimrc source %
  autocmd BufWritePost plugins.vim source %

  autocmd BufRead *.csv :%ArrangeColumn!
  autocmd BufWrite *.csv :%UnArrangeColumn
  autocmd BufWritePost *.csv :%ArrangeColumn!

  autocmd VimEnter * RainbowParenthesesToggle
  autocmd Syntax * RainbowParenthesesLoadRound
  autocmd Syntax * RainbowParenthesesLoadSquare
  autocmd Syntax * RainbowParenthesesLoadBraces
augroup END
