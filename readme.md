# stolen neovim config

## requirements

- neovim


## install

```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
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

- `source ~/.config/nvim/init.vim` - 重新加载vim设置

## 插件快捷键

### nerdtree

- `<leader> + g` - toggle 目录树
- `<leader> + v` - 查找当前文件所在目录位置

### control p

- `ctrl p` - 唤起文件查找

### easymotion

- `ss 两个字母` - 唤起页面内查找

### leaderf

- `:LeaderfInstallCExtention` 安装c插件
- `:Leaderf help 查找配置帮助`

