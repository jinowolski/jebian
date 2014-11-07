syntax on
set autoindent
set backspace=indent,eol,start
set comments=s1:/*,mb:*,ex:*/,://,:%,:XCOMM,n:>,fb:-,fb:*,fb:#
set expandtab
set fenc=
set fileencodings=utf8,latin2
set formatoptions=tcq1j
set indentexpr=
set modeline
set nobackup
set nocindent
set nohlsearch
set nowritebackup
set ruler
set shiftround
set shiftwidth=4
set showcmd
set showmode
set softtabstop=4
set tabstop=4
nohlsearch
autocmd BufEnter *.html setlocal indentexpr=
autocmd BufRead *.py set ai
autocmd BufRead *.py set ts=4
autocmd BufRead *.py set sts=4
autocmd BufRead *.py set et
autocmd BufRead *.py set sw=4
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufWritePre *.py 1,$s/\s\+$//e

autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

set completeopt=longest,menuone
"inoremap <Nul> <C-x><C-o>
"autocmd FileType python python
highlight PmenuSel ctermbg=green gui=bold

autocmd FileType make set noexpandtab


" highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

set cursorline
set colorcolumn=79,80
hi CursorLine   cterm=NONE ctermbg=darkgrey guibg=lightgrey
hi CursorColumn cterm=NONE ctermbg=darkgrey guibg=lightgrey
hi ColorColumn  cterm=NONE ctermbg=darkgrey guibg=lightgrey

nnoremap - ddp
nnoremap _ ddkP
inoremap <c-u> <esc>viwUea
nnoremap <c-u> viwUe

syn spell toplevel
set spelllang=pl,en
"" Enable spell checking for any unknown filetype
set spell
"" Disable spell checking for any known filetype...
au FileType *           set nospell
"" ...unless it is one of the following:
au FileType gitcommit   set spell
au FileType mail        set spell
au FileType rst         set spell
au FileType txt         set spell

set nojoinspaces    " Do not insert double spaces.  After a peroid.
set textwidth=78
au FileType python      set textwidth=0
au FileType sh          set textwidth=0
au FileType sql         set textwidth=0
au FileType vim         set textwidth=0
au FileType xml         set textwidth=0
