so ~\vimfiles\plugins.vim

set expandtab
set gdefault
set hidden
set hlsearch
set list
set noshowmode
set noswapfile
set nowrap
set number
set relativenumber
set shell=pwsh
set shiftwidth=2
set showtabline=2
set softtabstop=2
set spelllang=pt,en
set splitbelow
set splitright
set tabstop=2
set ignorecase
set smartcase
colorscheme onedark

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

set wildignore +=.git
set wildignore +=node_modules

if has('gui_running')
  set columns=140
  set cursorline
  set guifont=Fira_Code:h12
  set guioptions=rL
  set lines=37
  set renderoptions=type:directx,gamma:1.0,contrast:0.5,level:1,geom:1,renmode:4,taamode:1
endif

let mapleader = ','
let maplocalleader = '\'
nmap <Leader>ev :e $MYVIMRC<CR>
nmap <Leader>ep :e $HOME\vimfiles\plugins.vim<CR>
nmap <Leader>sc :SClose<cr>
vmap <C-c> "+y
nmap <Leader>ft :setfiletype
nmap <silent> <Leader>q :bd<CR> :echo 'Buffer deleted'<CR>
"nnoremap <silent> <C-space> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
imap AA <C-O>A
imap II <C-O>I

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

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_skip_empty_sections = 1
let g:airline_section_b = "%{fugitive#statusline()}"

if has('gui_running')
  let g:indent_guides_enable_on_vim_startup = 1
  let g:indent_guides_color_change_percent = 2
endif

let g:gitgutter_max_signs = 1000

let g:startify_session_persistence = 1
let g:startify_lists = [
			\ { 'type': 'sessions',  'header': ['   Sessions']       },
			\ { 'type': 'files',     'header': ['   MRU']            },
			\ ]
let g:startify_custom_header = [
			\ "   ██████╗ ██████╗ ███╗   ███╗ █████╗ ██████╗ ████████╗██╗███╗   ██╗███████╗ ",
			\ "   ██╔══██╗██╔══██╗████╗ ████║██╔══██╗██╔══██╗╚══██╔══╝██║████╗  ██║██╔════╝ ",
			\ "   ██████╔╝██║  ██║██╔████╔██║███████║██████╔╝   ██║   ██║██╔██╗ ██║███████╗ ",
			\ "   ██╔══██╗██║  ██║██║╚██╔╝██║██╔══██║██╔══██╗   ██║   ██║██║╚██╗██║╚════██║ ",
			\ "   ██║  ██║██████╔╝██║ ╚═╝ ██║██║  ██║██║  ██║   ██║   ██║██║ ╚████║███████║ ",
			\ "   ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═══╝╚══════╝ ",
			\ ]

let g:diminactive_use_syntax = 1

let g:csv_autocmd_arrange    = 1
let g:csv_autocmd_arrange_size = 1024*1024

com! FormatXML :setfiletype xml|%!py -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

augroup vimrc
  au!
  au BufWritePost _vimrc source %
  au BufWritePost plugins.vim source %

  au VimEnter * RainbowParenthesesToggle
  au Syntax * RainbowParenthesesLoadRound
  au Syntax * RainbowParenthesesLoadSquare
  au Syntax * RainbowParenthesesLoadBraces
  "au Syntax * RainbowParenthesesLoadChevrons

  au WinEnter * set cul
  au WinLeave * set nocul
augroup END

