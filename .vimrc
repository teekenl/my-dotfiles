set nocompatible              " be iMproved, required
set number
syntax enable
set shell=bash
syntax on 
filetype plugin indent on
set clipboard=unnamedplus
set clipboard^=unnamed
set mouse=r
set backspace=indent,eol,start
set laststatus=2
autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2


" max text length
au BufRead,BufNewFile *.rb setlocal textwidth=120

" get rid of trailing whitespace on :w
autocmd BufWritePre * %s/\s\+$//e

" remap splitting windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" remap splits
nmap :vs :vsplit
nmap :s :split
" nnoremap <C-a> <C-w>
"Pathogen
set nocp

" Set SPELLCHeCK YYAH
" set spell spelllang=en_ca
" hi SpellBad cterm=underline,bold
"set highlight SpellBad      ctermfg=Red         term=Reverse        guisp=Red       gui=undercurl   ctermbg=White 

" Fzf search enable
set rtp+=/usr/local/opt/fzf

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set ctrlP plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim
" allow vim to jump through directories for ctags
set tags=tags;/
let g:solarized_termcolors = 16
call vundle#begin()

" Vim > 8, enable gui colors in terminal
if (has("termguicolors"))
  set termguicolors
endif

" One Dark VS
colorscheme onedark
hi LineNr ctermfg=DarkGrey guifg=#A9A9A9

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" to search text in vim.
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --vimgrep'

Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'
" set filetypes as typescript.tsx
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx
" dark red
hi tsxTagName guifg=#E06C75 ctermfg=DarkRed
" orange
hi tsxCloseString guifg=#F99575 ctermfg=130
hi tsxCloseTag guifg=#F99575 ctermfg=130
hi tsxCloseTagName guifg=#F99575 ctermfg=130
hi tsxAttributeBraces guifg=#F99575 ctermfg=130
hi tsxEqual guifg=#F99575 ctermfg=130

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
" yellow
hi tsxAttrib guifg=#F8BD7F ctermfg=Yellow

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" Scala highlights
Plugin 'derekwyatt/vim-scala'
" neocomplete Plugin
Plugin 'Shougo/neocomplete.vim'
" show git diif in vim
Plugin 'airblade/vim-gitgutter'
" plugin from http://vim-scripts.org/vim/scripts.html
" Install L9 and avoid a Naming conflict if you've already
" installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}
Bundle 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Fzg plugin
Plugin 'junegunn/fzf.vim'
" remap envoke key
nnoremap <silent> <C-z> :FZF<CR>
nnoremap <silent> <C-x> :Buffers<CR>

" Ripgrep
Plugin 'jremmen/vim-ripgrep'
let g:rg_highligh = 1

"" Quick comment toggling
Plugin 'tpope/vim-commentary'
noremap \ :Commentary<CR
autocmd FileType ruby setlocal commentstring=#\ %s

" Files stucture tree
Plugin 'scrooloose/nerdtree'
map - :NERDTreeToggle<CR>
map <leader>r :NERDTreeFind<cr>
" autocmd BufWinEnter * NERDTreeFind
map ] :NERDTreeFind<CR>

" Vim Dev Icons
Plugin 'ryanoasis/vim-devicons'
" Set to use Hack Nerd Font
set guifont=Hack\ Nerd\ Font:h13 
set encoding=UTF-8

" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

" Link the folder icon with directory
hi! link NERDTreeFlags NERDTreeDir
hi NERDTreeDir guifg=#F69C01

" Customize color for different file extension
call NERDTreeHighlightFile('rb', 'DarkRed', 'none', '#E06C75')
call NERDTreeHighlightFile('py', 'white', 'none', '#3792CB')
call NERDTreeHighlightFile('config', 'yellow', 'none', '#F8BD7F')
call NERDTreeHighlightFile('json', 'yellow', 'none', '#d45434')
call NERDTreeHighlightFile('html', 'yellow', 'none', '#F16529')
call NERDTreeHighlightFile('htm', 'yellow', 'none', '#F16529')
call NERDTreeHighlightFile('erb', 'yellow', 'none', '#F16529')
call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan')
call NERDTreeHighlightFile('scss', 'cyan', 'none', '#CF649A')
call NERDTreeHighlightFile('less', 'cyan', 'none', '#CF649A')
call NERDTreeHighlightFile('sass', 'cyan', 'none', '#CF649A')
call NERDTreeHighlightFile('js', 'yellow', 'none', '#F7DF1D')
call NERDTreeHighlightFile('jsx', 'yellow', 'none', '#F7DF1D')
call NERDTreeHighlightFile('ts', 'yellow', 'none', '#F7DF1D')
call NERDTreeHighlightFile('gitconfig', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('gitignore', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('Procfile', 'Gray', 'none', '#9E7CC1')
call NERDTreeHighlightFile('sql', 'Gray', 'none', '#336791')
call NERDTreeHighlightFile('.dockerignore', 'Gray', 'none', '#2496ED')
call NERDTreeHighlightFile('Dockerfile', 'Gray', 'none', '#2496ED')
call NERDTreeHighlightFile('bashrc', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('bashprofile', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('txt', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('md', 'Gray', 'none', '#686868')
call NERDTreeHighlightFile('png', 'Gray', 'none', '#209E16')
call NERDTreeHighlightFile('ico', 'Gray', 'none', '#209E16')
call NERDTreeHighlightFile('jpeg', 'Gray', 'none', '#209E16')
call NERDTreeHighlightFile('jpg', 'Gray', 'none', '#209E16')

" Hide the brackets in nerd tree
autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\]" contained conceal containedin=ALL
autocmd FileType nerdtree syntax match hideBracketsInNerdTree "\[" contained conceal containedin=ALL

call vundle#end()            " required

" Ctrl-P configurations
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
" Ctags with Ctrl-P
" nnoremap <leader>. :CtrlPTag<cr>

"Neocomplete configurations
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
" Move up and down in autocomplete with <c-j> and <c-k>
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Customize fzf colors to match your color scheme
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

" ALE
nmap <LEADER>af :ALEFix<CR>
Plugin 'w0rp/ale'
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_save = 1
let g:ale_set_loclist = 1

let g:ale_fixers = {
\  'ruby': [
\    'remove_trailing_lines',
\    'trim_whitespace',
\    'rubocop'
\  ]
\}
let g:ale_linters = {'ruby': ['rubocop', 'ruby']}
let g:ale_ruby_rubocop_executable = 'bin/rubocop'
let g:ruby_indent_assignment_style = 'variable'

" vim-ruby
let g:ruby_indent_access_modifier_style = 'normal'
let g:ruby_indent_assignment_style = 'variable'
let g:ruby_indent_block_style = 'do'
set shell=/bin/zsh
