set nocompatible      " Enable Vim mode (instead of vi emulation)

let g:is_posix = 1    " Our /bin/sh is POSIX, not bash
set autoindent        " Intelligent indentation matching
set autoread          " Update the file if it's changed externally
set backspace=indent,eol,start  " Allow backspacing over anything
set belloff=all       " Turn off bells
set display=truncate  " Show '@@@' when the last screen line overflows
set formatoptions+=j  " Delete comment char when joining lines
set history=100       " Undo up to this many commands
set hlsearch          " Highlight search results
set incsearch         " Highlight search matches as you type them
set ruler             " Show cursor position
set ttyfast           " Redraw faster for smoother scrolling
set wildmenu          " Show menu for tab completion in command mode

try
    syntax on         " Enable syntax highlighting
catch | endtry        " vim-tiny is installed without the syntax files

if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
    set fileencodings=ucs-bom,utf-8,latin1
endif

" CTRL-L will mute highlighted search results
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

augroup FreeBSD
    autocmd!
    autocmd BufNewFile /usr/ports/*/*/Makefile 0r /usr/ports/Templates/Makefile
    if !empty($PORTSDIR)
        autocmd BufNewFile $PORTSDIR/*/*/Makefile 0r $PORTSDIR/Templates/Makefile
    endif
augroup END

" ############################################################################
" === Vimrc Begin ===
" ############################################################################

" ############################################################################
" +--------------------------------------------------------------------------+
" | $Id: vimrc 2018-10-18 10:06:29 Bleakwind Exp $                           |
" +--------------------------------------------------------------------------+
" | Copyright (c) 2008-2018 Bleakwind(Rick Wu).                              |
" +--------------------------------------------------------------------------+
" | This source file is vimrc.                                               |
" | This source file is release under BSD license.                           |
" +--------------------------------------------------------------------------+
" | Author: Bleakwind(Rick Wu) <bleakwind@qq.com>                            |
" +--------------------------------------------------------------------------+
" ############################################################################

" ############################################################################
" Plugin List by Bleakwind
" ############################################################################
" ============================================================================
" Lua [echo has('lua')]
" http://www.lua.org/download.html
" ============================================================================
" Perl [echo has('perl')]
" https://www.perl.org/get.html
" ============================================================================
" Python [echo has('python3')]
" https://www.python.org/downloads/windows/
" ============================================================================
" Ctags
" http://ctags.sourceforge.net/
" ============================================================================
" Git && Curl
" https://git-scm.com/downloads
" ----------------------------------------------------------------------------
" Windows Put this in: Git/cmd/curl.cmd
" ----------------------------------------------------------------------------
" @setlocal
" @for /F "delims=" %%I in ("%~dp0..") do @set git_install_root=%%~fI
" @set PATH=%git_install_root%\bin;%git_install_root%\mingw\bin;%git_install_root%\mingw64\bin;%PATH%
" @if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
" @if not exist "%HOME%" @set HOME=%USERPROFILE%
" @curl.exe %*
" ============================================================================
" ############################################################################
" ============================================================================
" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git \
"       /pub/_program/vim/vimfiles/bundle/Vundle.vim
" ============================================================================
" Vim-Colorful
" https://github.com/bleakwind/vim-colorful
" ============================================================================
" Vim-Cheerful
" https://github.com/bleakwind/vim-cheerful
" ============================================================================
" AsyncRun
" https://github.com/skywind3000/asyncrun.vim
" ============================================================================
" NERDtree
" https://github.com/scrooloose/nerdtree
" ============================================================================
" MiniBufferExplorer
" https://github.com/fholgado/minibufexpl.vim
" ============================================================================
" Unite
" https://github.com/Shougo/unite.vim
" ----------------------------------------------------------------------------
" Unite-Neomru
" https://github.com/Shougo/neomru.vim
" ============================================================================
" FencView
" https://github.com/adah1972/fencview
" ============================================================================
" CssColor
" https://github.com/ap/vim-css-color
" ============================================================================
" MatchTagAlways (Need Python)
" https://github.com/Valloric/MatchTagAlways
" ============================================================================
" Emmet
" https://github.com/mattn/emmet-vim
" ============================================================================
" UltiSnips
" https://github.com/sirver/ultisnips
" ----------------------------------------------------------------------------
" Vim-Snippets
" https://github.com/honza/vim-snippets
" ============================================================================
" Vim-Auto-Popmenu
" Plugin 'skywind3000/vim-auto-popmenu'
" ----------------------------------------------------------------------------
" Vim-Dict
" Plugin 'skywind3000/vim-dict'
" ============================================================================

" ############################################################################
" Settings by Bleakwind
" ############################################################################
" ============================================================================
" Global Config
" ============================================================================
let g:config_plugin_on                    = 'on'
let g:config_nerdtree_bookmark            = []
let g:config_ultisnips_all                = []
let g:config_ultisnips_php                = []
let g:skip_defaults_vim                   = 1
let g:skip_loading_mswin                  = 1
if has('unix')
    let g:config_dir_tree                 = '/pub/'
    let g:config_dir_work                 = '/pub/project/'
    let g:config_dir_data                 = '/pub/_program/vim/data/'
    let g:config_debug_url                = 'http://localhost/'
    let g:config_debug_browser1           = 'chrome'
    let g:config_debug_browser2           = 'firefox'

    call add(g:config_nerdtree_bookmark,    '01./ /')
    call add(g:config_nerdtree_bookmark,    '02./pub /pub')
    call add(g:config_nerdtree_bookmark,    '03./mnt /mnt')
    call add(g:config_nerdtree_bookmark,    '04./usr/local/etc /usr/local/etc')
    call add(g:config_nerdtree_bookmark,    '10.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '11.project /pub/project')
    call add(g:config_nerdtree_bookmark,    '60.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '61.vimrc /usr/local/etc/vim')
    call add(g:config_nerdtree_bookmark,    '62.FreeBSD_Note.txt /pub/project/freebsd/FreeBSD_Note.txt')
    call add(g:config_nerdtree_bookmark,    '63.rc.conf /etc/rc.conf')
    call add(g:config_nerdtree_bookmark,    '64.resolv.conf /etc/resolv.conf')
    call add(g:config_nerdtree_bookmark,    '65.hosts /etc/hosts')
elseif has('mac')
    let g:config_dir_tree                 = '/pub/'
    let g:config_dir_work                 = '/pub/project/'
    let g:config_dir_data                 = '/pub/_program/vim/data/'
    let g:config_debug_url                = 'http://localhost/'
    let g:config_debug_browser1           = 'chrome'
    let g:config_debug_browser2           = 'firefox'

    call add(g:config_nerdtree_bookmark,    '01./ /')
    call add(g:config_nerdtree_bookmark,    '02./pub /pub')
    call add(g:config_nerdtree_bookmark,    '03./mnt /mnt')
    call add(g:config_nerdtree_bookmark,    '04./usr/local/etc /usr/local/etc')
    call add(g:config_nerdtree_bookmark,    '10.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '11.project /pub/project')
    call add(g:config_nerdtree_bookmark,    '60.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '61.vimrc /usr/local/etc/vim')
    call add(g:config_nerdtree_bookmark,    '62.FreeBSD_Note.txt /pub/project/freebsd/FreeBSD_Note.txt')
    call add(g:config_nerdtree_bookmark,    '63.rc.conf /etc/rc.conf')
    call add(g:config_nerdtree_bookmark,    '64.resolv.conf /etc/resolv.conf')
    call add(g:config_nerdtree_bookmark,    '65.hosts /etc/hosts')
elseif has('win64') || has('win32')
    let g:config_dir_tree                 = 'E:/project/'
    let g:config_dir_work                 = 'E:/project/'
    let g:config_dir_data                 = 'D:/Program Files/vim/data/'
    let g:config_debug_url                = 'http://localhost/'
    let g:config_debug_browser1           = 'start '.shellescape('C:/Program Files (x86)/Google/Chrome/Application/chrome.exe')
    let g:config_debug_browser2           = 'start '.shellescape('D:/Program Files/Firefox/firefox.exe')

    call add(g:config_nerdtree_bookmark,    '01.C: C:/')
    call add(g:config_nerdtree_bookmark,    '02.D: D:/')
    call add(g:config_nerdtree_bookmark,    '03.E: E:/')
    call add(g:config_nerdtree_bookmark,    '10.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '11.project E:/project')
    call add(g:config_nerdtree_bookmark,    '60.------------------------------ ~')
    call add(g:config_nerdtree_bookmark,    '61.vimrc D:/Program Files/Vim')
    call add(g:config_nerdtree_bookmark,    '62.FreeBSD_Note.txt E:/project/freebsd/FreeBSD_Note.txt')
    call add(g:config_nerdtree_bookmark,    '63.hosts C:/Windows/System32/drivers/etc/hosts')
    call add(g:config_nerdtree_bookmark,    '64.nginx.conf D:/SnowServer/Nginx1.8/conf/nginx.conf')
    call add(g:config_nerdtree_bookmark,    '65.httpd.conf D:/SnowServer/Apache2.4/conf/httpd.conf')
    call add(g:config_nerdtree_bookmark,    '66.php.ini D:/SnowServer/PHP7.0/php.ini')
    call add(g:config_nerdtree_bookmark,    '67.my.ini D:/SnowServer/MySQL5.7/my.ini')
    call add(g:config_nerdtree_bookmark,    '68.redis.windows-service.conf D:/SnowServer/Redis3.2/redis.windows-service.conf')
    call add(g:config_nerdtree_bookmark,    '70.phpmyadmin_config.inc.php E:/project/_tool/phpmyadmin/config.inc.php')
    call add(g:config_nerdtree_bookmark,    '71.phppgadmin_config.inc.php E:/project/_tool/phppgadmin/conf/config.inc.php')
endif

call add(g:config_ultisnips_all,            '')

call add(g:config_ultisnips_php,            '')

" ============================================================================
" Global Setting
" ============================================================================
set nocompatible
set tags=./.tags;,.tags
set wildignore+=*/.svn/*,*/.git/*
set guifontset=
if has('unix')
    set encoding=utf-8
    set backupdir=/pub/_program/vim/data/vim/backupdir/
    set viewdir=/pub/_program/vim/data/vim/viewdir/
    set undodir=/pub/_program/vim/data/vim/undodir/
    set directory=/pub/_program/vim/data/vim/swapdir//
elseif has('mac')
    set encoding=utf-8
    set backupdir=/pub/_program/vim/data/vim/backupdir/
    set viewdir=/pub/_program/vim/data/vim/viewdir/
    set undodir=/pub/_program/vim/data/vim/undodir/
    set directory=/pub/_program/vim/data/vim/swapdir//
elseif has('win64') || has('win32')
    set encoding=cp936
    set backupdir=D:/Program\ Files/vim/data/vim/backupdir/
    set viewdir=D:/Program\ Files/vim/data/vim/viewdir/
    set undodir=D:/Program\ Files/vim/data/vim/undodir/
    set directory=D:/Program\ Files/vim/data/vim/swapdir//
endif
if has('gui_running')
    if has('unix')
        set guifont=DejaVu\ Sans\ Mono\ 9
        set guifontwide=
    elseif has('mac')
        set guifont=DejaVu\ Sans\ Mono:h9
        set guifontwide=
    elseif has('win64') || has('win32')
        set guifont=DejaVu\ Sans\ Mono:h9
        set guifontwide=
    endif
endif

" ============================================================================
" Plugin List
" ============================================================================
" ----------------------------------------------------------------------------
filetype off
if has('unix')
    set runtimepath+=/pub/_program/vim/vimfiles/bundle/Vundle.vim
    call vundle#begin('/pub/_program/vim/vimfiles/bundle')
elseif has('mac')
    set runtimepath+=/pub/_program/vim/vimfiles/bundle/Vundle.vim
    call vundle#begin('/pub/_program/vim/vimfiles/bundle')
elseif has('win64') || has('win32')
    set runtimepath+=D:/Program\ Files/vim/vimfiles/bundle/Vundle.vim
    call vundle#begin('D:/Program Files/vim/vimfiles/bundle')
endif
" ----------------------------------------------------------------------------
Plugin 'VundleVim/Vundle.vim'
" ----------------------------------------------------------------------------
Plugin 'bleakwind/vim-colorful'
Plugin 'bleakwind/vim-cheerful'
" ----------------------------------------------------------------------------
Plugin 'skywind3000/asyncrun.vim'
" ----------------------------------------------------------------------------
Plugin 'scrooloose/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
" ----------------------------------------------------------------------------
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
" ----------------------------------------------------------------------------
Plugin 'adah1972/fencview'
Plugin 'ap/vim-css-color'
Plugin 'Valloric/MatchTagAlways'
Plugin 'mattn/emmet-vim'
" ----------------------------------------------------------------------------
Plugin 'sirver/ultisnips'
Plugin 'honza/vim-snippets'
" ----------------------------------------------------------------------------
Plugin 'skywind3000/vim-auto-popmenu'
Plugin 'skywind3000/vim-dict'
" ----------------------------------------------------------------------------
call vundle#end()
" ----------------------------------------------------------------------------

" ============================================================================
" System Setting
" ============================================================================
" Set Filetype
filetype on
filetype plugin on
filetype indent on

" Set Gui Option
"set guioptions-=m
set guioptions-=T
set guioptions-=l
set guioptions-=L
set guioptions+=r
set guioptions+=R
set guioptions+=b
set showtabline=1

" Set Character Encoding
set fileencoding=utf-8
set fileencodings=utf-8,utf-16,gbk,gb2312,gb18030,big5,latin1
set fileformat=unix
set fileformats=unix
set ambiwidth=double
set nobomb
set nobinary

" Set File Backup
set nobackup
set writebackup
set swapfile
set noautowrite
set updatecount=200

" Set Buffer
set browsedir=buffer
set noautochdir
set hidden

" Show Line Number
set number!
set numberwidth=5
set norelativenumber

" Set Folding
set foldenable
set foldmethod=marker
set foldcolumn=4
set foldnestmax=3
set foldlevel=3
set foldminlines=1

" Set Cursor
set cursorline
set cursorcolumn

" Set Text Style
set textwidth=0
set wrapmargin=0
set nowrap
set showbreak=
set colorcolumn=
set autoindent
set smartindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set synmaxcol=0
set iskeyword+=_,$,@,%,#,-
set selection=inclusive

" Set Undo
set undofile
set undolevels=1000
set undoreload=10000

" Set Key Wait
set timeout timeoutlen=1000
set nottimeout ttimeoutlen=-1

" Set Pattern
set magic
set nogdefault
set noignorecase
set nosmartcase

" Set Other
set autoread
set noconfirm
set hlsearch
set noshellslash
set equalalways
set helpheight=20
set mouse=a
set winaltkeys=no
set scrolljump=1
set scrolloff=9
set history=100
set wildmenu
set laststatus=2
set shortmess=atI
set completeopt=menuone
set fillchars=stl:\ ,stlnc:\ ,vert:\ ,fold:-,diff:-

" Set Term
"if !empty($TMUX)
    set termguicolors
"endif

" Set Keyboard
map     <C-Insert>      "+y:let @*=@+<CR>
map     <S-Insert>      "+p
imap    <S-Insert>      <Esc><S-Insert>a
cmap    <S-Insert>      <C-r>+

map     <MiddleMouse>   <LeftMouse>
imap    <MiddleMouse>   <LeftMouse>
vmap    <MiddleMouse>   <LeftMouse>
map     <2-MiddleMouse> <2-LeftMouse>
imap    <2-MiddleMouse> <2-LeftMouse>
vmap    <2-MiddleMouse> <2-LeftMouse>
map     <3-MiddleMouse> <3-LeftMouse>
imap    <3-MiddleMouse> <3-LeftMouse>
vmap    <3-MiddleMouse> <3-LeftMouse>
map     <4-MiddleMouse> <4-LeftMouse>
imap    <4-MiddleMouse> <4-LeftMouse>
vmap    <4-MiddleMouse> <4-LeftMouse>

" ============================================================================
" Initialize
" ============================================================================
" Clean Autocmd
autocmd!

" Full Screen
if has("gui_running")
    if has('unix')
        set lines=999
        set columns=9999
    elseif has('mac')
        set lines=999
        set columns=9999
    elseif has('win64') || has('win32')
        autocmd GUIEnter * simalt ~x
    endif
endif

" Check dir
let g:config_vimrc              = substitute(expand('<sfile>:p'), '\v[\/\\]+\c', '/', 'g')
let g:config_dir_tree           = substitute(g:config_dir_tree, '\v[\/\\]+\c', '/', 'g')
let g:config_dir_work           = substitute(g:config_dir_work, '\v[\/\\]+\c', '/', 'g')
let g:config_dir_data           = substitute(g:config_dir_data, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser1     = substitute(g:config_debug_browser1, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser2     = substitute(g:config_debug_browser2, '\v[\/\\]+\c', '/', 'g')

" ############################################################################
" Syntax Color by Bleakwind
" ############################################################################
" ----------------------------------------------------------------------------
" Red         LightRed        DarkRed
" Green       LightGreen      DarkGreen       SeaGreen
" Blue        LightBlue       DarkBlue        SlateBlue
" Cyan        LightCyan       DarkCyan
" Magenta     LightMagenta    DarkMagenta
" Yellow      LightYellow     Brown           DarkYellow
" Gray        LightGray       DarkGray
" Black       White
" Orange      Purple          Violet
" Bold, Underline, Undercurl, Reverse, Italic, Standout, NONE
" ----------------------------------------------------------------------------
" $str = '...'; preg_match_all('/(c[A-Z][a-zA-Z0-9_]*)[^a-zA-Z0-9_]/', $str, $matches); print_r(array_unique($matches[1]));
" $str = '...'; preg_match_all('/\s(hi|highlight)\s+(def\s+|default\s+|link\s+)*([a-zA-Z0-9_]*)\s/', $str, $matches); sort($matches[3]); print_r(array_values(array_unique($matches[3])));
" ----------------------------------------------------------------------------
syntax enable
syntax on
colorscheme colorful

" ============================================================================
" Color detail: StatusLine
" ============================================================================
hi link StatusLine_0                    StatusLine
hi StatusLine_1                         ctermfg=Green       ctermbg=DarkGreen   cterm=NONE        guifg=#A3D97D   guibg=#467623   gui=NONE
hi StatusLine_2                         ctermfg=Black       ctermbg=DarkGray    cterm=NONE        guifg=#59647A   guibg=#171c22   gui=NONE
hi StatusLine_3                         ctermfg=DarkGreen   ctermbg=Gray        cterm=NONE        guifg=#006400   guibg=#1D2228   gui=NONE
hi StatusLine_4                         ctermfg=Blue        ctermbg=LightGray   cterm=NONE        guifg=#1E5791   guibg=#21252b   gui=NONE
hi StatusLine_5                         ctermfg=Red         ctermbg=LightGray   cterm=NONE        guifg=#A2000C   guibg=#171C22   gui=NONE
hi StatusLine_6                         ctermfg=DarkGreen   ctermbg=LightGray   cterm=NONE        guifg=#006400   guibg=#171C22   gui=NONE
hi StatusLine_7                         ctermfg=Blue        ctermbg=LightGray   cterm=NONE        guifg=#1E5791   guibg=#171C22   gui=NONE
hi StatusLine_8                         ctermfg=Red         ctermbg=LightGray   cterm=NONE        guifg=#A2000C   guibg=#171C22   gui=NONE
" ============================================================================
" Color detail: Buffer
" ============================================================================
hi BufferNormal                         ctermfg=Black       ctermbg=DarkGray    cterm=NONE        guifg=#59647A   guibg=#282c34   gui=NONE
hi BufferChanged                        ctermfg=DarkRed     ctermbg=DarkGray    cterm=NONE        guifg=#A2000C   guibg=#282c34   gui=NONE
hi BufferVisibleNormal                  ctermfg=Black       ctermbg=LightGray   cterm=NONE        guifg=#59647A   guibg=#21252b   gui=NONE
hi BufferVisibleChanged                 ctermfg=DarkRed     ctermbg=LightGray   cterm=NONE        guifg=#A2000C   guibg=#21252b   gui=NONE
hi BufferVisibleActiveNormal            ctermfg=Black       ctermbg=White       cterm=NONE        guifg=#A3D97D   guibg=#171C22   gui=NONE
hi BufferVisibleActiveChanged           ctermfg=Red         ctermbg=White       cterm=NONE        guifg=#FF939C   guibg=#171C22   gui=NONE

" ############################################################################
" --- Plugin Manage Begin ---
" ############################################################################
if g:config_plugin_on == 'on'

" ############################################################################
" Function List Define by Bleakwind
" ############################################################################
" ============================================================================
" Variable for g:config
" ============================================================================
let g:config_builddir                                   = {}
let g:config_builddir['root']                           = g:config_dir_data
let g:config_builddir['vim']                            = g:config_dir_data.'vim'
let g:config_builddir['vim_backupdir']                  = g:config_dir_data.'vim/backupdir'
let g:config_builddir['vim_viewdir']                    = g:config_dir_data.'vim/viewdir'
let g:config_builddir['vim_undodir']                    = g:config_dir_data.'vim/undodir'
let g:config_builddir['vim_swapdir']                    = g:config_dir_data.'vim/swapdir'
let g:config_builddir['php']                            = g:config_dir_data.'php'
let g:config_builddir['nerdtree']                       = g:config_dir_data.'nerdtree'
let g:config_builddir['unite']                          = g:config_dir_data.'unite'
let g:config_builddir['unite_bookmark']                 = g:config_dir_data.'unite/bookmark'
let g:config_builddir['unite_file_rec']                 = g:config_dir_data.'unite/file_rec'
let g:config_builddir['unite_file_rec_file']            = g:config_dir_data.'unite/file_rec/file'
let g:config_builddir['neomru']                         = g:config_dir_data.'neomru'
let g:config_builddir['ultisnips']                      = g:config_dir_data.'ultisnips'
let g:config_builddir['cheerful_reopen_dir']            = g:config_dir_data.'cheerful'

let g:config_buildfile                                  = {}
let g:config_buildfile['php_runscript']                 = g:config_dir_data.'php/runscript.php'
let g:config_buildfile['php_runscript_input']           = g:config_dir_data.'php/runscript_input.php'
let g:config_buildfile['nerdtree_bookmark']             = g:config_dir_data.'nerdtree/bookmark'
let g:config_buildfile['neomru_neomru_file']            = g:config_dir_data.'neomru/neomru_file'
let g:config_buildfile['neomru_neomru_directory']       = g:config_dir_data.'neomru/neomru_directory'
let g:config_buildfile['ultisnips_all']                 = g:config_dir_data.'ultisnips/all.snippets'
let g:config_buildfile['ultisnips_php']                 = g:config_dir_data.'ultisnips/php.snippets'

let g:config_builddata                                  = {}
let g:config_builddata['php_runscript']                 = []
let g:config_builddata['php_runscript_input']           = []
let g:config_builddata['nerdtree_bookmark']             = g:config_nerdtree_bookmark
let g:config_builddata['neomru_neomru_file']            = []
let g:config_builddata['neomru_neomru_directory']       = []
let g:config_builddata['ultisnips_all']                 = g:config_ultisnips_all
let g:config_builddata['ultisnips_php']                 = g:config_ultisnips_php

" ============================================================================
" Variable for g:set_tool
" ============================================================================
let g:cheerful_set_name                                 = {}
let g:cheerful_set_type                                 = {}
let g:cheerful_set_part                                 = {}
let g:cheerful_set_nocur                                = {}
let g:cheerful_set_stay                                 = {}
let g:cheerful_set_size                                 = {}
let g:cheerful_set_open                                 = {}
let g:cheerful_set_close                                = {}

let g:cheerful_set_name['nerdtree']                     = 'nerdtree'
let g:cheerful_set_type['nerdtree']                     = 'nerdtree'
let g:cheerful_set_part['nerdtree']                     = 'tree'
let g:cheerful_set_nocur['nerdtree']                    = 0
let g:cheerful_set_stay['nerdtree']                     = 0
let g:cheerful_set_size['nerdtree']                     = 30
let g:cheerful_set_open['nerdtree']                     = 'NERDTreeToggle'
let g:cheerful_set_close['nerdtree']                    = 'NERDTreeToggle'

let g:cheerful_set_name['minibufexpl']                  = 'minibufexpl'
let g:cheerful_set_type['minibufexpl']                  = 'minibufexpl'
let g:cheerful_set_part['minibufexpl']                  = 'tab'
let g:cheerful_set_nocur['minibufexpl']                 = 1
let g:cheerful_set_stay['minibufexpl']                  = 0
let g:cheerful_set_size['minibufexpl']                  = 1
let g:cheerful_set_open['minibufexpl']                  = 'MBEOpen'
let g:cheerful_set_close['minibufexpl']                 = 'MBEClose'

let g:cheerful_set_name['quickfix']                     = 'quickfix'
let g:cheerful_set_type['quickfix']                     = 'qf'
let g:cheerful_set_part['quickfix']                     = 'debug'
let g:cheerful_set_nocur['quickfix']                    = 1
let g:cheerful_set_stay['quickfix']                     = 0
let g:cheerful_set_size['quickfix']                     = 10
let g:cheerful_set_open['quickfix']                     = 'botright copen '.g:cheerful_set_size['quickfix']
let g:cheerful_set_close['quickfix']                    = 'cclose'

let g:cheerful_set_name['unite']                        = 'unite'
let g:cheerful_set_type['unite']                        = 'unite'
let g:cheerful_set_part['unite']                        = 'info'
let g:cheerful_set_nocur['unite']                       = 0
let g:cheerful_set_stay['unite']                        = 1
let g:cheerful_set_size['unite']                        = 110
let g:cheerful_set_open['unite']                        = 'Unite'
let g:cheerful_set_close['unite']                       = 'close'

" ============================================================================
" Variable for g:set_other
" ============================================================================
let g:set_command_list                                  = {}
let g:set_command_list['tab_prev']                      = 'MBEbp'
let g:set_command_list['tab_next']                      = 'MBEbn'
let g:set_command_list['file_locate']                   = 'NERDTreeFind'

let g:set_php_list                                      = {}
let g:set_php_list['vimrc']                             = ''
let g:set_php_list['funlist']                           = []
let g:set_php_list['fundata']                           = {}

let g:set_statusline                                    = {}
let g:set_statusline['except']                          = ['help']
let g:set_statusline['modelist']                        = {"n"      : 'NORMAL',
                                                         \ "no"     : 'OPERATOR-PENDING',
                                                         \ "v"      : 'VISUAL',
                                                         \ "V"      : 'VISUAL-LINE',
                                                         \ "\<C-V>" : 'VISUAL-BLOCKWISE',
                                                         \ "s"      : 'SELECT',
                                                         \ "S"      : 'SELECT-LINE',
                                                         \ "\<C-S>" : 'SELECT-BLOCKWISE',
                                                         \ "i"      : 'INSERT',
                                                         \ "R"      : 'REPLACE',
                                                         \ "Rv"     : 'REPLACE-VIRTUAL',
                                                         \ "c"      : 'COMMAND',
                                                         \ "cv"     : 'EX-VIM',
                                                         \ "ce"     : 'EX-NORMAL',
                                                         \ "r"      : 'ENTER',
                                                         \ "rm"     : 'MORE',
                                                         \ "r?"     : 'CONFIRM',
                                                         \ "!"      : 'EXTERNAL'}

" ============================================================================
" Function for Public
" ============================================================================
function! CheckConfig()
    if exists('g:config_builddir')
        for l:key in keys(g:config_builddir)
            if filewritable(g:config_builddir[l:key]) != 2
                call mkdir(g:config_builddir[l:key], 'p', 0777)
            endif
        endfor
    endif
    if exists('g:config_buildfile')
        for l:key in keys(g:config_buildfile)
            if filewritable(g:config_buildfile[l:key]) != 1
                call writefile([], g:config_buildfile[l:key], 'b')
                if has_key(g:config_builddata, l:key)
                    call writefile(g:config_builddata[l:key], g:config_buildfile[l:key], 'b')
                endif
                call setfperm(g:config_buildfile[l:key], 'rwxrwxrwx')
            endif
        endfor
    endif
endfunction

function! ReturnVisual()
    let l:check_selection   = &selection == 'exclusive' ? 2 : 1
    let l:content           = []
    let [l:lnum1, l:col1]   = getpos("'<")[1:2]
    let [l:lnum2, l:col2]   = getpos("'>")[1:2]
    if l:lnum1 > 0 && l:lnum2 > 0
        let l:content   = getline(l:lnum1, l:lnum2)
        let l:char_add  = 0
        let l:char_get  = char2nr(l:content[0][l:col2-1:l:col2-1])
        if l:char_get < 32 || l:char_get >126
            let l:char_add = l:char_add + 2
        endif
        if l:lnum1 == l:lnum2
            let l:content[0]    = l:content[0][l:col1-1:l:col2-l:check_selection+l:char_add]
        else
            let l:content[0]    = l:content[0][l:col1-1:]
            let l:content[-1]   = l:content[-1][:l:col2-l:check_selection+l:char_add]
        endif
    endif
    let l:result = join(l:content, "\n")
    return l:result
endfunction

function! ProceSlashes(...)
    let l:result_str = ''
    if exists('a:1')
        if a:1 == 'retstr'
            let l:result_str = '\`\~\!\@\#\$\%\^\&\+\-\=\(\)\[\]\{\}\,\.\;\''\/\:\|\\\"\*\?\<\>'
        elseif a:1 == 'retfile'
            let l:result_str = '\`\~\!\@\#\$\%\^\&\+\-\=\(\)\[\]\{\}\,\.\;\'''
        elseif a:1 == 'string'
            if exists('a:2')
                let l:result_str = escape(a:2, '`~!@#$%^&+-=()[]{},.;''/:|\"*?<>')
            endif
        elseif a:1 == 'filename'
            if exists('a:2')
                let l:result_str = escape(a:2, '`~!@#$%^&+-=()[]{},.;''')
            endif
        else
            if exists('a:2')
                let l:result_str = a:2
            endif
        endif
    endif
    return l:result_str
endfunction

" ============================================================================
" Function for Buffer
" ============================================================================
function! BufferNew()
    call OperateJump()
    exe 'ene'
endfunction

function! BufferClose()
    call OperateJump()
    if count(g:cheerful_set_type, &filetype) > 0
        echohl ErrorMsg | echo "Error: You can't close this window..." | echohl None
    elseif &modified == 1
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        let l:bufnum_original = bufnr('%')
        exe g:set_command_list['tab_next']
        if l:bufnum_original == bufnr('%') && empty(bufname('%'))
            echohl WarningMsg | echo "Warning: You already closed all buffer..." | echohl None
        elseif l:bufnum_original == bufnr('%')
            exe 'ene'
            exe l:bufnum_original.' bw'
        else
            exe l:bufnum_original.' bw'
        endif
    endif
endfunction

function! BufferSwitch(ope)
    call OperateJump()
    if (a:ope == 'next')
        exe g:set_command_list['tab_next']
    elseif (a:ope == 'prev')
        exe g:set_command_list['tab_prev']
    endif
endfunction

" ============================================================================
" Function for File
" ============================================================================
function! FileLocate()
    call OperateJump()
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Error: This file is not save yet..." | echohl None
    else
        exe g:set_command_list['file_locate']
    endif
endfunction

function! FileEncoding()
    let l:encoding_list             = split(&fileencodings, ',')
    let l:encoding_list_len         = len(l:encoding_list)
    let l:encoding_select           = ["Please select your encoding for this file..."]
    let l:other_list                = {}
    let l:other_select              = {}
    let l:other_list['del_bom']     = l:encoding_list_len+1
    let l:other_select['del_bom']   = l:other_list['del_bom'].": > Delete BOM"
    let l:other_list['add_bom']     = l:encoding_list_len+2
    let l:other_select['add_bom']   = l:other_list['add_bom'].": > Add BOM"
    let l:i = 1
    while l:i <= l:encoding_list_len
        call add(l:encoding_select, l:i.': '.l:encoding_list[l:i-1])
        let l:i = l:i+1
    endwhile
    for l:item in values(l:other_select)
        call add(l:encoding_select, l:item)
    endfor
    let l:input_list = inputlist(l:encoding_select)
    if l:input_list > 0 && l:input_list <= l:encoding_list_len
        exe 'edit ++enc='.l:encoding_list[l:input_list-1].' '.fnameescape(substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g'))
        exe 'setlocal noreadonly'
    elseif l:input_list == l:other_list['del_bom']
        exe 'setlocal nobomb'
    elseif l:input_list == l:other_list['add_bom']
        exe 'setlocal bomb'
    endif
endfunction

function! FileSave()
    call OperateJump()
    let l:result_winview = winsaveview()

    exe '%s/\t/    /ge'
    exe '%s/\s\+$//ge'
    exe '%s/\r\n/\r/ge'
    exe '%s/\n\r/\r/ge'
    if substitute(expand("%:t"), '\v([^\.]*)\..*\c', '\=submatch(1)', 'g') == "config" && &filetype == "php"
        set fileformat=dos
        exe '%s/\r/\r\n/ge'
        let l:original_line = line('.')
        let l:original_col  = col('.')
        let l:line_last     = line('$')
        while getline(l:line_last) =~ '\v^[\s\r\n]*$\c'
            call cursor(l:line_last, 1)
            if line('.') == l:line_last
                exe 'd'
                if l:line_last == 1
                    break
                endif
                let l:line_last = line('$')
            endif
        endwhile
        call cursor(l:original_line, l:original_col)
    else
        set fileformat=unix
    endif

    exe '%s/^\(\s*\)\(if\|for\|foreach\|while\)\(\|\s\{2,\}\)(/\1\2 (/ge'

    exe '%s/^\(\s*\)}\(elseif\|else\s*if\)\(\s\{0,\}\)(/\1} \2 (/ge'
    exe '%s/^\(\s*\)}\(\s\{0,\}\)\(elseif\|else\s*if\)(/\1} \3 (/ge'

    exe '%s/^\(\s*\)}\(else\)\(\s\{0,\}\){/\1} \2 {/ge'
    exe '%s/^\(\s*\)}\(\s\{0,\}\)\(else\){/\1} \2 {/ge'

    exe '%s/)\(\|\s\{2,\}\){$/) {/ge'

    call winrestview(l:result_winview)
    let l:file_copyright = FileCopyright()
    if empty(bufname('%'))
        let l:input_prompt_default  = "Please input path and filename for this file...\nFilename: "
        let l:input_prompt_again    = "\nFilename error, please input path and filename again...\nFilename: "
        let l:input_prompt_mkdir    = "\nCan't create dir, please check your path and try again..."
        let l:result_mkdir          = 1
        let l:input_path_default    = substitute(expand("%:p:h").'/', '\v[\/\\]+\c', '/', 'g')
        let l:input_content         = input(l:input_prompt_default, l:input_path_default, 'file')
        while l:input_content !~ '\v^[a-zA-Z0-9_'.ProceSlashes('retfile').'\/\:]+$\c'
            let l:input_content = input(l:input_prompt_again, l:input_path_default, 'file')
        endwhile
        let l:input_content     = substitute(l:input_content, '\v[\/\\]+\c', '/', 'g')
        let l:input_path_real   = strpart(l:input_content, 0, strridx(l:input_content, '/'))
        if filewritable(l:input_path_real) != 2
            let l:result_mkdir  = mkdir(l:input_path_real, 'p', 0755)
        endif
        if l:result_mkdir != 1
            echohl ErrorMsg | echo l:input_prompt_mkdir | echohl None
        else
            exe 'w '.fnameescape(l:input_content)
        endif
    else
        if empty(l:file_copyright)
            exe 'w'
        else
            echohl WarningMsg | echo l:file_copyright | echohl None
            silent exe 'w'
        endif
    endif
    call MakeCheck()
endfunction

function! FileCopyright(...)
    let l:cr_nickname           = 'Bleakwind'
    let l:cr_fullname           = 'Rick Wu'
    let l:cr_mailaddr           = 'bleakwind@qq.com'
    let l:cr_datetime           = strftime("%Y-%m-%d %H:%M:%S")
    let l:cr_filename           = expand("%:t")
    let l:cr_dateyear           = strftime("%Y")
    let l:cr_cpywidth           = 78
    let l:cr_progtype           = ['<?php', '<%asp']

    let l:if_update_datetime    = 0
    let l:if_update_filename    = 0
    let l:if_update_copydate    = 0
    let l:if_copyright          = 0
    let l:if_mine               = 0
    let l:original_line         = line('.')
    let l:original_col          = col('.')
    let l:line_total            = line('$')
    let l:line_copyright        = 0
    let l:line_program          = 0
    let l:prompt_item           = []
    let l:result_prompt         = ''

    if l:cr_cpywidth < 75
        let l:cr_cpywidth = 78
    endif

    let l:cr_progtype = map(l:cr_progtype, 'ProceSlashes(''string'', v:val)')

    call cursor(1, 1)
    let l:i = 1
    while l:i < l:line_total
        let l:content = getline(l:i)
        if l:content =~ '\v^\s*(\/\*|\*|\+|\|).*$\c'
            if l:content =~ '\v^.*\$Id\:.*'.ProceSlashes('string', l:cr_nickname).'.*\$\s*[^\s]+$\c'
                let l:if_mine = 1
            endif
            let l:if_copyright = 1
            let l:i = l:i+1
        elseif l:content =~ '\v^\s*('.join(l:cr_progtype, "|").').*$\c'
            if l:line_program == 0
                let l:line_program = l:i
            endif
            let l:i = l:i+1
        elseif l:content =~ '\v^(\s*)$\c'
            let l:i = l:i+1
        else
            break
        endif
    endwhile
    if l:i > 1
        let l:line_copyright = l:i-1
    endif

    if exists('a:1') && (a:1 == 'add' || a:1 == 1)
        if l:if_copyright != 1
            if l:line_program > 0
                call cursor(l:line_program+1, 1)
            else
                call cursor(1, 1)
            endif
            let l:add_copyright = []
            call add(l:add_copyright, "/* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4: */")
            call add(l:add_copyright, "/**")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------+")
            call add(l:add_copyright, " * | $Id: ".l:cr_filename." ".l:cr_datetime." ".l:cr_nickname." Exp $      ".        repeat(" ", l:cr_cpywidth-strlen(l:cr_filename.l:cr_datetime.l:cr_nickname)-25)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------+")
            call add(l:add_copyright, " * | Copyright (c) 2008-".l:cr_dateyear." ".l:cr_nickname."(".l:cr_fullname.").".    repeat(" ", l:cr_cpywidth-strlen(l:cr_dateyear.l:cr_nickname.l:cr_fullname)-29)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------+")
            call add(l:add_copyright, " * | This source file is ".l:cr_filename.".                                ".        repeat(" ", l:cr_cpywidth-strlen(l:cr_filename)-59)."|")
            call add(l:add_copyright, " * | This source file is release under private license. If you did not     ".        repeat(" ", l:cr_cpywidth-76)."|")
            call add(l:add_copyright, " * | receive an authorize of the our license and are unable to obtain it,  ".        repeat(" ", l:cr_cpywidth-76)."|")
            call add(l:add_copyright, " * | please send an email to ".l:cr_mailaddr." and get an authorize.       ".        repeat(" ", l:cr_cpywidth-strlen(l:cr_mailaddr)-59)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------+")
            call add(l:add_copyright, " * | Author: ".l:cr_nickname."(".l:cr_fullname.")"." <".l:cr_mailaddr.">   ".        repeat(" ", l:cr_cpywidth-strlen(l:cr_nickname.l:cr_fullname.l:cr_mailaddr)-22)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------+")
            call add(l:add_copyright, " */")
            call add(l:add_copyright, "")
            call append(l:line_program, l:add_copyright)
            echohl WarningMsg | echo "Successful: Add Copyright successful..." | echohl None
        else
            echohl ErrorMsg | echo "Ignored: Already have copyright..." | echohl None
        endif
    else
        if l:if_copyright == 1 && l:if_mine == 1
            call cursor(1, 1)
            let l:i = 1
            while l:i < l:line_copyright
                let l:content = getline(l:i)
                if l:content =~ '\v^.*\$Id\:.*\$\s*[^\s]+$\c'
                    let l:content_new = substitute(l:content, '\v\$Id\:.*\$\s*\c', '\="$Id: ".l:cr_filename." ".l:cr_datetime." ".l:cr_nickname." Exp $ ".repeat(" ", strlen(submatch(0))-strlen(l:cr_filename.l:cr_datetime.l:cr_nickname)-14)', 'g')
                    "silent! exe 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_filename = 1
                    call add(l:prompt_item, 'Filename')
                    let l:if_update_datetime = 1
                    call add(l:prompt_item, 'Datetime')
                elseif l:content =~ '\v^.*Copyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\.]+\.\s*[^\s]+$\c'
                    let l:content_new = substitute(l:content, '\vCopyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\.]+\.\s*\c', '\="Copyright (c) ".submatch(1)."-".l:cr_dateyear." ".l:cr_nickname."(".l:cr_fullname.").".repeat(" ", strlen(submatch(0))-strlen(l:cr_dateyear.l:cr_nickname.l:cr_fullname)-23)', 'g')
                    "silent! exe 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_copydate = 1
                    call add(l:prompt_item, 'Copydate')
                endif
                let l:i = l:i+1
            endwhile
            if l:if_update_datetime == 1 || l:if_update_filename == 1 || l:if_update_copydate == 1
                let l:result_prompt = "Successful: Update ".join(l:prompt_item, ",")." successful..."
            endif
        endif
    endif

    call cursor(l:original_line, l:original_col)
    return l:result_prompt
endfunction
command! -nargs=? Copyright :call FileCopyright(<q-args>)

" ============================================================================
" Function for Quickfix
" ============================================================================
function! QuickfixPrev()
    call OperateJump()
    exe 'cp'
endfunction

function! QuickfixNext()
    call OperateJump()
    exe 'cn'
endfunction

function! QuickfixHi()
    call OperateJump()
    let g:env_qfmatch = []
    let l:qflist = getqflist()
    for l:val in l:qflist
       call add(g:env_qfmatch, matchadd('Error', '\%'.l:val['lnum'].'l'))
    endfor
endfunction

function! QuickfixNohi()
    call OperateJump()
    if exists('g:env_qfmatch') && !empty(g:env_qfmatch)
        for l:val in g:env_qfmatch
           call matchdelete(l:val)
        endfor
        let g:env_qfmatch = []
    endif
endfunction

function! MakeDebug()
    call OperateJump()
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        call OperateTool('quickfix', 'open')
        call MakeCheck()
        if &filetype == 'c'
            let l:work_file = substitute(expand("%:p:r"), '\v[\/\\]+\c', '/', 'g')
            if filewritable(l:work_file) == 1
                exe '!time '.shellescape(l:work_file)
            endif
        elseif &filetype == 'php'
            "...
        else
            echohl ErrorMsg | echo "Error: This file type debug is not supported..." | echohl None
        endif
    endif
endfunction

function! MakeCheck()
    call OperateJump()
    if &filetype == 'c'
        call MakeC()
    elseif &filetype == 'php'
        call MakePHP()
    endif
    "call QuickfixHi()
endfunction

function! MakeC()
    setlocal makeprg=cc
    setlocal errorformat=%+G%.%#
    silent make -o %< %
    setlocal makeprg=
    setlocal errorformat=
endfunction

function! MakePHP()
    setlocal makeprg=php\ -d\ html_errors=Off\ -l
    setlocal errorformat=%+E%.%#Parse\ error:\ %m\ in\ %f\ on\ line\ %l%.%#,
                        \%+W%.%#Fatal\ error:\ %m\ in\ %f\ on\ line\ %l%.%#,
                        \%+W%.%#Deprecated:\ %m\ in\ %f\ on\ line\ %l%.%#,
                        \%+W%.%#Notice:\ %m\ in\ %f\ on\ line\ %l%.%#,
                        \%+W%.%#:\ %m\ in\ %f\ on\ line\ %l%.%#,
                        \%-G%.%#
    silent make %
    setlocal makeprg=
    setlocal errorformat=
endfunction

function! MakeBrowser(type)
    call OperateJump()
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        let l:system_browser = {
            \   'chrome'    : g:config_debug_browser1,
            \   'firefox'   : g:config_debug_browser2,
            \ }
        let l:work_file = substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g')
        setlocal noshellslash
        if stridx(l:work_file, g:config_dir_work) == -1
            silent exe '!'.l:system_browser[a:type].' '.shellescape('file:///'.l:work_file)
        else
            let l:work_file = substitute(l:work_file, '\v'.ProceSlashes('string', g:config_dir_work).'\c', g:config_debug_url, '')
            silent exe '!'.l:system_browser[a:type].' '.shellescape(l:work_file)
        endif
        setlocal shellslash<
    endif
endfunction

" ============================================================================
" Function for RunPHP
" ============================================================================
function! ReturnVimrc()
    let g:set_php_list['vimrc'] = join(readfile(g:config_vimrc, 'b'), "\n")
    return
endfunction

function! RunPHPAddfun(code_funname)
    call add(g:set_php_list['funlist'], a:code_funname)
endfunction

function! RunPHPBuildfun()
    call ReturnVimrc()
    for l:item in g:set_php_list['funlist']
        let l:script_content = []
        call add(l:script_content, '<?php')
        let l:script_add = substitute(g:set_php_list['vimrc'], '\v.*function\s*'.l:item.'\(\.\.\.\)\s*\n(.{-})\n\s*endfunction.*\c', '\=submatch(1)', 'g')
        let l:script_add = substitute(l:script_add, '\v.*\"\s*php\s*\<\<\s*EOF\s*(.{-})\s*\"\s*EOF.*\c', '\=submatch(1)', 'g')
        let l:script_add = substitute(l:script_add, '\v(\n)\s*\"\c', '\=submatch(1)', 'g')
        let l:script_add = split(l:script_add, '\n')
        call extend(l:script_content, l:script_add)
        call add(l:script_content, '?>')
        let g:set_php_list['fundata'][l:item] = l:script_content
    endfor
endfunction

function! RunPHPVisual(code_funname, code_param)
    let l:content = []
    call writefile(l:content, g:config_dir_data."php/runscript.php", 'b')
    call writefile(l:content, g:config_dir_data."php/runscript_input.php", 'b')
    let [l:lnum1, l:col1] = getpos("'<")[1:2]
    let [l:lnum2, l:col2] = getpos("'>")[1:2]
    if l:lnum1 > 0 && l:lnum2 > 0
        let l:content = getline(l:lnum1, l:lnum2)
        call writefile(g:set_php_list['fundata'][a:code_funname], g:config_dir_data."php/runscript.php", 'b')
        call writefile(l:content, g:config_dir_data."php/runscript_input.php", 'b')
        setlocal noshellslash
        let l:result = system('php -d html_errors=Off -f '.shellescape(g:config_dir_data.'php/runscript.php').' '.shellescape(g:config_dir_data.'php/runscript_input.php').' '.shellescape(a:code_param))
        setlocal shellslash<
        exe l:lnum1.','.l:lnum2.'d'
        call setpos('.', [0, l:lnum1-1, 1, 0])
        call append(line('.'), split(l:result, '[\n\r]', '1'))
    endif
endfunction

function! RphpVlistBlock(...)
    let l:code_funname = 'RphpVlistBlock'
    "php << EOF
    "$result_content     = "";
    "$input_content      = file_get_contents($argv[1]);
    "$input_param        = $argv[2];
    "$content_match      = preg_match("/^([\t ]*)[^\t ]/i", $input_content, $begin_space);
    "$content_split      = preg_split("/\s*,\s*/i", $input_content);
    "if ($content_match) {
    "    $begin_space        = $begin_space[1];
    "    $begin_space_len    = strlen($begin_space);
    "} else {
    "    $begin_space        = "";
    "    $begin_space_len    = 0;
    "}
    "$content_split[0]   = trim($content_split[0]);
    "if (is_array($content_split) && count($content_split) > 0) {
    "    $content_split_maxlen = 0;
    "    foreach($content_split as $k => $v) {
    "        $content_thislen = strlen($v);
    "        $content_split_maxlen = $content_thislen > $content_split_maxlen ? $content_thislen : $content_split_maxlen;
    "    }
    "    $content_maxlen = ceil(($begin_space_len+$content_split_maxlen+3)/4)*4;
    "    foreach($content_split as $k => $v) {
    "        $content_thislen = $content_maxlen-($begin_space_len+strlen($v)+2);
    "        $result_content .= "\n".$begin_space."'".$v."'".str_repeat(" ", $content_thislen)."=> \$db_data_record['".$v."'],";
    "    }
    "    $result_content = substr($result_content, 1);
    "}
    "echo $result_content;
    "EOF
    return RunPHPVisual(l:code_funname, (exists('a:1') ? a:1 : ''))
endfunction
call RunPHPAddfun('RphpVlistBlock')
command! -nargs=? RphpVlistBlock :call RphpVlistBlock(<q-args>)

function! RphpVlistAlign(...)
    let l:code_funname = 'RphpVlistAlign'
    "php << EOF
    "$result_content     = "";
    "$input_content      = file_get_contents($argv[1]);
    "$input_param        = $argv[2];
    "$content_match      = preg_match("/^([\t ]*)[^\t ]/i", $input_content, $begin_space);
    "$content_split      = preg_split("/\n/i", $input_content);
    "if ($content_match) {
    "    $begin_space        = $begin_space[1];
    "    $begin_space_len    = strlen($begin_space);
    "} else {
    "    $begin_space        = "";
    "    $begin_space_len    = 0;
    "}
    "if (is_array($content_split) && count($content_split) > 0) {
    "    $content_split_maxlen = 0;
    "    foreach($content_split as $k => $v) {
    "        $content_match = preg_match("/^\s*([^=]+)\s*=(.*)$/i", $v, $matches);
    "        if ($content_match) {
    "            $content_thislen = strlen(trim($matches[1]));
    "            $content_split_maxlen = $content_thislen > $content_split_maxlen ? $content_thislen : $content_split_maxlen;
    "        }
    "    }
    "    $content_maxlen = ceil(($begin_space_len+$content_split_maxlen+1)/4)*4;
    "    foreach($content_split as $k => $v) {
    "        $content_match = preg_match("/^\s*([^=]+)\s*=(.*)$/i", $v, $matches);
    "        if ($content_match) {
    "            $content_thislen = $content_maxlen-($begin_space_len+strlen(trim($matches[1])));
    "            $result_content .= "\n".$begin_space.trim($matches[1]).str_repeat(" ", $content_thislen)."=".$matches[2];
    "        } else {
    "            $result_content .= "\n".$begin_space.trim($v);
    "        }
    "    }
    "    $result_content = substr($result_content, 1);
    "}
    "echo $result_content;
    "EOF
    return RunPHPVisual(l:code_funname, (exists('a:1') ? a:1 : ''))
endfunction
call RunPHPAddfun('RphpVlistAlign')
command! -nargs=? RphpVlistAlign :call RphpVlistAlign(<q-args>)

" Autocmd
autocmd VimEnter * call RunPHPBuildfun()

" ============================================================================
" Function for Statusline
" ============================================================================
function! StatuslineDetect(...)
    " statusline
    if (exists('a:1') && a:1 == 'statusline_filelist')
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[Filelist]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
        return &statusline
    elseif (exists('a:1') && a:1 == 'statusline_bufferlist')
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[Bufferlist]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_7#\ [*:%{len(filter(range(1,bufnr('$')),'buflisted(v:val)'))}]%#StatusLine_7#
        setlocal statusline+=%#StatusLine_8#%{len(filter(range(1,bufnr('$')),'getbufvar(v:val,''&modified'')'))>0?'\ [+:'.len(filter(range(1,bufnr('$')),'getbufvar(v:val,''&modified'')')).']':''}%#StatusLine_8#
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %12.(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %8.P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
        return &statusline
    elseif (exists('a:1') && a:1 == 'statusline_taglist')
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[Taglist]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[filename]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
        return &statusline
    elseif (empty(&filetype) && empty(bufname('%'))) || (!empty(&filetype) && count(g:cheerful_set_type, &filetype) == 0 && count(g:set_statusline['except'], &filetype) == 0)
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_1#\ %{(has_key(g:set_statusline['modelist'],mode())?g:set_statusline['modelist'][mode()]:mode())}\ %#StatusLine_1#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_2#\ %F\ %#StatusLine_2#
        setlocal statusline+=%#StatusLine_3#\ %{(!empty(&filetype)?&filetype:'unkonw')}\ %#StatusLine_3#
        setlocal statusline+=%#StatusLine_4#\ %{(&fileencoding).(&bomb?',BOM':'').(':'.&fileformat)}\ %#StatusLine_4#
        setlocal statusline+=%#StatusLine_5#\ %r%m\ %#StatusLine_5#
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %([%b\ 0x%B]%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %12.(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %8.P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
    elseif (!empty(&filetype) && &filetype == 'qf')
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[Quickfix]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_7#%{exists('w:quickfix_title')?'\ ['.w:quickfix_title.']':''}%#StatusLine_7#
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %([%b\ 0x%B]%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %12.(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %8.P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
    elseif (!empty(&filetype) && &filetype == 'unite')
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#[Unite]%#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_0#\ %{(has_key(g:set_statusline['modelist'],mode())?g:set_statusline['modelist'][mode()]:mode())}\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
    elseif (!empty(&filetype) && count(g:set_statusline['except'], &filetype) > 0)
        setlocal  statusline=%#StatusLine_0#
        setlocal statusline+=%#StatusLine_2#\ %F\ %#StatusLine_2#
        setlocal statusline+=%#StatusLine_0#%<
        setlocal statusline+=%#StatusLine_3#\ %{(!empty(&filetype)?&filetype:'unkonw')}\ %#StatusLine_3#
        setlocal statusline+=%#StatusLine_4#\ %{(&fileencoding).(&bomb?',BOM':'').(':'.&fileformat)}\ %#StatusLine_4#
        setlocal statusline+=%#StatusLine_5#\ %r%m\ %#StatusLine_5#
        setlocal statusline+=%#StatusLine_0#\ %=\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %([%b\ 0x%B]%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %12.(%l,%c%V%)\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#\ %8.P\ %#StatusLine_0#
        setlocal statusline+=%#StatusLine_0#
    endif
    " diff
    "if &diff
    "    setlocal nocursorline
    "    setlocal nocursorcolumn
    "endif
endfunction

" Autocmd
autocmd BufEnter,BufWritePost * call StatuslineDetect()

" ============================================================================
" Command
" ============================================================================
" Autocmd
autocmd VimEnter * call CheckConfig()

" ============================================================================
" Function for Debug
" ============================================================================
function! MyDebug()
    echohl ErrorMsg | echo "=> bufnr('%')=> ".bufnr('%') | echohl None
    echohl ErrorMsg | echo "=> bufname('%')=> ".bufname('%') | echohl None
    echohl ErrorMsg | echo "=> bufwinnr('%')=> ".bufwinnr('%') | echohl None
    echohl ErrorMsg | echo "=> winbufnr('%')=> ".winbufnr('%') | echohl None
    echohl ErrorMsg | echo "=> winnr()=> ".winnr() | echohl None
    echohl ErrorMsg | echo "=> win_getid()=> ".win_getid() | echohl None

    echohl ErrorMsg | echo "=> &modified=> ".&modified | echohl None

    echohl ErrorMsg | echo "--- Over ---" | echohl None
endfunction

" ############################################################################
" Plugin List Setting by Bleakwind
" ############################################################################
" ============================================================================
" Vundle
" ============================================================================
" ...

" ============================================================================
" Vim-Colorful
" ============================================================================
" ...

" ============================================================================
" Vim-Cheerful
" ============================================================================
let g:cheerful_neatly_enable = 1
let g:cheerful_reopen_enable = 1
let g:cheerful_reopen_lastplace = 1
let g:cheerful_reopen_dir = g:config_dir_data.'cheerful'

" ============================================================================
" AsyncRun
" ============================================================================
" ...

" ============================================================================
" NERDTree
" ============================================================================
let g:NERDChristmasTree = 1
let g:NERDTreeAutoCenter = 0
let g:NERDTreeAutoCenterThreshold = 1
let g:NERDTreeMouseMode = 2
let g:NERDTreeShowBookmarks = 0
let g:NERDTreeShowFiles = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeShowLineNumbers = 1
let g:NERDTreeCaseSensitiveSort = 1
let g:NERDTreeSortOrder = ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = '%{StatuslineDetect(''statusline_filelist'')}'
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinPos = 'left'
let g:NERDTreeWinSize = g:cheerful_set_size['nerdtree']
let g:NERDTreeMinimalUI = 1
let g:NERDTreeBookmarksFile = g:config_dir_data.'nerdtree/bookmark'
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
hi def link NERDTreePart Special
hi def link NERDTreePartFile Identifier
hi def link NERDTreeExecFile Identifier
hi def link NERDTreeDirSlash Delimiter
hi def link NERDTreeBookmarksHeader Statement
hi def link NERDTreeBookmarksLeader Delimiter
hi def link NERDTreeBookmarkName Function
hi def link NERDTreeBookmark Identifier
hi def link NERDTreeHelp Normal
hi def link NERDTreeHelpKey Identifier
hi def link NERDTreeHelpCommand Identifier
hi def link NERDTreeHelpTitle Function
hi def link NERDTreeToggleOn String
hi def link NERDTreeToggleOff String
hi def link NERDTreeLinkTarget Identifier
hi def link NERDTreeLinkFile PreProc
hi def link NERDTreeLinkDir PreProc
hi def link NERDTreeDir Function
hi def link NERDTreeUp Function
hi def link NERDTreeFile Normal
hi def link NERDTreeCWD Statement
hi def link NERDTreeOpenable Delimiter
hi def link NERDTreeClosable Delimiter
hi def link NERDTreeIgnore Comment
hi def link NERDTreeRO Comment
hi def link NERDTreeFlags PreProc
hi def link NERDTreeCurrentNode Function

" Autocmd
autocmd VimEnter * exe 'NERDTree '.g:config_dir_tree

" ============================================================================
" MiniBufferExplorer
" ============================================================================
let g:miniBufExplAutoStart = 1
let g:miniBufExplSplitToEdge = 1
let g:miniBufExplBuffersNeeded = 1
let g:miniBufExplCycleArround = 1
let g:miniBufExplHideWhenDiff = 1
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplCloseOnSelect = 0
let g:miniBufExplShowBufNumbers = 1
let g:miniBufExplStatusLineText = '%{StatuslineDetect(''statusline_bufferlist'')}'
let g:did_minibufexplorer_syntax_inits = 1
let g:miniBufExplBRSplit = 0
let g:miniBufExplMinSize = g:cheerful_set_size['minibufexpl']
let g:miniBufExplMaxSize = 2
hi def link MBENormal BufferNormal
hi def link MBEChanged BufferChanged
hi def link MBEVisibleNormal BufferVisibleNormal
hi def link MBEVisibleChanged BufferVisibleChanged
hi def link MBEVisibleActiveNormal BufferVisibleActiveNormal
hi def link MBEVisibleActiveChanged BufferVisibleActiveChanged
map  <C-Tab>   :call BufferSwitch('next')<CR>
vmap <C-Tab> <Esc><C-Tab>
map  <C-S-Tab> :call BufferSwitch('prev')<CR>
vmap <C-S-Tab> <Esc><C-S-Tab>

" ============================================================================
" Unite & Unite-Neomru
" ============================================================================
" ------------------------------------------------
" Unite
" ------------------------------------------------
let g:unite_force_overwrite_statusline = 0
let g:unite_ignore_source_files = []
let g:unite_data_directory = g:config_dir_data.'unite'
let g:unite_no_default_keymappings = 0
let g:unite_redraw_hold_candidates = 10000
let g:unite_enable_auto_select = 1
let g:unite_restore_alternate_file = 1
let g:unite_source_buffer_time_format = '(%Y/%m/%d %H:%M:%S) '
let g:unite_source_file_async_command = 'ls -a'
let g:unite_source_rec_min_cache_files = 100
let g:unite_source_rec_max_cache_files = 10000
let g:unite_source_rec_unit = 1000
let g:unite_source_line_enable_highlight = 0
let g:unite_source_process_enable_confirm = 1
let g:unite_kind_jump_list_after_jump_scroll = 25
let g:unite_kind_file_preview_max_filesize = 1000000
let g:unite_kind_openable_persist_open_blink_time = '250m'
let g:unite_converter_file_directory_width = 45
let g:unite_matcher_fuzzy_max_input_length = 20
call unite#custom#profile('default', 'context', {
    \   'start_insert'  : 0,
    \   'direction'     : 'botright',
    \   'winheight'     : g:cheerful_set_size['unite'],
    \ })

" ------------------------------------------------
" Unite-Neomru
" ------------------------------------------------
let g:neomru#time_format = ''
let g:neomru#filename_format = ''
let g:neomru#do_validate = 1
let g:neomru#update_interval = 60
let g:neomru#follow_links = 0
let g:neomru#file_mru_limit = 1000
let g:neomru#file_mru_path = g:config_dir_data.'neomru/neomru_file'
let g:neomru#directory_mru_limit = 1000
let g:neomru#directory_mru_path = g:config_dir_data.'neomru/neomru_directory'

" ============================================================================
" FencView
" ============================================================================
let g:fencview_autodetect = 0
let g:fencview_checklines = 10
let g:fencview_auto_patterns = '*.php,*.jsp,*.cgi,*.js,*.css,*.txt,*.htm{l\=}'

" ============================================================================
" CssColor
" ============================================================================
" ...

" ============================================================================
" MatchTagAlways
" ============================================================================
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1
let g:mta_filetypes = {
    \   'htm'       : 1,
    \   'html'      : 1,
    \   'xhtml'     : 1,
    \   'xml'       : 1,
    \   'php'       : 1,
    \ }

" ============================================================================
" Emmet
" ============================================================================
let g:user_emmet_settings = {
    \   'indentation'   : ' ',
    \ }
let g:user_emmet_leader_key = '<C-e>'
let g:use_emmet_complete_tag = 1
let g:user_emmet_mode = 'a'

" ============================================================================
" UltiSnips & Vim-Snippets
" ============================================================================
" ------------------------------------------------
" UltiSnips
" ------------------------------------------------
let g:UltiSnipsEditSplit = 'normal'
let g:UltiSnipsSnippetsDir = g:config_dir_data.'ultisnips'
let g:UltiSnipsSnippetDirectories = ['UltiSnips']
let g:UltiSnipsEnableSnipMate = 1
let g:UltiSnipsExpandTrigger = '<C-l>'
let g:UltiSnipsListSnippets = '<C-b>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'

" ------------------------------------------------
" Vim-Snippets
" ------------------------------------------------
" ...

" ============================================================================
" Vim-Auto-Popmenu & Vim-Dict
" ============================================================================
" ------------------------------------------------
" Vim-Auto-Popmenu
" ------------------------------------------------
let g:apc_enable_ft = {'text':1, '*':1}
set cpt=.,w,b,u,t,i,k
set completeopt=menu,menuone,noselect,noinsert
set shortmess+=c
" ------------------------------------------------
" Vim-Dict
" ------------------------------------------------
let g:vim_dict_config = {'html':'html,css,javascript', 'php':'php,html,css,javascript'}

" ############################################################################
" Other Setting by Bleakwind
" ############################################################################
" ============================================================================
" Command
" ============================================================================

" ============================================================================
" Keyboard
" ============================================================================
let g:mapleader = ','

" ------------------------------------------------
" <Leader>/
" ------------------------------------------------
function! AutoSearch(...)
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(ProceSlashes('string', ReturnVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = 0
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return '/'.l:select_visual.''
endfunction
map  <Leader>/ :<C-\>eAutoSearch()<CR>
vmap <Leader>/ :<C-\>eAutoSearch('v')<CR>

" ------------------------------------------------
" <Leader>f
" ------------------------------------------------
function! AutoSearchFiles(...)
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(ProceSlashes('string', ReturnVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:current_dir = fnameescape(substitute(getcwd(), '\v[\/\\]+\c', '/', 'g'))
    let l:current_dir = empty(l:current_dir) ? '~' : l:current_dir
    let l:set_pos = empty(l:select_visual) ? 10 : 8
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return 'vimgrep /'.l:select_visual.'/gj '.l:current_dir.'/**/*.*'
endfunction
map  <Leader>f :<C-\>eAutoSearchFiles()<CR>
vmap <Leader>f :<C-\>eAutoSearchFiles('v')<CR>

" ------------------------------------------------
" <Leader>h
" ------------------------------------------------
function! AutoReplace(...)
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(ProceSlashes('string', ReturnVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = empty(l:select_visual) ? 6 : 7
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return '.,$s/'.l:select_visual.'//gc'
endfunction
map  <Leader>h :<C-\>eAutoReplace()<CR>
vmap <Leader>h :<C-\>eAutoReplace('v')<CR>

" ------------------------------------------------
" <Leader>r
" ------------------------------------------------
function! AutoRunPHP(...)
    let l:set_pos = 5
    call setcmdpos(l:set_pos)
    return 'Rphp'
endfunction
map  <Leader>r :<C-\>eAutoRunPHP()<CR>
vmap <Leader>r :<C-\>eAutoRunPHP()<CR>

" ------------------------------------------------
" <Leader>n
" ------------------------------------------------
map  <Leader>n :call BufferNew()<CR>
vmap <Leader>n <Esc><Leader>n

" ------------------------------------------------
" <Leader>s
" ------------------------------------------------
map  <Leader>s :call FileSave()<CR>
vmap <Leader>s <Esc><Leader>s

" ------------------------------------------------
" <Leader>c
" ------------------------------------------------
map  <Leader>c :call BufferClose()<CR>
vmap <Leader>c <Esc><Leader>c

" ------------------------------------------------
" <Leader>\
" ------------------------------------------------
map  <Leader>\ :nohlsearch<CR>
vmap <Leader>\ <Esc><Leader>\

" ------------------------------------------------
"<Leader>]
" ------------------------------------------------
map  <Leader>] :call QuickfixNohi()<CR>
vmap <Leader>] <Esc><Leader>]

" ------------------------------------------------
" Fx
" ------------------------------------------------
map <F2>    :call QuickfixPrev()<CR>
map <F3>    :call QuickfixNext()<CR>
map <F4>    :call FileLocate()<CR>

map <F5>    :call ResetTree()<CR>
map <F6>    :call ResetEdit()<CR>
map <F7>    :call OperateTool('unite','open')<CR>
map <F8>    :call OperateTool('quickfix','open')<CR>

map <F9>    :call MakeDebug()<CR>
map <F12>   :call MakeBrowser('chrome')<CR>
map <C-F12> :call MakeBrowser('firefox')<CR>

" ############################################################################
" --- Plugin Manage End ---
" ############################################################################
endif

" ############################################################################
" === End ===
" ############################################################################

