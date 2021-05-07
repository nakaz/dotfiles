""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

" Command-line fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Asynchronous completion for neovim
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Tern-based JavaScript editing support
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" Emmet for vim
" Plug 'mattn/emmet-vim'

" Code search and view tool
Plug 'dyng/ctrlsf.vim'

" BufExplorer quickly and easily switch between buffer
Plug 'jlanzarotta/bufexplorer'

" Tree explorer for vim.
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Lean & mean status/tabline
Plug 'vim-airline/vim-airline'

" Vim-Airline themes for Status Bar
Plug 'vim-airline/vim-airline-themes'

" Comment stuff out
Plug 'tpope/vim-commentary'

" Visually select larger regions of text using the same key combination
" Plug 'terryma/vim-expand-region'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Markdown syntax highlighting
" Plug 'plasticboy/vim-markdown', { 'for': 'md' }

" Enable repeating supported plugin maps
Plug 'tpope/vim-repeat'

" Quoting/parenthesizing made simple
Plug 'tpope/vim-surround'

" Display indention levels with vertical lines
" Plug 'Yggdroot/indentLine'

" Tmux statusline generator with support for airline
Plug 'edkolev/tmuxline.vim'

" Undo history visualizer
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }

" Vim Workspace Controller
" Plug 'szw/vim-ctrlspace'

" Vim motions on speed
Plug 'easymotion/vim-easymotion'

" Shows a git diff in the gutter
" Plug 'airblade/vim-gitgutter'

" Javascript indentation and syntax support
Plug 'pangloss/vim-javascript'

" Sublime Text style multiple selections
Plug 'terryma/vim-multiple-cursors'

" Seamless navigation between tmux panes and vim splits
Plug 'christoomey/vim-tmux-navigator'

" Add filetype glyphs (icons)
" Plug 'ryanoasis/vim-devicons'

" Zoom in/out of windows
Plug 'troydm/zoomwintab.vim'

" Oceanic Next colorscheme
Plug 'mhartington/oceanic-next'

" Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

" React JSX syntax highlighting & indenting
Plug 'mxw/vim-jsx'

" Asynchronous Linter
Plug 'w0rp/ale'

" GraphQL fs, syntax, and indentation support
Plug 'jparise/vim-graphql'

" GoLang highlighting, indentation, and functional support
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Typescript syntax highlighting
" Plug 'leafgarland/typescript-vim'

" Svelte syntax highlighting and indentation support
Plug 'evanleck/vim-svelte'

call plug#end()



""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SPECIFC CONFIGURATIONS
""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""
" bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='mru'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400


""""""""""""""""""""""""""""""
" FZF
""""""""""""""""""""""""""""""
let g:fzf_layout = { 'down': '40%' }

nnoremap <silent> <C-f> :GitFiles<CR>
" nnoremap <silent> <C-f> :Files<CR>

" Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" Search project files, respecting git ignore
" nnoremap <silent> <C-f> :FZF<CR>
" Search all files, e.g. node_modules/
noremap <silent> <leader>af :call fzf#vim#files('',
      \ {'source': 'ag --hidden --ignore .git -f -g "" -u', 'down': '40%'})<CR>
" Search MRU buffers
nnoremap <silent> <leader>f :Buffers<CR>
nnoremap <silent> <leader>` :Marks<CR>

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeIgnore = ['\.js.map$', '\.DS_Store$']
let g:NERDTreeWinSize=35
map <C-e> :NERDTreeToggle<CR>


""""""""""""""""""""""""""""""
" vim-multiple-cursors
""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key="\<C-s>"
let g:multi_cursor_quit_key="<Esc>"


""""""""""""""""""""""""""""""
" vim airline
""""""""""""""""""""""""""""""
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline_powerline_fonts = 1
let g:airline_theme="oceanicnext"
" if has("gui_running")
"   let g:airline_theme="luna"
" else
"   let g:airline_theme="oceanicnext"
" endif

" Automatically truncate sections
let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 100,
  \ 'x': 100,
  \ 'y': 105,
  \ 'z': 50,
  \ 'warning': 50,
  \ }

""""""""""""""""""""""""""""""
" vim-easymotion
""""""""""""""""""""""""""""""
map s <Plug>(easymotion-s)
map <leader>s <Plug>(easymotion-s2)
map <leader>_ <Plug>(easymotion-prefix)

" match lower & upper case
let g:EasyMotion_smartcase = 1

let g:EasyMotion_use_smartsign_us = 1

map <leader>l <Plug>(easymotion-lineforward)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion

""""""""""""""""""""""""""""""
" vim-fugitive
""""""""""""""""""""""""""""""
map <leader>gg :GitGutterToggle<CR>
map <leader>gs :Gstatus<CR>
set diffopt+=vertical

""""""""""""""""""""""""""""""
" Deoplete
""""""""""""""""""""""""""""""
if has('nvim')
  " Enable deoplete.
  let g:deoplete#enable_at_startup = 1

  augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=tern#Complete
  augroup end

  let g:tern_request_timeout = 1
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 0

  call deoplete#custom#option('num_processes', 4)
  call deoplete#enable_logging('DEBUG', 'deoplete.log')

  " Automatically close preview window after autocompletion
  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
endif


""""""""""""""""""""""""""""""
" vim markdown
""""""""""""""""""""""""""""""
let g:vim_markdown_folding_disabled=1

""""""""""""""""""""""""""""""
" undotree
""""""""""""""""""""""""""""""
map <leader>u :UndotreeToggle<CR>
let g:undotree_WindowLayout = 3
let g:undotree_SplitWidth = 35
let g:undotree_SetFocusWhenToggle = 1

if has("persistent_undo")
  set undodir='~/.undodir/'
  set undofile
endif

""""""""""""""""""""""""""""""
" ZoomWin
""""""""""""""""""""""""""""""
nnoremap <silent> <leader>z :ZoomWinTabToggle<cr>

""""""""""""""""""""""""""""""
" CtrlSF
""""""""""""""""""""""""""""""
" Prompt CtrlSF using ALT+f
nmap ƒ <Plug>CtrlSFPrompt
vmap ƒ <Plug>CtrlSFVwordPath

" Toggle CtrlSF result display
map † :CtrlSFToggle<CR>

let g:ctrlsf_indent = 2

""""""""""""""""""""""""""""""
" Tmuxline
""""""""""""""""""""""""""""""
let g:tmuxline_preset = {
  \"a"    : "#S",
  \"c"    : "",
  \"win"  : "#I  #W",
  \"cwin" : "#I  #W",
  \"x"    : ["♫ #(osascript ~/.dotfiles/applescripts/spotify.scpt)"],
  \"y"    : ["%a", "%b %d", "%R"],
  \"z"    : "#h",
  \'options' : {'status-justify' : 'left'}}

let g:tmuxline_separators = {
  \ 'left' : '',
  \ 'left_alt': '',
  \ 'right' : '',
  \ 'right_alt' : '',
  \ 'space' : ' '}

""""""""""""""""""""""""""""""
" vim-jsx
""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

""""""""""""""""""""""""""""""
" ale
""""""""""""""""""""""""""""""
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'

highlight clear ALEErrorSign
highlight clear ALEWarningSign

let g:ale_echo_msg_error_str = 'ERROR'
let g:ale_echo_msg_warning_str = 'WARNING'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
\   'javascript': ['eslint']
\ }

""""""""""""""""""""""""""""""
" Typescript
""""""""""""""""""""""""""""""
let g:typescript_indent_disable = 0

""""""""""""""""""""""""""""""
" Svelte
""""""""""""""""""""""""""""""
let g:svelte_indent_script = 0
let g:svelte_indent_style = 0
