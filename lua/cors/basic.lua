-- vim.o 获取或设置常规设置
-- vim.wo 获取或设置窗口范围的设置
-- vim.bo 获取或设置缓冲区范围的设置
-- vim.g 获取或设置全局设置
-- vim.env 获取或设置环境变量
-- vim.opt 类似vimscript中的set进行配置

-- utf-8编码
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- jkhl 移动时光标时上下留的行数
vim.o.scrolloff = 5

-- 显示行号，不显示相对行号
vim.wo.number = true
vim.wo.relativenumber = false

-- 高亮所在行
vim.wo.cursorline = true

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "100"

-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 搜索高亮
vim.o.hlsearch = true

-- 边输入边搜索
vim.o.incsearch = true

-- 命令行高，提供足够的显示空间
vim.o.cmdheight = 0

-- 显示命令行
vim.opt.showcmd = true

-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.wo.wrap = true

-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,]"

-- 不允许隐藏被修改过的buffer
-- toggleterm 需要设置为true才能保持窗口存留
vim.o.hidden = true

-- 鼠标支持
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300

-- 设置按键等待
vim.o.timeoutlen = 1000

-- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒，可根据需要设置
-- 遇到问题详见：https://github.com/nshen/learn-neovim-lua/issues/1
-- vim.o.timeoutlen = 500
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
-- vim.g.completeopt = "menu,menuone,noselect,noinsert"
vim.opt.completeopt = "menuone,noinsert,noselect"

-- 补全增强，命令行补全
vim.o.wildmenu = true

-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. "c"

-- 补全最多显示10行
vim.o.pumheight = 10

-- 永远显示 tabline
vim.o.showtabline = 2

-- 使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false

-- 配置剪切板
vim.opt.clipboard = "unnamedplus"

-- wsl 使用系统剪贴板
if vim.fn.has('wsl') then
  vim.cmd [[
  augroup Yank
  autocmd!
  autocmd TextYankPost * :call system('/mnt/c/windows/system32/clip.exe ',@")
  augroup END
  ]]
end

-- 开启拼写检查
vim.opt.spell = false

-- 检查英文单词，排除汉语检查
vim.opt.spelllang = "en_us,cjk"

-- hl允许换行移动
-- vim.opt.whichwrap:append("<>[]hl")
-- 代码高亮
vim.opt.syntax = 'on'

-- 是否显示不可见字符
vim.o.list = true
-- 不可见字符的显示，这里只把空格显示为一个点
vim.opt.listchars:append("space:⋅")
-- vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("tab:↹ ")
-- vim.o.listchars = "space:·,tab:->"

-- 启用vim的ftplugin插件
-- vim.g.do_filetype_lua = 1
-- 不要禁用ftplugin插件
-- vim.g.did_load_filetypes = 0
-- 自动缩进规则读取ftplugin文件
-- vim.o.filetype = 'plugin'
-- vim.opt.filetype = 'plugin'

-- 设置符号栏宽度，不设置会导致图标显示异常
vim.opt.signcolumn = "yes:1"

-- 允许窗口显示编辑的文件名
vim.opt.title = true

-- 显示当前的vim模式
vim.opt.showmode = true

-- 显示光标位置的行号和列号
vim.opt.ruler = true

-- 允许循环搜索整个文件
-- vim.o.wrapscan = true

-- 允许显示匹配的符号
vim.opt.showmatch = true

-- 显示匹配的符号持续的时间，默认为5
vim.opt.matchtime = 2

-- 允许折叠
vim.opt.foldenable = true
-- 折叠的方式
vim.opt.foldmethod = "indent"
-- 折叠的深度
vim.opt.foldlevel = 99
-- 自然换行
vim.opt.linebreak = true

-- 设置允许的单词分隔符
vim.opt.iskeyword = "@,48-57,_,192-255"

-- 设置全局状态栏
vim.opt.laststatus = 3
-- 启用全局状态栏后，启用更明显的分隔符
vim.opt.fillchars = "vert:┃,horiz:━,verthoriz:╋,horizup:┻,horizdown:┳,vertleft:┫,vertright:┣"

-- 设置主题
vim.o.termguicolors = true

-- 设置最后一个空行
vim.opt.binary = true
vim.opt.endofline = false