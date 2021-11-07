" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"vim-plug configuration
call plug#begin('~/.vim/bundle')

"Plugins
" Plug 'ycm-core/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'dense-analysis/ale'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'wellle/targets.vim' "better text objects
Plug 'tpope/vim-surround'
Plug 'wincent/terminus'
Plug 'vimwiki/vimwiki'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', {'do': 'yarn install',
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml'] }
Plug 'vim-airline/vim-airline'
Plug 'psf/black', {'branch': 'stable'}
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'
" Plug 'sheerun/vim-polyglot'
Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-fugitive'

" Plug 'lervag/vimtex'

call plug#end()
"End vim-plug stuff

" === coc.nvim === "
nmap <silent> <leader>dd <Plug>(coc-definition)
nmap <silent> <leader>dr <Plug>(coc-references)
nmap <silent> <leader>dj <Plug>(coc-implementation)

" ale configuration
" let g:ale_fixers = {'javascript': ['eslint'],}
" let g:ale_sign_error = '❌'
" let g:ale_sign_warning = '⚠️'
" let g:ale_fix_on_save = 1

"Make YCM compatible with UltiSnips (using supertab)
"Source: https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
let g:ycm_key_list_select_completion = ['<C-h>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-h>'

"" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

""More configuration options
let g:UltiSnipsSnippetsDir='~/.vim/mysnippets'
let g:UltiSnipsSnippetDirectories=["mysnippets"]

""Options for NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

""Options for vim-prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0

""Options for airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"" options for black
autocmd BufWritePre *.py execute ':Black'


""" vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"" fzf-related configuration options
"" Open the non-gitignored files in the current directory
nnoremap <C-p> :GFiles<Cr>
"" Open up Ag (silver searcher)
nnoremap <C-g> :Ag<Cr>
"" Open buffers
nnoremap <silent><leader>b :Buffers<Cr>

""" Non-package configurations

"" set font
set guifont=IBM\ Plex\ Mono:h14,:Hack\ 14,Source\ Code\ Pro\ 12,Bitstream\ Vera\ Sans\ Mono\ 11

set background=dark
set splitright
set hlsearch "to highlight all occurrences of a word while searching for it

set number
""Hotkey to toggle relative line numbering
nmap <C-L><C-L> :set invrelativenumber<CR>


"""Tabs
set tabstop=4
set shiftwidth=4"
