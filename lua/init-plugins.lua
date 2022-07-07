return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy search
    use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
      config = require'plugin.telescope'
    }

    -- Treesitter: Prettier highlighting
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate',
      config = require'plugin.treesitter'
    }

    -- Autocomplete
    use {
      'hrsh7th/nvim-cmp',
      config = require'plugin.nvim-cmp'
    }
    use { 'hrsh7th/cmp-nvim-lsp' }
    -- Snippets
    use {'hrsh7th/vim-vsnip'}
    use {'hrsh7th/vim-vsnip-integ'}

    -- General language config neovim's built-in lsp
    use {
      'neovim/nvim-lspconfig',
      requires = {
        'hrsh7th/nvim-cmp',
      },
      config = require'plugin.lspconfig'
    }

    -- Commenting text in/out
    use {
      'b3nj5m1n/kommentary',
      config = require'plugin.kommentary',
    }

    -- File Explorer
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons'
      },
      config = require'plugin.nvim-tree'
    } 

    -- Icons
    -- To enable on Windows, see NerdFonts.com Caskaydia Cove Nerd Font. You
    -- will either need to enable this in vim (vim.o.guifont) or Windows
    -- Terminal directly.
    use {
      'kyazdani42/nvim-web-devicons',
      config = require'plugin.nvim-web-devicons'
    }

    use {
      'ms-jpq/coq_nvim',
      branch = 'coq',
    }

    -- Theme: Moonfly
    use 'bluz71/vim-moonfly-colors'

    -- Tabline
    use {
      'romgrk/barbar.nvim',
      requires = {
        'kyazdani42/nvim-web-devicons',
      },
      config = require'plugin.barbar'
    }


end)

