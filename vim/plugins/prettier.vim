Plug 'prettier/vim-prettier', {'do': 'yarn install'}

" Options for Svelte
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.ts,*.js,*.json PrettierAsync
