-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- 主题插件
    use "EdenEast/nightfox.nvim"
    use "w0ng/vim-hybrid"

    -- 目录树
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        }
    }

    -- 模糊搜索
    use {
        'nvim-telescope/telescope.nvim', branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- surround
    use({
        "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    })

    -- 符号自动成对
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }

    -- 代码高亮
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- 彩虹括号
    use {
        "p00f/nvim-ts-rainbow"
    }

    -- coc
    use {
        'neoclide/coc.nvim', branch = 'release',
    }

    -- 浮动终端
    use {"akinsho/toggleterm.nvim", tag = "*"}
    use {"kdheepak/lazygit.nvim"}

    -- lsp
    -- use {
    --     "williamboman/mason.nvim",
    --     "williamboman/mason-lspconfig.nvim",
    --     "neovim/nvim-lspconfig",
    -- }

end)

