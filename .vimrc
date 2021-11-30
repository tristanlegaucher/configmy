set nocompatible
filetype on          " Détection du type de fichier
syntax on			" Coloration syntaxique
set linebreak        " Coupe les lignes au dernier mot et pas au caractère (requier Wrap lines, actif par défaut)
set visualbell       " Utilisation du clignotement à la place du "beep"
set noerrorbells
set showmatch        " Surligne le mots recherchés dans le texte
set hlsearch         " Surligne tous les résultats de la recherche
set autoindent       " Auto-indentation des nouvelles lignes
set expandtab
set shiftwidth=2     " (auto) Indentation de 2 espaces
set smartindent      " Active "smart-indent" (améliore l'auto-indentation, notamment en collant du texte déjà indenté)
set smarttab         " Active "smart-tabs" (améliore l'auto-indentation, Gestion des espaces en début de ligne pour l'auto-indentation)
set tabstop=4 softtabstop=4
set mouse=a          " Active la souris, dans tous les modes (note il faudra alors d'appuyer sur "shift" pour faire les sélections de copier-coller dans l'éditeur)
set nu
set undodir=~/.vim/undodir
set undofile
set incsearch
set ruler               " Affiche la position acutelle du curseur
set wrap                " Affiche les lignes trop longue sur plusieurs lignes
set background=dark
set laststatus=2

" Encoding
set encoding=utf-8

" Ctrl-Flèches D/G
map ^[[D <C-Left>
map ^[[C <C-Right>
map! ^[[D <C-Left>
map! ^[[C <C-Right>

 " support pavé numérique dans PuTTY
imap ^[Oq 1
imap ^[Or 2
imap ^[Os 3
imap ^[Ot 4
imap ^[Ou 5
imap ^[Ov 6
imap ^[Ow 7
imap ^[Ox 8
imap ^[Oy 9
imap ^[Op 0
imap ^[On .
imap ^[OR *
imap ^[OQ /
imap ^[Ol +
imap ^[OS -


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'itchyny/lightline.vim'
Plug 'preservim/NERDTree'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lervag/vimtex'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()
colorscheme nord

if !has('gui_running')
          set t_Co=256
  endif
let g:airline_theme= 'nord'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

"*****************************************************************************
"" Convenience variables
"*****************************************************************************

" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif


