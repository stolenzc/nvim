# stolen neovim config

## requirements

- neovim


## install

```
Ubuntu:
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

MacOS:
brew install neovim
```

## quick shortcut

- `jj` - 退出到normal模式
- `<tab> t` - 新建tab页
- `<tab> h` - 切换到上一个标签页
- `<tab> l` - 切换到下一个标签页
- `<tab> w` - 关闭标签页
- `<tab> s` - 显示所有标签页


- `J` - 向下移动5行
- `K` - 向上移动5行
- `Y` - 拷贝数据到系统剪贴板
- `P` - 粘贴剪贴板数据

insert模式

## normal command

- `:source ~/.config/nvim/init.vim` - 重新加载vim设置
- `:e!` - 重新加载当前文件

## 插件安装与使用

### nerdtree

- `<leader> + g` - toggle 目录树
- `<leader> + v` - 查找当前文件所在目录位置
- `m` - 光标聚焦在nerdtree中使用m操作文件

### control p

- `ctrl p` - 唤起文件查找

### easymotion

- `ss 两个字母` - 唤起页面内查找

### leaderf

- `:LeaderfInstallCExtention` - 安装c插件
- `:Leaderf help` - 查找配置帮助
- `https://github.com/BurntSushi/ripgrep` - 全局模糊搜索依赖

### tagbar

依赖于ctags
`https://github.com/universal-ctags/ctags`

### vim-surround

- `cs` - 修改符号
- `ds` - 删除符号
- `ys` - 添加符号
