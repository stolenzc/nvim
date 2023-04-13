# 快捷键及命令指南

默认 `<Leader>` 快捷按键配置为`,`

## neovim 命令行终端

`:terminal` / `:te` - 开启一个命令行终端
`:sp term://$SHELL` - 横向分屏一个命令行窗口
`:vs term://$SHELL` - 纵向分屏一个命令行窗口
`:so` - 重新读取配置加载vim

## 默认快捷键映射

`jj` - 退出编辑模式
`J`/`K` - 在normal或view模式下快速上下移动
`Ctrl + h/j/k/l` - 在normal模式下窗口跳转
`Ctrl + j/k` - 在view模式下移动选中行
`H/L` - 在 normal 或 view 模式下行首或行尾移动
`<ESC>` - 在normal 模式下取消搜索高亮
`< / >` - 在 view 模式下代码锁进

## nvim-tree

[nvim tree lua](https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt)

- `<Leader>g` - 切换目录树
- `<leader>v` - 定位当前文件所在目录对位置
- `a` - 新建文件
- `d` - 删除文件
- `W` - 折叠所有目录
- `E` - 展开当前目录下所有子目录
- `<Ctrl>x` - 在水平方向分屏打开文件
- `<Ctrl>v` - 在垂直方向分屏打开文件
- `<Ctrl>t` - 在新标签页中打开文件
- `<Ctrl>k` - 切换显示文件或目录详细信息
- `<Ctrl>]` - 将子目录作为根目录，cd功能

## telescope

- `<leader>ff` - 工作区文件名搜索
- `<leader>fa` - live grep 工作区文件内容搜索
- `<leader>fc` - 搜索当前文件内容

## surround

[surround 快捷键文档](https://github.com/kylechui/nvim-surround)

- `ys[object][symbol]` - 在 vim object 外添加一个 symbol ，例如 `ysiw(`
- `ds[symbol]` - 删除最靠近光标的symbol对
- `cs[symbol1][symbol2]` - 将最靠近光标对 symbol1 改为 symbol2
- `cst[tagname]` - 将最近的 tag 对改为新的 tag 对

## coc

- `gd` - go to defination

- `M` - 在normal模式下用M查看文档

## toggleterm

注意：需要设置 `vim.opt.hidden=true` 保证命令窗口切换时能在后台保留

- `<leader>t` - 切换toggleterm
- `jj` - 在toggleterm模式下退出编辑
