# STOLEN neovim config

## quick start

### 字体支持

nerd font firacode

MacOs Homebrew 安装方法

```shell
brew tap homebrew/cask-fonts
brew install font-fira-code
```

### 插件管理器

[packer 仓库](https://github.com/wbthomason/packer.nvim)

`git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`

### 搜索支持

[ripgrep 搜索](https://github.com/BurntSushi/ripgrep)

`brew install ripgrep` - 安装ripgrep 以供支持telescope的live grep模糊搜索

### treesitter

需要安装node

- `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash` - nvm
- `nvm install node` - node

### coc

[coc language server](https://github.com/neoclide/coc.nvim/wiki/Language-servers)

[coc extentions](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions)

`:CocInstall coc-json coc-markdownlint coc-html coc-css coc-tsserver coc-pyright coc.git`

- `coc-json` - 支持json语法
- `coc-markdownlint` - 支持markdown语法及检测
- `coc-html coc-css coc-tsserver` - 前端服务支持
- `coc-pyright` - python 语法服务器
- `coc-git` - git支持工具
