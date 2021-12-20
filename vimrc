"  Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'    " JavaScript support
Plug 'leafgarland/typescript-vim' " TypeScript syntax
Plug 'maxmellon/vim-jsx-pretty'   " JS and JSX syntax
Plug 'jparise/vim-graphql'        " GraphQL syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wellle/targets.vim' "better text objects
Plug 'tpope/vim-surround'
Plug 'wincent/terminus'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', {'do': 'yarn install',
			\ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml'] }
Plug 'vim-airline/vim-airline'
Plug 'SirVer/ultisnips'
Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" " Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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

"" fzf-related configuration options
"" Open the non-gitignored files in the current directory
nnoremap <C-p> :GFiles<Cr>
"" Open up Ag (silver searcher)
nnoremap <C-g> :Ag<Cr>
"" Open buffers
nnoremap <silent><leader>b :Buffers<Cr>

set background=dark
set splitright
set hlsearch "to highlight all occurrences of a word while searching for it

set number
""Hotkey to toggle relative line numbering
nmap <C-L><C-L> :set invrelativenumber<CR>


"""Tabs
set tabstop=4
set shiftwidth=4"
