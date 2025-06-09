" An example for a vimrc file.
"
" Maintainer:   The Vim Project <https://github.com/vim/vim>
" Last Change:  2023 Aug 10
" Former Maintainer:    Bram Moolenaar <Bram@vim.org>
"
" To use it, copy it to
"              for Unix:  ~/.vimrc
"             for Amiga:  s:.vimrc
"        for MS-Windows:  $VIM\_vimrc
"             for Haiku:  ~/config/settings/vim/vimrc
"           for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup          " do not keep a backup file, use versions instead
else
  set backup            " keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile        " keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif

" ############################################################################
" === Vimrc Begin ===
" ############################################################################

" ############################################################################
" +--------------------------------------------------------------------------+
" | $Id: vimrc 2025-10-18 10:06:29 Bleakwind Exp $                           |
" +--------------------------------------------------------------------------+
" | Copyright (c) 2008-2025 Bleakwind(Rick Wu).                              |
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
" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git \
"       /pub/_program/vim/vimfiles/bundle/Vundle.vim
" ============================================================================
" Vim-Colorful
" https://github.com/bleakwind/vim-colorful
" ============================================================================
" Vim-Neatview
" https://github.com/bleakwind/vim-neatview
" ============================================================================
" Vim-Viewmap
" https://github.com/bleakwind/vim-viewmap
" ============================================================================
" Vim-Specialcolor
" https://github.com/bleakwind/vim-specialcolor
" ============================================================================
" Vim-Runscript
" https://github.com/bleakwind/vim-runscript
" ============================================================================
" Vim-Autoplete
" https://github.com/bleakwind/vim-autoplete
" ============================================================================
" Vim-Marktext
" https://github.com/bleakwind/vim-marktext
" ============================================================================
" NERDtree
" https://github.com/preservim/nerdtree
" ============================================================================
" MiniBufExpl
" https://github.com/fholgado/minibufexpl.vim
" ============================================================================

" ############################################################################
" Settings by Bleakwind
" ############################################################################
" ============================================================================
" Global Config
" ============================================================================
let g:config_plugin_on                      = 'on'
let g:config_nerdtree_bookmark              = []
let g:skip_defaults_vim                     = 1
let g:skip_loading_mswin                    = 1
if has('unix')
    let g:config_dir_tree                   = '/pub/'
    let g:config_dir_work                   = '/pub/project/'
    let g:config_dir_data                   = '/pub/_program/vim/data/'
    let g:config_debug_url                  = 'http://127.0.0.1:88/'
    let g:config_debug_browser1             = 'chrome'
    let g:config_debug_browser2             = 'firefox'
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'

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
    let g:config_dir_tree                   = '/pub/'
    let g:config_dir_work                   = '/pub/project/'
    let g:config_dir_data                   = '/pub/_program/vim/data/'
    let g:config_debug_url                  = 'http://127.0.0.1:88/'
    let g:config_debug_browser1             = 'chrome'
    let g:config_debug_browser2             = 'firefox'
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'

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
    let g:config_dir_tree                   = 'E:/project/'
    let g:config_dir_work                   = 'E:/project/'
    let g:config_dir_data                   = 'D:/Program Files/vim/data/'
    let g:config_debug_url                  = 'http://127.0.0.1:88/'
    let g:config_debug_browser1             = 'start '.shellescape('C:/Program Files (x86)/Google/Chrome/Application/chrome.exe')
    let g:config_debug_browser2             = 'start '.shellescape('D:/Program Files/Firefox/firefox.exe')
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'

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
Plugin 'bleakwind/vim-neatview'
Plugin 'bleakwind/vim-viewmap'
Plugin 'bleakwind/vim-specialcolor'
Plugin 'bleakwind/vim-runscript'
Plugin 'bleakwind/vim-autoplete'
Plugin 'bleakwind/vim-marktext'
" ----------------------------------------------------------------------------
Plugin 'preservim/nerdtree'
Plugin 'fholgado/minibufexpl.vim'
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
set fileencodings=utf-8,utf-16,gb2312,gbk,gb18030,big5,Unicode
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
set foldmethod=indent
set foldcolumn=4
set foldnestmax=3
set foldlevel=99
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
set synmaxcol=1000
set redrawtime=6000
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
set scrolloff=3
set history=100
set wildmenu
set laststatus=2
set shortmess=atI
set complete=.,w,b,u,t,i
set completeopt=menuone,noinsert,noselect
set matchpairs=(:),{:},[:]
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
let g:config_vimrc          = substitute(expand('<sfile>:p'), '\v[\/\\]+\c', '/', 'g')
let g:config_dir_tree       = substitute(g:config_dir_tree, '\v[\/\\]+\c', '/', 'g')
let g:config_dir_work       = substitute(g:config_dir_work, '\v[\/\\]+\c', '/', 'g')
let g:config_dir_data       = substitute(g:config_dir_data, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser1 = substitute(g:config_debug_browser1, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser2 = substitute(g:config_debug_browser2, '\v[\/\\]+\c', '/', 'g')

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

" ############################################################################
" --- Plugin Manage Begin ---
" ############################################################################
if g:config_plugin_on == 'on'

" ############################################################################
" Function List Define by Bleakwind
" ############################################################################
" ============================================================================
" g:neatview_struct
" ============================================================================
let g:neatview_struct_setname                       = {}
let g:neatview_struct_settype                       = {}
let g:neatview_struct_setpart                       = {}
let g:neatview_struct_setbuff                       = {}
let g:neatview_struct_setcoth                       = {}
let g:neatview_struct_setsize                       = {}
let g:neatview_struct_setopen                       = {}
let g:neatview_struct_setclse                       = {}
let g:neatview_struct_setnohi                       = {}
let g:neatview_struct_setstat                       = {}
let g:neatview_struct_setshow                       = {}

let g:neatview_struct_setname['nerdtree']           = 'Filelist'
let g:neatview_struct_settype['nerdtree']           = 'nerdtree'
let g:neatview_struct_setpart['nerdtree']           = 'tree'
let g:neatview_struct_setbuff['nerdtree']           = ''
let g:neatview_struct_setcoth['nerdtree']           = []
let g:neatview_struct_setsize['nerdtree']           = 30
let g:neatview_struct_setopen['nerdtree']           = 'NERDTree'
let g:neatview_struct_setclse['nerdtree']           = 'NERDTreeClose'
let g:neatview_struct_setnohi['nerdtree']           = 0
let g:neatview_struct_setstat['nerdtree']           = 0
let g:neatview_struct_setshow['nerdtree']           = 0

let g:neatview_struct_setname['minibufexpl']        = 'Bufferlist'
let g:neatview_struct_settype['minibufexpl']        = 'minibufexpl'
let g:neatview_struct_setpart['minibufexpl']        = 'tab'
let g:neatview_struct_setbuff['minibufexpl']        = ''
let g:neatview_struct_setcoth['minibufexpl']        = []
let g:neatview_struct_setsize['minibufexpl']        = 1
let g:neatview_struct_setopen['minibufexpl']        = 'MBEOpen'
let g:neatview_struct_setclse['minibufexpl']        = 'MBEClose'
let g:neatview_struct_setnohi['minibufexpl']        = 1
let g:neatview_struct_setstat['minibufexpl']        = 0
let g:neatview_struct_setshow['minibufexpl']        = 0

let g:neatview_struct_setname['quickfix']           = 'Quickfix'
let g:neatview_struct_settype['quickfix']           = 'qf'
let g:neatview_struct_setpart['quickfix']           = 'output'
let g:neatview_struct_setbuff['quickfix']           = ''
let g:neatview_struct_setcoth['quickfix']           = []
let g:neatview_struct_setsize['quickfix']           = 10
let g:neatview_struct_setopen['quickfix']           = 'botright copen '.g:neatview_struct_setsize['quickfix']
let g:neatview_struct_setclse['quickfix']           = 'cclose'
let g:neatview_struct_setnohi['quickfix']           = 0
let g:neatview_struct_setstat['quickfix']           = 1
let g:neatview_struct_setshow['quickfix']           = 0

let g:neatview_struct_setname['viewmap']            = 'Codemap'
let g:neatview_struct_settype['viewmap']            = 'viewmap'
let g:neatview_struct_setpart['viewmap']            = 'info'
let g:neatview_struct_setbuff['viewmap']            = 'vim-viewmap'
let g:neatview_struct_setcoth['viewmap']            = []
let g:neatview_struct_setsize['viewmap']            = 20
let g:neatview_struct_setopen['viewmap']            = 'ViewmapOpen'
let g:neatview_struct_setclse['viewmap']            = 'ViewmapClose'
let g:neatview_struct_setnohi['viewmap']            = 1
let g:neatview_struct_setstat['viewmap']            = 1
let g:neatview_struct_setshow['viewmap']            = 0

" ============================================================================
" Function setting
" ============================================================================
let g:config_commlist                               = {}
let g:config_commlist['tab_prev']                   = 'MBEbp'
let g:config_commlist['tab_next']                   = 'MBEbn'
let g:config_commlist['file_locate']                = 'NERDTreeFind'

let g:config_builddir                               = {}
let g:config_builddir['root']                       = g:config_dir_data
let g:config_builddir['vim']                        = g:config_dir_data.'vim'
let g:config_builddir['vim_backupdir']              = g:config_dir_data.'vim/backupdir'
let g:config_builddir['vim_viewdir']                = g:config_dir_data.'vim/viewdir'
let g:config_builddir['vim_undodir']                = g:config_dir_data.'vim/undodir'
let g:config_builddir['vim_swapdir']                = g:config_dir_data.'vim/swapdir'
let g:config_builddir['nerdtree']                   = g:config_dir_data.'nerdtree'

let g:config_buildfile                              = {}
let g:config_buildfile['nerdtree_bookmark']         = g:config_dir_data.'nerdtree/bookmark'

let g:config_builddata                              = {}
let g:config_builddata['nerdtree_bookmark']         = g:config_nerdtree_bookmark

" ============================================================================
" Function for Public
" ============================================================================
function! CheckConfig()
    if exists('g:config_builddir')
        for il in keys(g:config_builddir)
            if filewritable(g:config_builddir[il]) != 2
                call mkdir(g:config_builddir[il], 'p', 0777)
            endif
        endfor
    endif
    if exists('g:config_buildfile')
        for il in keys(g:config_buildfile)
            if filewritable(g:config_buildfile[il]) != 1
                call writefile([], g:config_buildfile[il], 'b')
                if has_key(g:config_builddata, il)
                    call writefile(g:config_builddata[il], g:config_buildfile[il], 'b')
                endif
                call setfperm(g:config_buildfile[il], 'rwxrwxrwx')
            endif
        endfor
    endif
endfunction

function! CheckVisual()
    let l:if_wrap = 2
    let l:check_selection   = &selection == 'exclusive' ? 2 : 1
    let l:content           = []
    let [l:lnum1, l:col1]   = getpos("'<")[1:2]
    let [l:lnum2, l:col2]   = getpos("'>")[1:2]
    if l:col2 > 1073741824
        let l:col2 = strlen(getline(l:lnum2))
        let l:if_wrap = 1
    endif
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
    if l:if_wrap == 1
        let l:result = l:result."\n"
    endif
    return l:result
endfunction

function! CheckSlash(...)
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

function! CheckMixwhite(color, alpha) abort
    let l:res_color = a:color
    if a:color =~? '^#[0-9a-fA-F]\{6}$' && a:alpha >= 0.0 && a:alpha <= 1.0
        let l:r = str2nr(a:color[1:2], 16)
        let l:g = str2nr(a:color[3:4], 16)
        let l:b = str2nr(a:color[5:6], 16)

        let l:mixed_r = float2nr(l:r * (1.0 - a:alpha) + 255 * a:alpha)
        let l:mixed_g = float2nr(l:g * (1.0 - a:alpha) + 255 * a:alpha)
        let l:mixed_b = float2nr(l:b * (1.0 - a:alpha) + 255 * a:alpha)

        let l:mixed_r = max([0, min([255, l:mixed_r])])
        let l:mixed_g = max([0, min([255, l:mixed_g])])
        let l:mixed_b = max([0, min([255, l:mixed_b])])

        let l:res_color = printf('#%02X%02X%02X', l:mixed_r, l:mixed_g, l:mixed_b)
    endif
    return l:res_color
endfunction

function! CheckCalcfg(hex) abort
    let l:r = str2nr(a:hex[1:2], 16)
    let l:g = str2nr(a:hex[3:4], 16)
    let l:b = str2nr(a:hex[5:6], 16)
    let l:brightness = (0.299 * l:r + 0.587 * l:g + 0.114 * l:b) / 255
    return l:brightness > 0.5 ? 'Black' : 'White'
endfunction

" ============================================================================
" Function for Buffer
" ============================================================================
function! BufferNew()
    exe 'ene'
endfunction

function! BufferClose()
    if count(g:neatview_struct_settype, &filetype) > 0
        echohl ErrorMsg | echo "Error: You can't close this window..." | echohl None
    elseif &modified == 1
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        let l:bufnum_original = bufnr('%')
        exe g:config_commlist['tab_next']
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
    if (a:ope == 'next')
        exe g:config_commlist['tab_next']
    elseif (a:ope == 'prev')
        exe g:config_commlist['tab_prev']
    endif
endfunction

" ============================================================================
" Function for File
" ============================================================================
function! FileLocate()
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Error: This file is not save yet..." | echohl None
    else
        exe g:config_commlist['file_locate']
    endif
endfunction

function! FileSave()
    let l:result_winview = winsaveview()

    " ------------------------------------------------
    " operate wrap
    " ------------------------------------------------
    " delete last blank line
    while getline(line('$')) =~ '\v^[\s\r\n]*$\c' && getline(line('$')-1) =~ '\v^[\s\r\n]*$\c'
        call deletebufline('%', line('$'))
    endwhile

    " delete last line r
    if getline(line('$')) =~ '\v^[\s\n]*[\r]+[\s\n]*$\c'
        call setline(line('$'), '')
    endif

    " replace char
    exe '%s/\v\t\c/    /ge'
    exe '%s/\v\s+$\c//ge'
    exe '%s/\v\r\n\c/\r/ge'
    exe '%s/\v[\r]+\c//ge'

    " replace config file to r style
    if &filetype == "php" && substitute(expand("%:t"), '\v([^\.]*)\..*\c', '\=submatch(1)', 'g') ==? "config"
        set fileformat=dos
        exe '%s/\v\r\c/\r\n/ge'
    elseif &filetype == "text" && substitute(expand("%:t"), '\v([^\.]*)\..*\c', '\=submatch(1)', 'g') ==? "readme"
        set fileformat=dos
        exe '%s/\v\r\c/\r\n/ge'
    elseif &filetype == "dosini"
        set fileformat=dos
        exe '%s/\v\r\c/\r\n/ge'
    elseif &filetype == "dosbatch"
        set fileformat=dos
        exe '%s/\v\r\c/\r\n/ge'
    else
        set fileformat=unix
    endif

    " ------------------------------------------------
    " operate space
    " ------------------------------------------------
    " ^[if|for|foreach|while] (
    exe '%s/\v^(\s*)(if|for|foreach|while)(|\s{2,})\(\c/\1\2 (/ge'
    " ^} [elseif|while|catch] (
    exe '%s/\v^(\s*)\}(|\s{2,})(elseif|while|catch)(\s*)\(\c/\1} \3\4(/ge'
    exe '%s/\v^(\s*)\}(\s*)(elseif|while|catch)(|\s{2,})\(\c/\1}\2\3 (/ge'
    " ^} else if (
    exe '%s/\v^(\s*)\}(|\s{2,})(else)(\s*)(if)(\s*)\(\c/\1} \3\4\5\6(/ge'
    exe '%s/\v^(\s*)\}(\s*)(else)(\s{2,})(if)(\s*)\(\c/\1}\2\3 \5\6(/ge'
    exe '%s/\v^(\s*)\}(\s*)(else)(\s*)(if)(|\s{2,})\(\c/\1}\2\3\4\5 (/ge'
    " ^} else {
    exe '%s/\v^(\s*)\}(|\s{2,})(else)(\s*)\{\c/\1} \3\4{/ge'
    exe '%s/\v^(\s*)\}(\s*)(else)(|\s{2,})\{\c/\1}\2\3 {/ge'
    " ) {$
    exe '%s/\v\)(|\s{2,})\{$\c/) {/ge'

    " ------------------------------------------------
    " operate save newfile
    " ------------------------------------------------
    call winrestview(l:result_winview)
    let l:file_copyright = FileCopyright()
    if empty(bufname('%'))
        let l:input_prompt_default  = "Please input path and filename for this file...\nFilename: "
        let l:input_prompt_again    = "\nFilename error, please input path and filename again...\nFilename: "
        let l:input_prompt_mkdir    = "\nCan't create dir, please check your path and try again..."
        let l:result_mkdir          = 1
        let l:input_path_default    = substitute(expand("%:p:h").'/', '\v[\/\\]+\c', '/', 'g')
        let l:input_content         = input(l:input_prompt_default, l:input_path_default, 'file')
        while l:input_content !~ '\v^[a-zA-Z0-9_'.CheckSlash('retfile').'\/\:]+$\c'
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

    " ------------------------------------------------
    " operate other
    " ------------------------------------------------
    call MakeBuild()
endfunction

function! FileEncoding(...)
    let l:enc_sub  = ["Please select your encoding for this file..."]
    " setting encoding
    let l:enc_list = split(&fileencodings, ',')
    let l:enc_len  = len(l:enc_list)
    " setting other
    let i = 0 | let l:oth_list = [] | let l:oth_len  = {}
    let l:name = 'add_bom' | let i = i + 1 | call add(l:oth_list, l:name) | let l:oth_len[l:name] = l:enc_len + i
    let l:name = 'del_bom' | let i = i + 1 | call add(l:oth_list, l:name) | let l:oth_len[l:name] = l:enc_len + i
    " menu encoding
    let il = 1
    while il <= l:enc_len
        call add(l:enc_sub, '  '.il.': enc - '.l:enc_list[il-1])
        let il = il+1
    endwhile
    " menu other
    for il in l:oth_list
        call add(l:enc_sub, '  '.l:oth_len[il].": ope > ".il)
    endfor
    " show menu
    let l:input_list = inputlist(l:enc_sub)
    if l:input_list > 0 && l:input_list <= l:enc_len
        exe 'edit ++enc='.l:enc_list[l:input_list-1].' '.fnameescape(substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g'))
        exe 'setlocal noreadonly'
    elseif l:input_list == l:oth_len['add_bom']
        exe 'setlocal bomb'
    elseif l:input_list == l:oth_len['del_bom']
        exe 'setlocal nobomb'
    endif
endfunction
command! -nargs=? FileEncoding :call FileEncoding(<q-args>)

function! FileCopyright(...)
    let l:nickname              = 'Bleakwind'
    let l:fullname              = 'Rick Wu'
    let l:mailaddr              = 'bleakwind@qq.com'
    let l:datetime              = strftime("%Y-%m-%d %H:%M:%S")
    let l:filename              = expand("%:t")
    let l:dateyear              = strftime("%Y")
    let l:cpywidth              = 78
    let l:progtype              = ['<?php', '<%asp']

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

    if l:cpywidth < 75
        let l:cpywidth = 78
    endif

    let l:progtype = map(l:progtype, 'CheckSlash(''string'', v:val)')

    call cursor(1, 1)
    let l:i = 1
    while l:i < l:line_total
        let l:content = getline(l:i)
        if l:content =~ '\v^\s*(\/\*|\*|\+|\|).*$\c'
            if l:content =~ '\v^.*\$Id\:.*'.CheckSlash('string', l:nickname).'.*\$\s*[^\s]+$\c'
                let l:if_mine = 1
            endif
            let l:if_copyright = 1
            let l:i = l:i+1
        elseif l:content =~ '\v^\s*('.join(l:progtype, "|").').*$\c'
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
            echohl WarningMsg | echo l:filename.l:datetime.l:nickname | echohl None
            let l:add_copyright = []
            call add(l:add_copyright, "/* vim: set expandtab tabstop=4 softtabstop=4 shiftwidth=4: */")
            call add(l:add_copyright, "/**")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------".                                                                    "+")
            call add(l:add_copyright, " * | $Id: ".l:filename." ".l:datetime." ".l:nickname.                " Exp $ ".repeat(" ", l:cpywidth-strlen(l:filename.l:datetime.l:nickname)-20)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------".                                                                    "+")
            call add(l:add_copyright, " * | Copyright (c) 2008-".l:dateyear." ".l:nickname."(".l:fullname.      "). ".repeat(" ", l:cpywidth-strlen(l:dateyear.l:nickname.l:fullname)-30)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------".                                                                    "+")
            call add(l:add_copyright, " * | This source file is ".l:filename.                                    ". ".repeat(" ", l:cpywidth-strlen(l:filename)-28).                      "|")
            call add(l:add_copyright, " * | This source file is release under private license. If you did not       ".repeat(" ", l:cpywidth-78).                                         "|")
            call add(l:add_copyright, " * | receive an authorize of the our license and are unable to obtain it,    ".repeat(" ", l:cpywidth-78).                                         "|")
            call add(l:add_copyright, " * | please send an email to ".l:mailaddr.           " and get an authorize. ".repeat(" ", l:cpywidth-strlen(l:mailaddr)-53).                      "|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------".                                                                    "+")
            call add(l:add_copyright, " * | Author: ".l:nickname."(".l:fullname.")"." <".l:mailaddr.             "> ".repeat(" ", l:cpywidth-strlen(l:nickname.l:fullname.l:mailaddr)-20)."|")
            call add(l:add_copyright, " * +-------------------------------------------------------------------------".                                                                    "+")
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
                let l:content_new = ''
                let l:content = getline(l:i)
                if l:content =~ '\v^\s*\*\s*\|\s*\$Id\:.*\$\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*\$Id\:.*\$\s*\|$\c', '\=" * | $Id: ".l:filename." ".l:datetime." ".l:nickname." Exp $ ".repeat(" ", l:cpywidth-strlen(l:filename.l:datetime.l:nickname)-20)."|"', 'g')
                    "silent! exe 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_filename = 1
                    call add(l:prompt_item, 'Filename')
                    let l:if_update_datetime = 1
                    call add(l:prompt_item, 'Datetime')
                elseif l:content =~ '\v^\s*\*\s*\|\s*Copyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\|]+\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*Copyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\|]+\s*\|$\c', '\=" * | Copyright (c) ".submatch(1)."-".l:dateyear." ".l:nickname."(".l:fullname."). ".repeat(" ", l:cpywidth-strlen(l:dateyear.l:nickname.l:fullname)-30)."|"', 'g')
                    "silent! exe 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_copydate = 1
                    call add(l:prompt_item, 'Copydate')
                elseif l:content =~ '\v^\s*\*\s*\|\s*This source file is\s*[^\|\ ]+\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*This source file is\s*[^\|\ ]+\s*\|$\c', '\=" * | This source file is ".l:filename.". ".repeat(" ", l:cpywidth-strlen(l:filename)-28)."|"', 'g')
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
command! -nargs=? FileCopyright :call FileCopyright(<q-args>)

" ============================================================================
" Function for Make
" ============================================================================
function! MakePrev()
    exe 'cp'
endfunction

function! MakeNext()
    exe 'cn'
endfunction

function! MakeDohi()
    let g:env_qfmatch = []
    let l:qflist = getqflist()
    for il in l:qflist
       call add(g:env_qfmatch, matchadd('Error', '\%'.il['lnum'].'l'))
    endfor
endfunction

function! MakeNohi()
    if exists('g:env_qfmatch') && !empty(g:env_qfmatch)
        for il in g:env_qfmatch
           call matchdelete(il)
        endfor
        let g:env_qfmatch = []
    endif
endfunction

function! MakeBuild()
    if &filetype == 'c'
        setlocal makeprg=cc
        setlocal errorformat=%+G%.%#
        silent make -o %< %
        setlocal makeprg=
        setlocal errorformat=
    elseif &filetype == 'php'
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
    endif
    autocmd QuickFixCmdPost [^l]* if !empty(getqflist()) | call neatview#StructOperate('quickfix', 'open') | call neatview#StructOutput('open') | endif
    "call MakeDohi()
endfunction

function! MakeDebug()
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        call neatview#StructOperate('quickfix', 'open')
        call MakeBuild()
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

function! MakeBrowser(type)
    if empty(bufname('%'))
        echohl ErrorMsg | echo "Warning: Please save this file first..." | echohl None
    else
        let l:system_browser = {
            \   'chrome'    : g:config_debug_browser1,
            \   'firefox'   : g:config_debug_browser2,
            \ }
        let l:work_file = substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g')
        setlocal noshellslash
        if &filetype == "markdown"
            silent exe '!'.l:system_browser[a:type].' '.shellescape(g:config_markdown_script.'?f='.l:work_file)
        else
            if stridx(l:work_file, g:config_dir_work) == -1
                silent exe '!'.l:system_browser[a:type].' '.shellescape('file:///'.l:work_file)
            else
                let l:work_file = substitute(l:work_file, '\v'.CheckSlash('string', g:config_dir_work).'\c', g:config_debug_url, '')
                silent exe '!'.l:system_browser[a:type].' '.shellescape(l:work_file)
            endif
        endif
        setlocal shellslash<
    endif
endfunction

" ============================================================================
" Function for Debug
" ============================================================================
function! VimDebug()
    echohl ErrorMsg | echo "=== Start ===" | echohl None

    echohl ErrorMsg | echo "-> bufnr('%')    : ".bufnr('%')    | echohl None
    echohl ErrorMsg | echo "-> bufname('%')  : ".bufname('%')  | echohl None
    echohl ErrorMsg | echo "-> bufwinnr('%') : ".bufwinnr('%') | echohl None
    echohl ErrorMsg | echo "-> winbufnr('%') : ".winbufnr('%') | echohl None
    echohl ErrorMsg | echo "-> winnr()       : ".winnr()       | echohl None
    echohl ErrorMsg | echo "-> win_getid()   : ".win_getid()   | echohl None
    echohl ErrorMsg | echo "-> &modified     : ".&modified     | echohl None

    echohl ErrorMsg | echo "=== Finish ===" | echohl None
endfunction

" ============================================================================
" Command
" ============================================================================
" ------------------------------------------------
" check config
" ------------------------------------------------
autocmd VimEnter * call CheckConfig()

" ------------------------------------------------
" syntax sync
" ------------------------------------------------
autocmd BufWritePost * :syntax sync fromstart

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
" Vim-Neatview
" ============================================================================
let g:neatview_struct_enabled = 1
let g:neatview_reopen_enabled = 1
let g:neatview_reopen_setpath = g:config_dir_data.'neatview'

" ============================================================================
" Vim-Viewmap
" ============================================================================
let g:viewmap_enabled = 1
let g:viewmap_width   = 20
let g:viewmap_updelay = 200
let g:viewmap_hlalpha = 0.3

" ============================================================================
" Vim-Specialcolor
" ============================================================================
let g:specialcolor_matchtag_enabled = 1
let g:specialcolor_matchtag_updelay = 200
let g:specialcolor_csscolor_enabled = 1
let g:specialcolor_csscolor_updelay = 1000

" ============================================================================
" Vim-Runscript
" ============================================================================
let g:runscript_enabled = 1
let g:runscript_setpath = g:config_dir_data.'runscript'
let g:runscript_runcomm = 'php -d html_errors=0'

" ============================================================================
" Vim-Autoplete
" ============================================================================
let g:autoplete_enabled    = 1
let g:autoplete_useomni    = 1
let g:autoplete_usedict    = 1
let g:autoplete_usekeyword = 1
let g:autoplete_usebuffer  = 1
let g:autoplete_usefile    = 1

" ============================================================================
" Vim-Marktext
" ============================================================================
let g:marktext_toc_enabled     = 1
let g:marktext_toc_maxlevel    = 5
let g:marktext_toc_autoupdate  = 1
let g:marktext_time_enabled    = 1
let g:marktext_time_autoupdate = 1

" ============================================================================
" NERDTree
" ============================================================================
let g:NERDChristmasTree           = 1
let g:NERDTreeAutoCenter          = 0
let g:NERDTreeAutoCenterThreshold = 1
let g:NERDTreeMouseMode           = 2
let g:NERDTreeShowBookmarks       = 0
let g:NERDTreeShowFiles           = 1
let g:NERDTreeShowHidden          = 1
let g:NERDTreeShowLineNumbers     = 1
let g:NERDTreeCaseSensitiveSort   = 1
let g:NERDTreeSortOrder           = ['\/$', '*', '\.swp$',  '\.bak$', '\~$']
let g:NERDTreeIgnore              = []
let g:NERDTreeStatusline          = '%{neatview#StructStatusline(''tree'')}'
let g:NERDTreeChDirMode           = 2
let g:NERDTreeWinPos              = 'left'
let g:NERDTreeWinSize             = g:neatview_struct_setsize['nerdtree']
let g:NERDTreeMinimalUI           = 1
let g:NERDTreeBookmarksFile       = g:config_dir_data.'nerdtree/bookmark'
let g:NERDTreeDirArrowExpandable  = '+'
let g:NERDTreeDirArrowCollapsible = '-'
function! NerdtreeHlcolor() abort
    hi! link NERDTreePart Special
    hi! link NERDTreePartFile Identifier
    hi! link NERDTreeExecFile Identifier
    hi! link NERDTreeDirSlash Delimiter
    hi! link NERDTreeBookmarksHeader Statement
    hi! link NERDTreeBookmarksLeader Delimiter
    hi! link NERDTreeBookmarkName Function
    hi! link NERDTreeBookmark Identifier
    hi! link NERDTreeHelp Normal
    hi! link NERDTreeHelpKey Identifier
    hi! link NERDTreeHelpCommand Identifier
    hi! link NERDTreeHelpTitle Function
    hi! link NERDTreeToggleOn String
    hi! link NERDTreeToggleOff String
    hi! link NERDTreeLinkTarget Identifier
    hi! link NERDTreeLinkFile PreProc
    hi! link NERDTreeLinkDir PreProc
    hi! link NERDTreeDir Function
    hi! link NERDTreeUp Function
    hi! link NERDTreeFile Normal
    hi! link NERDTreeCWD Statement
    hi! link NERDTreeOpenable Delimiter
    hi! link NERDTreeClosable Delimiter
    hi! link NERDTreeIgnore Comment
    hi! link NERDTreeRO Comment
    hi! link NERDTreeFlags PreProc
    hi! link NERDTreeCurrentNode Function
endfunction
" Autocmd
autocmd ColorScheme * call NerdtreeHlcolor()
autocmd VimEnter * call NerdtreeHlcolor()
autocmd VimEnter * exe 'NERDTree '.g:config_dir_tree

" ============================================================================
" MiniBufExpl
" ============================================================================
let g:miniBufExplAutoStart             = 1
let g:miniBufExplSplitToEdge           = 1
let g:miniBufExplBuffersNeeded         = 1
let g:miniBufExplCycleArround          = 1
let g:miniBufExplHideWhenDiff          = 1
let g:miniBufExplUseSingleClick        = 1
let g:miniBufExplCloseOnSelect         = 0
let g:miniBufExplShowBufNumbers        = 1
let g:miniBufExplStatusLineText        = '%{neatview#StructStatusline(''tab'')}'
let g:did_minibufexplorer_syntax_inits = 1
let g:miniBufExplBRSplit               = 0
let g:miniBufExplMinSize               = g:neatview_struct_setsize['minibufexpl']
let g:miniBufExplMaxSize               = 2
function! MinibufexplHlcolor() abort
    let l:cbg = !empty(synIDattr(hlID('StatusLine'), 'bg', 'cterm')) ? synIDattr(hlID('StatusLine'), 'bg', 'cterm') : 'Black'
    let l:gbg = !empty(synIDattr(hlID('StatusLine'), 'bg', 'gui'))   ? synIDattr(hlID('StatusLine'), 'bg', 'gui')   : '#171C22'
    if CheckCalcfg(l:gbg) == "White"
        let l:cfg_nn = "White"      | let l:cbg_nn = l:cbg  | let l:gfg_nn = "#FFFFFF"  | let l:gbg_nn = CheckMixwhite(l:gbg, 0.3)
        let l:cfg_nc = "LightRed"   | let l:cbg_nc = l:cbg  | let l:gfg_nc = "#FF4D5B"  | let l:gbg_nc = CheckMixwhite(l:gbg, 0.3)
        let l:cfg_vn = "White"      | let l:cbg_vn = l:cbg  | let l:gfg_vn = "#FFFFFF"  | let l:gbg_vn = l:gbg
        let l:cfg_vc = "LightRed"   | let l:cbg_vc = l:cbg  | let l:gfg_vc = "#FF939C"  | let l:gbg_vc = l:gbg
        let l:cfg_an = "LightGreen" | let l:cbg_an = l:cbg  | let l:gfg_an = "#A3D97D"  | let l:gbg_an = l:gbg
        let l:cfg_ac = "LightRed"   | let l:cbg_ac = l:cbg  | let l:gfg_ac = "#FF939C"  | let l:gbg_ac = l:gbg
    else
        let l:cfg_nn = "Black"      | let l:cbg_nn = l:cbg  | let l:gfg_nn = "#000000"  | let l:gbg_nn = CheckMixwhite(l:gbg, 0.6)
        let l:cfg_nc = "Red"        | let l:cbg_nc = l:cbg  | let l:gfg_nc = "#FF4D5B"  | let l:gbg_nc = CheckMixwhite(l:gbg, 0.6)
        let l:cfg_vn = "Black"      | let l:cbg_vn = l:cbg  | let l:gfg_vn = "#000000"  | let l:gbg_vn = l:gbg
        let l:cfg_vc = "Red"        | let l:cbg_vc = l:cbg  | let l:gfg_vc = "#a6323b"  | let l:gbg_vc = l:gbg
        let l:cfg_an = "DarkGreen"  | let l:cbg_an = l:cbg  | let l:gfg_an = "#608050"  | let l:gbg_an = l:gbg
        let l:cfg_ac = "Red"        | let l:cbg_ac = l:cbg  | let l:gfg_ac = "#a6323b"  | let l:gbg_ac = l:gbg
    endif
    execute "hi! MBENormal               ctermfg=".l:cfg_nn." ctermbg=".l:cbg_nn." cterm=NONE guifg=".l:gfg_nn." guibg=".l:gbg_nn." gui=NONE"
    execute "hi! MBEChanged              ctermfg=".l:cfg_nc." ctermbg=".l:cbg_nc." cterm=NONE guifg=".l:gfg_nc." guibg=".l:gbg_nc." gui=NONE"
    execute "hi! MBEVisibleNormal        ctermfg=".l:cfg_vn." ctermbg=".l:cbg_vn." cterm=NONE guifg=".l:gfg_vn." guibg=".l:gbg_vn." gui=NONE"
    execute "hi! MBEVisibleChanged       ctermfg=".l:cfg_vc." ctermbg=".l:cbg_vc." cterm=NONE guifg=".l:gfg_vc." guibg=".l:gbg_vc." gui=NONE"
    execute "hi! MBEVisibleActiveNormal  ctermfg=".l:cfg_an." ctermbg=".l:cbg_an." cterm=NONE guifg=".l:gfg_an." guibg=".l:gbg_an." gui=NONE"
    execute "hi! MBEVisibleActiveChanged ctermfg=".l:cfg_ac." ctermbg=".l:cbg_ac." cterm=NONE guifg=".l:gfg_ac." guibg=".l:gbg_ac." gui=NONE"
endfunction
map  <C-Tab>   :call BufferSwitch('next')<CR>
vmap <C-Tab> <Esc><C-Tab>
map  <C-S-Tab> :call BufferSwitch('prev')<CR>
vmap <C-S-Tab> <Esc><C-S-Tab>
" Autocmd
autocmd ColorScheme * call MinibufexplHlcolor()
autocmd VimEnter * call MinibufexplHlcolor()

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
" Shift-Insert
" ------------------------------------------------
function! ParseRegister(...)
    return exists('a:1') ? substitute(CheckSlash('string', a:1), '\v\n\c', '\\r', 'g') : ''
endfunction
cmap <S-Insert> <C-r>=ParseRegister(@+)<CR>

" ------------------------------------------------
" <Leader>/
" ------------------------------------------------
function! AutoSearch(...)
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
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
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
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
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = empty(l:select_visual) ? 6 : 7
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return '.,$s/'.l:select_visual.'//gc'
endfunction
map  <Leader>h :<C-\>eAutoReplace()<CR>
vmap <Leader>h :<C-\>eAutoReplace('v')<CR>

" ------------------------------------------------
" <Leader>g
" ------------------------------------------------
function! BufReplace(...)
    let l:select_visual = exists('a:1') && a:1 == 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = empty(l:select_visual) ? 10 : 11
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return 'bufdo %s/'.l:select_visual.'//gc | update'
endfunction
map  <Leader>g :<C-\>eBufReplace()<CR>
vmap <Leader>g :<C-\>eBufReplace('v')<CR>

" ------------------------------------------------
" <Leader>r
" ------------------------------------------------
map  <Leader>r :<C-\>erunscript#ReadyComm()<CR>
vmap <Leader>r :<C-\>erunscript#ReadyComm()<CR>

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
map  <Leader>] :call MakeNohi()<CR>
vmap <Leader>] <Esc><Leader>]

" ------------------------------------------------
" Fx
" ------------------------------------------------
map <F2>    :call MakePrev()<CR>
map <F3>    :call MakeNext()<CR>
map <F4>    :call FileLocate()<CR>

map <F5>    :call neatview#StructTree()<CR>
map <F6>    :call neatview#StructOutput()<CR>
map <F7>    :call neatview#StructInfo()<CR>
map <F8>    :call neatview#StructClear()<CR>
map <C-F8>  :call neatview#StructDebug()<CR>

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
