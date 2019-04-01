  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Vim-Plug
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  call plug#begin('~/.vim_runtime/plugged')
  Plug 'scrooloose/nerdtree'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'kien/ctrlp.vim'
  Plug 'mhinz/vim-startify'
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'
  Plug 'mhinz/vim-grepper'
  call plug#end()

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Vim-Airline
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Nerd Tree
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  map <C-n> :NERDTreeToggle<CR>
  let g:NERDTreeDirArrowExpandable = '▸'
  let g:NERDTreeDirArrowCollapsible = '▾'
  let g:NERDTreeWinPos = "right"

  autocmd StdinReadPre * let s:std_in=1

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Fix Tabs out of edit mode
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  :nnoremap <Tab> :bnext<CR>
  :nnoremap <S-Tab> :bprevious<CR>

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Reload vimrc on changes
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  if has ('autocmd') " Remain compatible with earlier versions
   augroup vimrc     " Source vim configuration upon save
      autocmd! BufWritePost $MYVIMRC source % | echom "Reloaded " . $MYVIMRC | redraw
      autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
    augroup END
  endif " has autocmd

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Vim can be silly with pasting and tabs / spaces
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  set nopaste

  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  " => Startify
  """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
  autocmd VimEnter * if !argc() | Startify | wincmd w | endif
  let g:startify_session_dir = "~/.vim_runtime/sessions/"
  let g:session_directory = "~/.vim_runtime/sessions/"
  let g:session_autosave_periodic = 1
  let g:session_autosave = 'no'
  let g:session_autoload = 'no'

      let g:startify_lists = [
            \ { 'type': 'files',     'header': ['   MRU']            },
            \ { 'type': 'sessions',  'header': ['   Sessions']       },
            \ ]
