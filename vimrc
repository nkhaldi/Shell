set nocompatible				" be iMproved, required
filetype off					" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'flazz/vim-colorschemes'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'git://git.wincent.com/command-t.git'

" All of your Plugins must be added before the following line
call vundle#end()			" required
filetype plugin indent on	" required To ignore plugin indent changes, instead use:

" Brief help
" :PluginList		- lists configured plugins
" :PluginInstall	- installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo	- searches for foo; append `!` to refresh local cache
" :PluginClean		- confirms removal of unused plugins; append `!` to auto-approve removal

" Табуляция
set smarttab
set expandtab
set autoindent
set smartindent

set tabstop=4
set shiftwidth=4
set softtabstop=4
set showtabline=1

" Подсветка
syntax on
set t_Co=256
set hlsearch
set cursorline

set number					"Включаем нумерацию строк
set mouse=a					"Включить поддержку мыши
set mousehide				"Спрятать курсор мыши когда набираем текст
set termencoding=utf-8		"Кодировка терминала

set t_vb=					" Не пищать!
set novisualbell			" Не мигать
set visualbell t_vb=		" Выключаем звук в Vim

" Переносим на другую строчку, разрываем строки
set wrap
set linebreak

" Вырубаем .swp и ~ (резервные) файлы
set nobackup
set noswapfile
set encoding=utf-8
set fileencodings=utf8,cp1251
set backspace=indent,eol,start whichwrap+=<,>,[,]

set ruler
set hidden
set clipboard=unnamed

" Переключение между вкладками
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

set guifont=Monaco:h18
colorscheme OceanicNext
