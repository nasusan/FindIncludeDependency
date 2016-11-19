set number
set autoindent
set autoread
set nobackup
set noswapfile
set list
set incsearch
" listで表示される文字のフォーマットを指定する
" set listchars=eol:~,tab:>\ ,extends:<
" Tab、行末の半角スペースを明示的に表示する
" set listchars=tab:^\ ,trail:~
set listchars=tab:>\ ,trail:-
set showmatch
set ignorecase
set smartcase
set smarttab
set tabstop=4
set shellslash
set cursorline

"key mapping
imap <c-j> <esc>

"encoding

if has('win32')
	if has('gui_running')
		let &termencoding = &encoding
		set encoding=utf-8
	else
		set encoding=cp932
	endif
endif

"yank

if has('gui') || has('xterm_clipboard')
set clipboard=unnamed
endif

