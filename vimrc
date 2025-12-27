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
" | $Id: vimrc 2025-07-18 20:06:29 Bleakwind Exp $                           |
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
" Codeformat
" php - wget https://github.com/PHP-CS-Fixer/PHP-CS-Fixer/releases/download/v3.87.2/php-cs-fixer.phar -O php-cs-fixer && chmod a+x php-cs-fixer
" c   - pkg install llvm20
" ============================================================================
" Vundle
" git clone https://github.com/VundleVim/Vundle.vim.git /pub/_program/vim/vimfiles/bundle/Vundle.vim
" ============================================================================
" Vim-Colorful
" https://github.com/bleakwind/vim-colorful
" ============================================================================
" Vim-Neatview
" https://github.com/bleakwind/vim-neatview
" ============================================================================
" Vim-Bufferlist
" https://github.com/bleakwind/vim-bufferlist.vim
" ============================================================================
" Vim-Filelist
" https://github.com/bleakwind/vim-filelist.vim
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

" ############################################################################
" Settings by Bleakwind
" ############################################################################
" ============================================================================
" Global Config
" ============================================================================
let g:config_plugin_on                      = 'on'
if has('unix')
    let g:config_set_encode                 = 'utf-8'
    let g:config_set_enclist                = 'utf-8,gb2312,gbk,gb18030,latin1,Unicode,utf-16'
    let g:config_set_font                   = 'DejaVu Sans Mono 9'
    let g:config_path_tree                  = '/pub/project'
    let g:config_path_work                  = '/pub/project'
    let g:config_path_plug                  = '/pub/_program/vim/vimfiles'
    let g:config_path_data                  = '/pub/_program/vim/data'
    let g:config_path_tool                  = '/pub/_program/vim/_tool'
    let g:config_debug_url                  = 'http://127.0.0.1:88'
    let g:config_debug_browser1             = 'chrome'
    let g:config_debug_browser2             = 'firefox'
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'
elseif has('mac')
    let g:config_set_encode                 = 'utf-8'
    let g:config_set_enclist                = 'utf-8,gb2312,gbk,gb18030,latin1,Unicode,utf-16'
    let g:config_set_font                   = 'DejaVu Sans Mono:h9'
    let g:config_path_tree                  = '/pub/project'
    let g:config_path_work                  = '/pub/project'
    let g:config_path_plug                  = '/pub/_program/vim/vimfiles'
    let g:config_path_data                  = '/pub/_program/vim/data'
    let g:config_path_tool                  = '/pub/_program/vim/_tool'
    let g:config_debug_url                  = 'http://127.0.0.1:88'
    let g:config_debug_browser1             = 'chrome'
    let g:config_debug_browser2             = 'firefox'
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'
elseif has('win64') || has('win32')
    let g:config_set_encode                 = 'cp936'
    let g:config_set_enclist                = 'utf-8,gb2312,gbk,gb18030,latin1,Unicode,utf-16'
    let g:config_set_font                   = 'DejaVu Sans Mono:h9'
    let g:config_path_tree                  = 'E:/project'
    let g:config_path_work                  = 'E:/project'
    let g:config_path_plug                  = 'D:/Program Files/vim/vimfiles'
    let g:config_path_data                  = 'D:/Program Files/vim/data'
    let g:config_path_tool                  = 'D:/Program Files/vim/_tool'
    let g:config_debug_url                  = 'http://127.0.0.1:88'
    let g:config_debug_browser1             = 'start '.shellescape('C:/Program Files (x86)/Google/Chrome/Application/chrome.exe')
    let g:config_debug_browser2             = 'start '.shellescape('D:/Program Files/Firefox/firefox.exe')
    let g:config_markdown_script            = 'http://127.0.0.1:88/project/markdown/markdown/markdown.php'
endif

" ============================================================================
" Global Setting
" ============================================================================
let g:skip_defaults_vim  = 1
let g:skip_loading_mswin = 1

let &compatible          = 0
let &tags                = './.tags;,.tags'
let &wildignore         .= '*/.svn/**,*/.git/**'

let &encoding            = g:config_set_encode
let &termencoding        = g:config_set_encode
let &fileencoding        = g:config_set_encode
let &fileencodings       = g:config_set_enclist
let &guifont             = g:config_set_font
let &guifontwide         = ''

let &backupdir           = g:config_path_data.'/vim/backupdir/'
let &viewdir             = g:config_path_data.'/vim/viewdir/'
let &undodir             = g:config_path_data.'/vim/undodir/'
let &directory           = g:config_path_data.'/vim/swapdir/'

" ============================================================================
" Plugin List
" ============================================================================
" ----------------------------------------------------------------------------
filetype off
let &runtimepath .= ','.g:config_path_plug.'/bundle/Vundle.vim'
call vundle#begin(g:config_path_plug.'/bundle')
" ----------------------------------------------------------------------------
Plugin 'VundleVim/Vundle.vim'
" ----------------------------------------------------------------------------
Plugin 'bleakwind/vim-colorful'
Plugin 'bleakwind/vim-neatview'
Plugin 'bleakwind/vim-bufferlist'
Plugin 'bleakwind/vim-filelist'
Plugin 'bleakwind/vim-viewmap'
Plugin 'bleakwind/vim-specialcolor'
Plugin 'bleakwind/vim-runscript'
Plugin 'bleakwind/vim-autoplete'
Plugin 'bleakwind/vim-marktext'
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

" Set global
let g:global_mainwin            = 0
let g:global_default_wildignore = &wildignore
let g:global_default_directory  = getcwd()

" Set config
let g:config_vimrc              = substitute(expand('<sfile>:p'), '\v[\/\\]+\c', '/', 'g')
let g:config_path_tree          = substitute(g:config_path_tree, '\v[\/\\]+\c', '/', 'g')
let g:config_path_work          = substitute(g:config_path_work, '\v[\/\\]+\c', '/', 'g')
let g:config_path_plug          = substitute(g:config_path_plug, '\v[\/\\]+\c', '/', 'g')
let g:config_path_data          = substitute(g:config_path_data, '\v[\/\\]+\c', '/', 'g')
let g:config_path_tool          = substitute(g:config_path_tool, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser1     = substitute(g:config_debug_browser1, '\v[\/\\]+\c', '/', 'g')
let g:config_debug_browser2     = substitute(g:config_debug_browser2, '\v[\/\\]+\c', '/', 'g')

" ############################################################################
" Syntax Color by Bleakwind
" ############################################################################
" ============================================================================
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
" ============================================================================
" $str = '...'; preg_match_all('/(c[A-Z][a-zA-Z0-9_]*)[^a-zA-Z0-9_]/', $str, $matches); print_r(array_unique($matches[1]));
" $str = '...'; preg_match_all('/\s(hi|highlight)\s+(def\s+|default\s+|link\s+)*([a-zA-Z0-9_]*)\s/', $str, $matches); sort($matches[3]); print_r(array_values(array_unique($matches[3])));
" ============================================================================
syntax enable
syntax on
colorscheme colorful

" prompt message
hi! HlPmtDef ctermfg=Gray   ctermbg=NONE cterm=Bold guifg=#B1B3B8 guibg=NONE gui=Bold
hi! HlPmtNor ctermfg=Blue   ctermbg=NONE cterm=Bold guifg=#79BBFF guibg=NONE gui=Bold
hi! HlPmtSuc ctermfg=Green  ctermbg=NONE cterm=Bold guifg=#95D475 guibg=NONE gui=Bold
hi! HlPmtWar ctermfg=Yellow ctermbg=NONE cterm=Bold guifg=#EEBE77 guibg=NONE gui=Bold
hi! HlPmtErr ctermfg=Red    ctermbg=NONE cterm=Bold guifg=#F56C6C guibg=NONE gui=Bold

" ############################################################################
" --- Plugin Manage Begin ---
" ############################################################################
if g:config_plugin_on ==# 'on'

" ############################################################################
" Function List Define by Bleakwind
" ############################################################################
" ============================================================================
" Setting
" ============================================================================
let g:config_builddir                       = {}
let g:config_builddir['root']               = g:config_path_data
let g:config_builddir['vim']                = g:config_path_data.'/vim'
let g:config_builddir['vim_backupdir']      = g:config_path_data.'/vim/backupdir'
let g:config_builddir['vim_viewdir']        = g:config_path_data.'/vim/viewdir'
let g:config_builddir['vim_undodir']        = g:config_path_data.'/vim/undodir'
let g:config_builddir['vim_swapdir']        = g:config_path_data.'/vim/swapdir'
let g:config_buildfile                      = {}
let g:config_builddata                      = {}

" ============================================================================
" g:neatview
" ============================================================================
let g:neatview_setname                      = {}
let g:neatview_settype                      = {}
let g:neatview_setpart                      = {}
let g:neatview_setbuff                      = {}
let g:neatview_setcoth                      = {}
let g:neatview_setsize                      = {}
let g:neatview_setopen                      = {}
let g:neatview_setclse                      = {}
let g:neatview_setstat                      = {}
let g:neatview_setshow                      = {}

let g:neatview_setname['bufferlist']        = 'Bufferlist'
let g:neatview_settype['bufferlist']        = 'bufferlist'
let g:neatview_setpart['bufferlist']        = 'tab'
let g:neatview_setbuff['bufferlist']        = 'vim-bufferlist'
let g:neatview_setcoth['bufferlist']        = []
let g:neatview_setsize['bufferlist']        = 1
let g:neatview_setopen['bufferlist']        = 'BufferlistOpen'
let g:neatview_setclse['bufferlist']        = 'BufferlistClose'
let g:neatview_setstat['bufferlist']        = 1
let g:neatview_setshow['bufferlist']        = 0

let g:neatview_setname['filelist']          = 'Filelist'
let g:neatview_settype['filelist']          = 'filelist'
let g:neatview_setpart['filelist']          = 'tree'
let g:neatview_setbuff['filelist']          = 'vim-filelist'
let g:neatview_setcoth['filelist']          = []
let g:neatview_setsize['filelist']          = 30
let g:neatview_setopen['filelist']          = 'FilelistOpen'
let g:neatview_setclse['filelist']          = 'FilelistClose'
let g:neatview_setstat['filelist']          = 1
let g:neatview_setshow['filelist']          = 0

let g:neatview_setname['quickfix']          = 'Quickfix'
let g:neatview_settype['quickfix']          = 'qf'
let g:neatview_setpart['quickfix']          = 'output'
let g:neatview_setbuff['quickfix']          = ''
let g:neatview_setcoth['quickfix']          = []
let g:neatview_setsize['quickfix']          = 10
let g:neatview_setopen['quickfix']          = 'botright copen '.g:neatview_setsize['quickfix']
let g:neatview_setclse['quickfix']          = 'cclose'
let g:neatview_setstat['quickfix']          = 1
let g:neatview_setshow['quickfix']          = 0

let g:neatview_setname['viewmap']           = 'Codemap'
let g:neatview_settype['viewmap']           = 'viewmap'
let g:neatview_setpart['viewmap']           = 'info'
let g:neatview_setbuff['viewmap']           = 'vim-viewmap'
let g:neatview_setcoth['viewmap']           = []
let g:neatview_setsize['viewmap']           = 20
let g:neatview_setopen['viewmap']           = 'ViewmapOpen'
let g:neatview_setclse['viewmap']           = 'ViewmapClose'
let g:neatview_setstat['viewmap']           = 1
let g:neatview_setshow['viewmap']           = 0

" ============================================================================
" Function for Check
" ============================================================================
function! CheckMainwin(...)
    let g:global_mainwin = 0
    for l:winnbr in range(1, winnr('$'))
        let l:winidn = win_getid(l:winnbr)
        let l:bufnbr = winbufnr(l:winnbr)
        let l:buftype = getbufvar(l:bufnbr, '&buftype')
        if empty(l:buftype) || l:buftype ==# 'help'
            let g:global_mainwin = l:winidn
        endif
    endfor
    return g:global_mainwin
endfunction

function! CheckConfig(...)
    if exists('g:config_builddir')
        for il in keys(g:config_builddir)
            if filewritable(g:config_builddir[il]) != 2
                call mkdir(g:config_builddir[il], 'p', 0755)
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

function! CheckProconf(...)
    let l:curr_path = getcwd()
    if l:curr_path != g:global_default_directory
        let &wildignore = g:global_default_wildignore
        if filereadable(l:curr_path."/.vimrc")
            " let &wildignore .= ','.getcwd().'/build/**'
            execute "source ".l:curr_path."/.vimrc"
        endif
        let g:global_default_directory = l:curr_path
    endif
endfunction

function! CheckVisual(...)
    let l:if_wrap = 2
    let l:check_selection   = &selection ==# 'exclusive' ? 2 : 1
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
        if l:lnum1 ==# l:lnum2
            let l:content[0]    = l:content[0][l:col1-1:l:col2-l:check_selection+l:char_add]
        else
            let l:content[0]    = l:content[0][l:col1-1:]
            let l:content[-1]   = l:content[-1][:l:col2-l:check_selection+l:char_add]
        endif
    endif
    let l:result = join(l:content, "\n")
    if l:if_wrap ==# 1
        let l:result = l:result."\n"
    endif
    return l:result
endfunction

function! CheckSlash(...)
    let l:result_str = ''
    if exists('a:1')
        if a:1 ==# 'retstr'
            let l:result_str = '\`\~\!\@\#\$\%\^\&\+\-\=\(\)\[\]\{\}\,\.\;\''\/\:\|\\\"\*\?\<\>'
        elseif a:1 ==# 'retfile'
            let l:result_str = '\`\~\!\@\#\$\%\^\&\+\-\=\(\)\[\]\{\}\,\.\;\'''
        elseif a:1 ==# 'string'
            if exists('a:2')
                let l:result_str = escape(a:2, '`~!@#$%^&+-=()[]{},.;''/:|\"*?<>')
            endif
        elseif a:1 ==# 'filename'
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
function! BufferNew(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    call bufferlist#TabNew()
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! BufferClose(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    call bufferlist#TabClose()
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

" ============================================================================
" Function for File
" ============================================================================
function! FileLocate(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    if !filereadable(expand('%:p'))
        echohl HlPmtErr | echo "This file is not save yet..." | echohl None
    else
        execute 'FilelistLocateFile'
    endif
endfunction
command! -nargs=? FileLocate :call FileLocate(<q-args>)

function! FileSave(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    let l:orig_cursor = getpos('.')
    let l:orig_view = winsaveview()
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    " vim format
    execute '%s/\v\t\c/    /ge'
    execute '%s/\v\s+$\c//ge'
    execute '%s/\v\r\n\c/\r/ge'
    execute '%s/\v\r+\c//ge'
    if search('\v\n\n%$', 'nw') > 0
        execute '%s/\v(\n){2,}%$/\r/e'
    elseif search('\v\n%$', 'nw') == 0
        call append(line('$'), '')
    endif
    if &filetype ==# "php" && expand("%:t") =~? "^config"
        set fileformat=dos
    elseif &filetype ==# "text" && expand("%:t") =~? "^readme"
        set fileformat=dos
    elseif &filetype =~# '\v^(dosini|dosbatch)$'
        set fileformat=dos
    else
        set fileformat=unix
    endif
    " update copyright
    let l:res_copyright = FileCopyright()
    " handle tabsave
    let l:res_tabsave   = bufferlist#TabSave()
    " code format
    if filereadable(expand('%:p'))
        silent call FileFormat()
    endif
    " handle build
    call MakeBuild('auto')
    " --------------------------------------------------
    " prompt message
    " --------------------------------------------------
    if !empty(l:res_copyright)
        echohl HlPmtSuc | echo l:res_copyright | echohl None
    elseif !empty(l:res_tabsave)
        echohl HlPmtSuc | echo l:res_tabsave | echohl None
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    let l:safe_line = max([1, min([l:orig_cursor[1], line('$')])])
    let l:safe_colm = max([1, min([l:orig_cursor[2], col([l:safe_line, '$'])])])
    call setpos('.', [l:orig_cursor[0], l:safe_line, l:safe_colm, l:orig_cursor[3]])
    call winrestview(l:orig_view)
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction
command! -nargs=? FileSave :call FileSave(<q-args>)

function! FileFormat(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    let l:res = 0
    if index(["c", "cpp", "objc", "objcpp", "h", "hpp"], &filetype) >= 0
        silent execute '!clang-format20 -style=file:'.g:config_path_tool.'/clang-format/.clang-format -i %'
        let l:res = v:shell_error
        if l:res == 0
            edit!
        endif
    elseif index(["php"], &filetype) >= 0
        " silent execute '!'.g:config_path_tool.'/php-cs-fixer/php-cs-fixer --config='.g:config_path_tool.'/php-cs-fixer/.php-cs-fixer.php fix %'
        " let l:res = v:shell_error
        " if l:res == 0
        "     edit!
        " endif
    else
        "...
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
    return l:res
endfunction
command! -nargs=? FileFormat :call FileFormat(<q-args>)

function! FileEncopen(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    let l:title  = "Please select your encoding reopen this file..."
    let l:mnu_list = ['Encoding list:']
    " set encoding
    let l:enc_list = split(&fileencodings, ',') | let l:enc_len = len(l:enc_list)
    " set other
    let l:oth_list = [] | let l:oth_len = {}
    let l:i = 0
    let l:name = 'add_bom' | let l:i += 1 | call add(l:oth_list, l:name) | let l:oth_len[l:name] = l:enc_len + l:i
    let l:name = 'del_bom' | let l:i += 1 | call add(l:oth_list, l:name) | let l:oth_len[l:name] = l:enc_len + l:i
    " menu encoding
    for l:sc in range(len(l:enc_list))
        call add(l:mnu_list, printf("%4s: enc - %s", l:sc + 1, l:enc_list[l:sc]))
    endfor
    " menu other
    for l:sc in l:oth_list
        call add(l:mnu_list, printf("%4s: ope > %s", l:oth_len[l:sc], l:sc))
    endfor
    " show menu
    echohl HlPmtWar | echo l:title | echohl None
    let l:input_list = inputlist(l:mnu_list)
    if l:input_list > 0 && l:input_list <= l:enc_len
        execute 'edit ++enc='.l:enc_list[l:input_list - 1].' '.fnameescape(substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g'))
        execute 'setlocal noreadonly'
        redraw
        echohl HlPmtSuc | echo "Reopen with ".l:enc_list[l:input_list - 1]." successful..." | echohl None
    elseif l:input_list ==# l:oth_len['add_bom']
        execute 'setlocal bomb'
        silent execute 'write'
        redraw
        echohl HlPmtSuc | echo "Add bomb successful..." | echohl None
    elseif l:input_list ==# l:oth_len['del_bom']
        execute 'setlocal nobomb'
        silent execute 'write'
        redraw
        echohl HlPmtSuc | echo "Delete bomb successful..." | echohl None
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction
command! -nargs=? FileEncopen :call FileEncopen(<q-args>)

function! FileEncsave(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    let l:title  = "Please select your encoding save this file..."
    let l:mnu_list = ['Encoding list:']
    " set encoding
    let l:enc_list = split(&fileencodings, ',') | let l:enc_len = len(l:enc_list)
    " menu encoding
    for l:sc in range(len(l:enc_list))
        call add(l:mnu_list, printf("%4s: enc - %s", l:sc + 1, l:enc_list[l:sc]))
    endfor
    " show menu
    echohl HlPmtWar | echo l:title | echohl None
    let l:input_list = inputlist(l:mnu_list)
    if l:input_list > 0 && l:input_list <= l:enc_len
        execute 'write ++enc='.l:enc_list[l:input_list - 1].' '.fnameescape(substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g'))
        execute 'set fileencoding='.l:enc_list[l:input_list - 1].''
        silent execute 'write'
        redraw
        echohl HlPmtSuc | echo "Converted to ".l:enc_list[l:input_list - 1]." successful..." | echohl None
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction
command! -nargs=? FileEncsave :call FileEncsave(<q-args>)

function! FileCopyright(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
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
    let l:res_prompt            = ''

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
            if l:line_program ==# 0
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

    if exists('a:1') && (a:1 ==# 'add' || a:1 ==# 1)
        if l:if_copyright != 1
            if l:line_program > 0
                call cursor(l:line_program+1, 1)
            else
                call cursor(1, 1)
            endif
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
            echohl HlPmtSuc | echo "Add Copyright successful..." | echohl None
        else
            echohl HlPmtErr | echo "Already have copyright..." | echohl None
        endif
    else
        if l:if_copyright ==# 1 && l:if_mine ==# 1
            call cursor(1, 1)
            let l:i = 1
            while l:i < l:line_copyright
                let l:content_new = ''
                let l:content = getline(l:i)
                if l:content =~ '\v^\s*\*\s*\|\s*\$Id\:.*\$\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*\$Id\:.*\$\s*\|$\c', '\=" * | $Id: ".l:filename." ".l:datetime." ".l:nickname." Exp $ ".repeat(" ", l:cpywidth-strlen(l:filename.l:datetime.l:nickname)-20)."|"', 'g')
                    "silent! execute 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_filename = 1
                    call add(l:prompt_item, 'Filename')
                    let l:if_update_datetime = 1
                    call add(l:prompt_item, 'Datetime')
                elseif l:content =~ '\v^\s*\*\s*\|\s*Copyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\|]+\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*Copyright\s*\(c\)\s*(\d{4})\-\d{4}\s*[^\|]+\s*\|$\c', '\=" * | Copyright (c) ".submatch(1)."-".l:dateyear." ".l:nickname."(".l:fullname."). ".repeat(" ", l:cpywidth-strlen(l:dateyear.l:nickname.l:fullname)-30)."|"', 'g')
                    "silent! execute 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_copydate = 1
                    call add(l:prompt_item, 'Copydate')
                elseif l:content =~ '\v^\s*\*\s*\|\s*This source file is\s*[^\|\ ]+\s*\|$\c'
                    let l:content_new = substitute(l:content, '\v^\s*\*\s*\|\s*This source file is\s*[^\|\ ]+\s*\|$\c', '\=" * | This source file is ".l:filename.". ".repeat(" ", l:cpywidth-strlen(l:filename)-28)."|"', 'g')
                    "silent! execute 'undojoin'
                    call setline(l:i, l:content_new)
                    let l:if_update_copydate = 1
                    call add(l:prompt_item, 'Copydate')
                endif
                let l:i = l:i+1
            endwhile
            if l:if_update_datetime ==# 1 || l:if_update_filename ==# 1 || l:if_update_copydate ==# 1
                let l:res_prompt = "Successful: Update ".join(l:prompt_item, ",")." successful..."
            endif
        endif
    endif
    call cursor(l:original_line, l:original_col)
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
    return l:res_prompt
endfunction
command! -nargs=? FileCopyright :call FileCopyright(<q-args>)

" ============================================================================
" Function for Make
" ============================================================================
function! MakePrev(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    execute 'cp'
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeNext(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    execute 'cn'
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeDohi(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    let g:env_qfmatch = []
    let l:qflist = getqflist()
    for il in l:qflist
       call add(g:env_qfmatch, matchadd('Error', '\%'.il['lnum'].'l'))
    endfor
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeNohi(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    if exists('g:env_qfmatch') && !empty(g:env_qfmatch)
        for il in g:env_qfmatch
           call matchdelete(il)
        endfor
        let g:env_qfmatch = []
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeBuild(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    " if &filetype ==# 'c'
    "     setlocal makeprg=cc
    "     setlocal errorformat=%+G%.%#
    "     silent make -o %< %
    "     setlocal makeprg=
    "     setlocal errorformat=
    " endif
    if &filetype ==# 'php'
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
    if a:0 > 0 && a:1 ==# 'open'
        call neatview#OperateWin('quickfix', 'open')
        call neatview#StructOutput('open')
    elseif a:0 > 0 && a:1 ==# 'close'
        call neatview#OperateWin('quickfix', 'close')
        call neatview#StructOutput('close')
    elseif a:0 > 0 && a:1 ==# 'auto'
        "...
    endif
    "call MakeDohi()
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeDebug(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    if !filereadable(expand('%:p'))
        echohl HlPmtErr | echo "Please save this file first..." | echohl None
    else
        call MakeBuild('open')
        if &filetype ==# 'c'
            let l:work_file = substitute(expand("%:p:r"), '\v[\/\\]+\c', '/', 'g')
            if filewritable(l:work_file) ==# 1
                execute '!time '.shellescape(l:work_file)
            endif
        elseif &filetype ==# 'php'
            "...
        else
            echohl HlPmtErr | echo "This file type debug is not supported..." | echohl None
        endif
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

function! MakeBrowser(...)
    " --------------------------------------------------
    " save env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        let l:winidn_original = bufwinid('%')
        call win_gotoid(g:global_mainwin)
    endif
    " --------------------------------------------------
    " process
    " --------------------------------------------------
    if !filereadable(expand('%:p'))
        echohl HlPmtErr | echo "Please save this file first..." | echohl None
    else
        let l:system_browser = {
            \   'chrome'    : g:config_debug_browser1,
            \   'firefox'   : g:config_debug_browser2,
            \ }
        let l:work_file = substitute(expand("%:p"), '\v[\/\\]+\c', '/', 'g')
        setlocal noshellslash
        if a:0 > 0 && &filetype ==# "markdown"
            silent execute '!'.l:system_browser[a:1].' '.shellescape(g:config_markdown_script.'?f='.l:work_file)
        elseif a:0 > 0
            if stridx(l:work_file, g:config_path_work) ==# -1
                silent execute '!'.l:system_browser[a:1].' '.shellescape('file:///'.l:work_file)
            else
                let l:work_file = substitute(l:work_file, '\v'.CheckSlash('string', g:config_path_work).'\c', g:config_debug_url, '')
                silent execute '!'.l:system_browser[a:1].' '.shellescape(l:work_file)
            endif
        endif
        setlocal shellslash<
    endif
    " --------------------------------------------------
    " restore env
    " --------------------------------------------------
    if exists('g:global_mainwin') && g:global_mainwin > 0
        call win_gotoid(l:winidn_original)
    endif
endfunction

" ============================================================================
" Function for _Debug
" ============================================================================
function! _Debug(...)
    echohl HlPmtSuc | echo "========= Start  =========" | echohl None
    echo "> bufnr('%')    : ".bufnr('%')
    echo "> bufname('%')  : ".bufname('%')
    echo "> bufwinnr('%') : ".bufwinnr('%')
    echo "> winbufnr('%') : ".winbufnr('%')
    echo "> winnr()       : ".winnr()
    echo "> win_getid()   : ".win_getid()
    echo "> &modified     : ".&modified
    echohl HlPmtSuc | echo "========= Finish =========" | echohl None

    echohl HlPmtSuc | echo "========= Start  =========" | echohl None
    echo printf("= %-8s = %-8s = %-8s = %-16s = %-16s = %-16s", 'bufnr', 'winnr', 'winid', 'filetype', 'buftype', 'bufname')
    let buflist = getbufinfo()
    for il in buflist
        let l:bufnbr = il.bufnr
        let l:winnbr = bufwinnr(il.bufnr)
        let l:winidn = bufwinnr(il.bufnr) != -1 ? win_getid(bufwinnr(il.bufnr)) : ''
        let l:filtype = getbufvar(il.bufnr, '&filetype')
        let l:buftype = getbufvar(il.bufnr, '&buftype')
        let l:bufname = bufname(il.bufnr)
        echo printf("> %-8d > %-8d > %-8d > %-16s > %-16s > %-16s", l:bufnbr, l:winnbr, l:winidn, l:filtype, l:buftype, l:bufname)
    endfor
    echohl HlPmtSuc | echo "========= Finish =========" | echohl None

    echohl HlPmtSuc | echo "========= Start  =========" | echohl None
    echo printf("= %-8s = %-8s = %-8s = %-16s = %-16s = %-16s", 'bufnr', 'winnr', 'winid', 'filetype', 'buftype', 'bufname')
    let l:winlist = getwininfo()
    for il in l:winlist
        let l:bufnbr = il.bufnr
        let l:winnbr = il.winnr
        let l:winidn = il.winid
        let l:filtype = getbufvar(il.bufnr, '&filetype')
        let l:buftype = getbufvar(il.bufnr, '&buftype')
        let l:bufname = bufname(il.bufnr)
        echo printf("> %-8d > %-8d > %-8d > %-16s > %-16s > %-16s", l:bufnbr, l:winnbr, l:winidn, l:filtype, l:buftype, l:bufname)
    endfor
    echohl HlPmtSuc | echo "========= Finish =========" | echohl None
endfunction

" ============================================================================
" Command
" ============================================================================
" --------------------------------------------------
" global config
" --------------------------------------------------
augroup vim_cmd_gloconf
    autocmd!
    autocmd VimEnter,WinNew,WinClosed,WinScrolled * call CheckMainwin()
    autocmd VimEnter * call CheckConfig()
augroup END

" --------------------------------------------------
" project config
" --------------------------------------------------
augroup vim_cmd_proconf
    autocmd!
    autocmd DirChanged * call CheckProconf()
augroup END

" --------------------------------------------------
" syntax sync
" --------------------------------------------------
augroup vim_cmd_syntax
    autocmd!
    autocmd BufWritePost,FileChangedShellPost * :syntax sync fromstart
augroup END

" --------------------------------------------------
" diff cursor
" --------------------------------------------------
augroup vim_cmd_diffcursor
    let g:hldifcurlincbg = !empty(synIDattr(hlID('CursorLine'), 'bg', 'cterm')) ? synIDattr(hlID('CursorLine'), 'bg', 'cterm') : 'DarkGray'
    let g:hldifcurlingbg = !empty(synIDattr(hlID('CursorLine'), 'bg', 'gui'))   ? synIDattr(hlID('CursorLine'), 'bg', 'gui')   : '#2C323C'
    let g:hldifcurcolcbg = !empty(synIDattr(hlID('CursorColumn'), 'bg', 'cterm')) ? synIDattr(hlID('CursorColumn'), 'bg', 'cterm') : 'DarkGray'
    let g:hldifcurcolgbg = !empty(synIDattr(hlID('CursorColumn'), 'bg', 'gui'))   ? synIDattr(hlID('CursorColumn'), 'bg', 'gui')   : '#2C323C'
    autocmd!
    autocmd OptionSet diff
                \ if v:option_new |
                \     execute 'hi CursorLine ctermbg=NONE guibg=NONE' |
                \     execute 'hi CursorColumn ctermbg=NONE guibg=NONE' |
                \ elseif !v:option_new |
                \     execute 'hi CursorLine ctermbg='.g:hldifcurlincbg.' guibg='.g:hldifcurlingbg |
                \     execute 'hi CursorColumn ctermbg='.g:hldifcurcolcbg.' guibg='.g:hldifcurcolgbg |
                \ endif
augroup END

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
let g:neatview_enabled   = 1
let g:neatview_autostart = 1
let g:neatview_initfun   = 'neatview#StructTree()'

" ============================================================================
" Vim-Bufferlist
" ============================================================================
let g:bufferlist_enabled   = 1
let g:bufferlist_autostart = 0
let g:bufferlist_position  = 'top'
let g:bufferlist_reopen    = 1
let g:bufferlist_datapath  = g:config_path_data.'/bufferlist'

" ============================================================================
" Vim-Filelist
" ============================================================================
let g:filelist_enabled   = 1
let g:filelist_autostart = 0
let g:filelist_position  = 'left'
let g:filelist_winwidth  = 30
let g:filelist_mainpath  = g:config_path_tree
let g:filelist_showhide  = 0
let g:filelist_datapath  = g:config_path_data.'/filelist'

" ============================================================================
" Vim-Viewmap
" ============================================================================
let g:viewmap_enabled   = 1
let g:viewmap_autostart = 0
let g:viewmap_position  = 'right'
let g:viewmap_winwidth  = 20
let g:viewmap_updelay   = 200
let g:viewmap_hlalpha   = 0.3

" ============================================================================
" Vim-Specialcolor
" ============================================================================
let g:specialcolor_matchtag_enabled = 1
let g:specialcolor_matchtag_range   = 100
let g:specialcolor_matchtag_updelay = 1000
let g:specialcolor_csscolor_enabled = 1
let g:specialcolor_csscolor_range   = 100
let g:specialcolor_csscolor_updelay = 3000

" ============================================================================
" Vim-Runscript
" ============================================================================
let g:runscript_enabled = 1
let g:runscript_setpath = g:config_path_data.'/runscript'
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
let g:marktext_time_tformat    = '%Y-%m-%d %H:%M:%S'
let g:marktext_time_autoupdate = 1

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

" --------------------------------------------------
" Ctrl-`
" --------------------------------------------------
function! KeyCopyError(...)
    execute 'redir @+ | silent messages | redir END'
    return
endfunction
map <C-`> :call KeyCopyError()<CR>

" --------------------------------------------------
" Shift-Insert
" --------------------------------------------------
function! KeyCommParse(...)
    return exists('a:1') ? substitute(CheckSlash('string', a:1), '\v\n\c', '\\r', 'g') : ''
endfunction
cmap <S-Insert> <C-r>=KeyCommParse(@+)<CR>

" --------------------------------------------------
" <Leader>/
" --------------------------------------------------
function! KeySearchComm(...)
    let l:select_visual = exists('a:1') && a:1 ==# 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = 0
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return '/'.l:select_visual.''
endfunction
map  <Leader>/ :<C-\>eKeySearchComm()<CR>
vmap <Leader>/ :<C-\>eKeySearchComm('v')<CR>

" --------------------------------------------------
" <Leader>f
" --------------------------------------------------
function! KeySearchFile(...)
    let l:select_visual = exists('a:1') && a:1 ==# 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:curr_path = fnameescape(substitute(getcwd(), '\v[\/\\]+\c', '/', 'g'))
    let l:curr_path = empty(l:curr_path) ? '~' : l:curr_path
    let l:set_pos = empty(l:select_visual) ? 10 : 8
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return 'vimgrep /'.l:select_visual.'/gj '.l:curr_path.'/**/*'
endfunction
map  <Leader>f :<C-\>eKeySearchFile()<CR>
vmap <Leader>f :<C-\>eKeySearchFile('v')<CR>

" --------------------------------------------------
" <Leader>h
" --------------------------------------------------
function! KeyReplaceBuf(...)
    let l:select_visual = exists('a:1') && a:1 ==# 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = empty(l:select_visual) ? 6 : 7
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return '.,$s/'.l:select_visual.'//gc'
endfunction
map  <Leader>h :<C-\>eKeyReplaceBuf()<CR>
vmap <Leader>h :<C-\>eKeyReplaceBuf('v')<CR>

" --------------------------------------------------
" <Leader>g
" --------------------------------------------------
function! KeyReplaceFile(...)
    let l:select_visual = exists('a:1') && a:1 ==# 'v' ? '\v'.substitute(CheckSlash('string', CheckVisual()), '\v\n\c', '\\n', 'g').'\C' : ''
    let l:set_pos = empty(l:select_visual) ? 10 : 11
    call setcmdpos(l:set_pos+strlen(l:select_visual))
    return 'bufdo %s/'.l:select_visual.'//gc | update'
endfunction
map  <Leader>g :<C-\>eKeyReplaceFile()<CR>
vmap <Leader>g :<C-\>eKeyReplaceFile('v')<CR>

" --------------------------------------------------
" <Leader>r
" --------------------------------------------------
map  <Leader>r :<C-\>erunscript#ReadyComm()<CR>
vmap <Leader>r :<C-\>erunscript#ReadyComm()<CR>

" --------------------------------------------------
" <Leader>n
" --------------------------------------------------
map  <Leader>n :call BufferNew()<CR>
vmap <Leader>n <Esc><Leader>n

" --------------------------------------------------
" <Leader>c
" --------------------------------------------------
map  <Leader>c :call BufferClose()<CR>
vmap <Leader>c <Esc><Leader>c

" --------------------------------------------------
" <Leader>s
" --------------------------------------------------
map  <Leader>s :call FileSave()<CR>
vmap <Leader>s <Esc><Leader>s

" --------------------------------------------------
" <Leader>\
" --------------------------------------------------
map  <Leader>\ :nohlsearch<CR>
vmap <Leader>\ <Esc><Leader>\

" --------------------------------------------------
"<Leader>]
" --------------------------------------------------
map  <Leader>] :call MakeNohi()<CR>
vmap <Leader>] <Esc><Leader>]

" --------------------------------------------------
" Fx
" --------------------------------------------------
map <F2>    :call MakePrev()<CR>
map <F3>    :call MakeNext()<CR>
map <F4>    :call FileLocate()<CR>

map <F5>    :call neatview#StructTree()<CR>
map <F6>    :call neatview#StructOutput()<CR>
map <F7>    :call neatview#StructInfo()<CR>
map <F8>    :call neatview#StructClear()<CR>
map <C-F8>  :call _Debug()<CR>

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

