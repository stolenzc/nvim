-- 设置leader按键
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- 本地变量
-- 之后就可以这样映射按键了
-- map('模式','按键','映射为XX',opt)
local map = vim.api.nvim_set_keymap
-- local bmap = vim.api.nvim_buf_set_keymap
-- local dgmap = vim.api.nvim_del_keymap
-- local dbmap = vim.api.nvim_buf_del_keymap
local opt = {noremap = true, silent = true }

-- 快捷退出
map('i', 'jj', '<Esc>', opt)

map('n', 'J', '5j', opt)
map('n', 'K', '5k', opt)

map('v', 'J', '5j', opt)
map('v', 'K', '5k', opt)

-- 移动选中行
map('v', '<C-j>', ":m '>+1<CR>gv=gv", opt)
map('v', '<C-k>', ":m '<-2<CR>gv=gv", opt)

-- 光标移动
map('n', '<C-h>', '<C-w>h', opt)
map('n', '<C-l>', '<C-w>l', opt)
map('n', '<C-j>', '<C-w>j', opt)
map('n', '<C-k>', '<C-w>k', opt)

-- 使用HL替代^$
map('n', 'H', '5h', opt)
map('n', 'L', '5l', opt)
map('v', 'H', '5h', opt)
map('v', 'L', '5l', opt)
-- map("n", "H", "^", opt)
-- map("v", "H", "^", opt)
-- map("n", "L", "$", opt)
-- map("v", "L", "$", opt)

-- 选中模式下粘贴不影响剪贴板内容
map('v', 'p', 'pgvy', opt)

-- 正常模式下 esc取消搜索高亮
map('n', '<ESC>', ':nohlsearch<CR>', opt)

-- 代码缩进
map('v', '<', '<gv', opt)
map('v', '>', '>gv', opt)

-- nvimTree
map('n', '<leader>g', ':NvimTreeToggle<CR>', opt)
map('n', '<leader>v', ':NvimTreeFindFile<CR>', opt)

-- toggleterm
map('n', '<leader>t', ':ToggleTerm<CR>', opt)

-- bufferline
-- map('n', '<leader>bh', ':BufferLineCyclePrev<CR>', opt)
-- map('n', '<leader>bl', ':BufferLineCycleNext<CR>', opt)
-- map('n', '<leader>bw', ':BufferLinePickClose<CR>', opt)
-- map('n', '<Tab>h', ':BufferLineCyclePrev<CR>', opt)
-- map('n', '<Tab>l', ':BufferLineCycleNext<CR>', opt)
-- map('n', '<Tab>w', ':BufferLinePickClose<CR>', opt)
-- map('n', '<silent>[b', ':BufferLineCycleNext<CR>', opt)
-- map('n', '<silent>b]', ':BufferLineCyclePrev<CR>', opt)
-- map('n', '<Tab>w', ':BufferLinePickClose<CR>', opt)

-- telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', opt)
map('n', '<leader>fa', ':Telescope live_grep<CR>', opt)
map('n', '<leader>fc', ':Telescope current_buffer_fuzzy_find<CR>', opt)

-- lsp
-- map('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename<CR>', opt)
  -- code action
--map('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action<CR>', opt)
-- go xx
-- map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opt)
-- map('n', 'gh', '<cmd>lua vim.lsp.buf.hover()<CR>', opt)
-- map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opt)
-- map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opt)
-- map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opt)
-- diagnostic
-- map('n', 'go', '<cmd>lua vim.diagnostic.open_float()<CR>', opt)
-- map('n', 'gp', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opt)
-- map('n', 'gn', '<cmd>lua vim.diagnostic.goto_next()<CR>', opt)
-- mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist<CR>', opt)
-- leader + =
-- map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>', opt)

