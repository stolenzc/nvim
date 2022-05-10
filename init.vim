" ------------常用设置------------
" 设置行号显示
set number
" 设置相对行号
" set relativenumber
" 设置高亮
syntax on
" 设置显示命令
set showcmd
" 设置命令自动补全
set wildmenu
" 设置自动换行
set wrap
" 设置自动缩进
set autoindent
" 根据上下文自动确定tab缩进长度
"set smarttab
" 设置缩进和回退字符数
set shiftwidth=4
" 设置tab的长度
set tabstop=4
" 设置tab自动转换为空格
set expandtab
" F2进入粘贴模式
set pastetoggle=<F2>
" 设置高亮
set hlsearch
" 设置实时高亮
set incsearch
" 设置不区分大小写
set ignorecase
" 启动vim不显示高亮内容
exec "nohlsearch"
" 设置智能大小写
set smartcase
" 设置默认分屏在右边
set splitright
" 设置字符集
set encoding=utf-8
" 设置100个字符提示
set colorcolumn=101
" 命令忽略大小写
set ignorecase
" 设置光标距离上下端部行数
set scrolloff=3
" 当前行高亮设置
set cursorline
highlight CursorLine cterm=NONE ctermbg=black ctermfg=green guibg=NONE guifg=NONE 

" 代码折叠
set foldmethod=indent
set foldlevel=99
" 设置主题
set background=dark
colorscheme hybrid

" 设置python文件格式
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=100
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" 标记空格颜色
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" 设置显示空白符
" set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣
" set listchars=tab:→,space:·
set listchars=tab:>-,space:·
set list
" set nolist

" ------------快捷键------------
inoremap jj <Esc>
" 设置编辑模式下光标切换
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-d> <Delete>
" 设置normal模式下窗口切换
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" 设置tab的快捷键
nnoremap <Tab>t :tabnew<cr>
nnoremap <Tab>w :tabc<cr>
nnoremap <Tab>j :tabp<cr>
nnoremap <Tab>l :tabn<cr>
nnoremap <Tab>s :tabs<cr>

noremap J 5j
noremap K 5k
noremap Y "+y
noremap P "+p

" 设置窗口大小调整
" nnoremap <C-<> ctrl-w <
map <leader>j :resize +5<CR>
map <leader>k :resize -5<CR>
map <leader>h :vertical resize -5<CR>
map <leader>l :vertical resize +5<CR>

" 设置leader键
let mapleader=','
let g:mapleader=','

" 代码折叠键
nnoremap <space> za

" ------------插件------------
call plug#begin('~/.config/nvim/plugged')
" 主题插件
Plug 'w0ng/vim-hybrid'
" 开屏优化
Plug 'mhinz/vim-startify'
" 目录树
Plug 'preservim/nerdtree'
" nerdtree兼容多标签
Plug 'jistr/vim-nerdtree-tabs'
" nerdtree显示git状态
Plug 'xuyuanp/nerdtree-git-plugin'
" 修改包裹的符号
Plug 'tpope/vim-surround'
" 快捷输入成对符号
Plug 'jiangmiao/auto-pairs'
" 全局文本搜索
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" apt/brew install ripgrep

" lsp 插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" 代码折叠
Plug 'tmhedberg/simpylfold'
" python IDE
" Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" 高亮当前单词
Plug 'lfv89/vim-interestingwords'
" 行号旁边显示git修改状态
Plug 'airblade/vim-gitgutter'
" vim命令行中使用git命令
Plug 'tpope/vim-fugitive'
" vim状态栏显示内容
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" 代码缩进线
Plug 'Yggdroot/indentLine'
" 当前页面光标快速跳转
Plug 'easymotion/vim-easymotion'
" 代码高亮
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" flake8代码检测
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'ncm2/ncm2-jedi'
" Plug 'prabirshrestha/vim-lsp'
" Plug 'mattn/vim-lsp-settings'
" Plug 'vim-syntastic/syntastic'
" Plug 'dense-analysis/ale'
" 函数大纲
" Plug 'majutsushi/tagbar'
call plug#end()

" --------------------------------------------------------------
" ----------------------------插件配置--------------------------

" ---------------coc.nvim---------------
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <leader>d :call ShowDocumentation()<CR>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  " else
  "  call feedkeys('K', 'in')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" --------------ncm2---------------------
" autocmd BufEnter * call ncm2#enable_for_buffer()
" set completeopt=noinsert,menuone,noselect
" set shortmess+=c
" inoremap <c-c> <ESC>
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" " 延迟弹窗,这样提示更加流畅
" let ncm2#popup_delay = 5
" "输入几个字母开始提醒:[[最小优先级,最小长度]]
" "如果是输入的是[[1,3],[7,2]],那么优先级在1-6之间,会在输入3个字符弹出,如果大于等于7,则2个字符弹出----优先级概念请参考文档中 ncm2-priority
" let ncm2#complete_length = [[1, 1]]
" "模糊匹配模式,详情请输入:help ncm2查看相关文档
" let g:ncm2#matcher = 'substrfuzzy'
" 
" " -----------------vim_lsp---------------
" if executable('pyls')
"     " pip install python-language-server
"     au User lsp_setup call lsp#register_server({
"         \ 'name': 'pyls',
"         \ 'cmd': {server_info->['pyls']},
"         \ 'allowlist': ['python'],
"         \ })
" endif
" 
" function! s:on_lsp_buffer_enabled() abort
"     setlocal omnifunc=lsp#complete
"     setlocal signcolumn=yes
"     if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
"     nmap <buffer> gd <plug>(lsp-definition)
"     nmap <buffer> gs <plug>(lsp-document-symbol-search)
"     nmap <buffer> gS <plug>(lsp-workspace-symbol-search)
"     nmap <buffer> gr <plug>(lsp-references)
"     nmap <buffer> gi <plug>(lsp-implementation)
"     nmap <buffer> gt <plug>(lsp-type-definition)
"     nmap <buffer> <leader>rn <plug>(lsp-rename)
"     nmap <buffer> [g <plug>(lsp-previous-diagnostic)
"     nmap <buffer> ]g <plug>(lsp-next-diagnostic)
"     nmap <buffer> K <plug>(lsp-hover)
"     nnoremap <buffer> <expr><c-f> lsp#scroll(+4)
"     nnoremap <buffer> <expr><c-d> lsp#scroll(-4)
" 
"     let g:lsp_format_sync_timeout = 1000
"     autocmd! BufWritePre *.rs,*.go call execute('LspDocumentFormatSync')
"     
"     " refer to doc to add more commands
" endfunction
" 
" augroup lsp_install
"     au!
"     " call s:on_lsp_buffer_enabled only for languages that has the server registered.
"     autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
" augroup END

" ----------------leaderf----------------
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_ShortcutF = "<leader>ff"
nnoremap <leader>fa :Leaderf rg<cr>
nnoremap <leader>fl :Leaderf line<cr>

" ---------------SimpylFold--------------
"  代码折叠显示文档
let g:SimpylFold_docstring_preview = 1

" ---------------vim-gitgutter------------
set updatetime=100

" ---------------NERDTREE-----------------
" nnoremap <leader>v :NERDTreeFind<cr>
" nnoremap <leader>g :NERDTreeToggle<cr>
nnoremap <leader>v :NERDTreeTabsFind<cr>
nnoremap <leader>g :NERDTreeTabsToggle<cr>
let NERDTreeShowHidden=1
let NERDTreeIgnore = [
        \ '.\git$', '\.swp$', '__pycache__$']
" ma 新建文件或文件夹
" autocmd VimEnter * NERDTree

" ---------------easymotion-----------------
nmap ss <Plug>(easymotion-s2)

" ---------------interestingwords------------
" leader k 来高亮或取消高亮单词，该配置已为默认配置
" nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
" vnoremap <silent> <leader>k :call InterestingWords('v')<cr>
" nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
" 
" nnoremap <silent> n :call WordNavigation(1)<cr>
" nnoremap <silent> N :call WordNavigation(0)<cr>

" -----------------indentLine----------------
" 设置第一层级开始显示缩进线
let g:indentLine_showFirstIndentLevel=1
let g:indentLine_conceallevel = 0
" let g:vim_json_syntax_conceal = 0 "" 为了防止导致json的引号自动隐藏
let g:indentLine_noConcealCursor=""  " 为了防止导致json的引号自动隐藏

" ------------------tagbar-----------------
nmap <F8> :TagbarToggle<CR>

" -----------------nerdtree git plugin------
" 默认git状态
" let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }
" 显示ignored的文件
let g:NERDTreeGitStatusShowIgnored = 1
" 去除git状态前的中括号
" let g:NERDTreeGitStatusConcealBrackets = 1
 
" " 高亮当前光标所在的单词
" autocmd CursorHold * silent call CocActionAsync('highlight')

" 命令注释
" Ctrl o 移动到上次的位置
" Ctrl i 移动到下次的位置
