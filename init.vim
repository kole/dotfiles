call plug#begin('~/local/share/nvim/plugged')
	Plug 'mxw/vim-jsx'
	Plug 'pangloss/vim-javascript'
	Plug 'relastle/bluewery.vim'
	Plug 'flrnprz/plastic.vim'
	Plug 'arcticicestudio/nord-vim'
	Plug 'scrooloose/nerdtree'
	Plug 'cloudhead/neovim-fuzzy'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'airblade/vim-gitgutter'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
call plug#end()

nnoremap <C-p> :FuzzyOpen<CR>

colorscheme plastic

" airline configs
let g:airline_theme='dark'
let g:airline_powerline_fonts = 1
set noshowmode number relativenumber termguicolors

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
