-- plugins.lua
local ensure_lazy = function()
  local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
  if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
      "git",
      "clone",
      "--filter=blob:none",
      "https://github.com/folke/lazy.nvim.git",
      "--branch=stable",
      lazypath,
    })
  end
  vim.opt.rtp:prepend(lazypath)
end

ensure_lazy()

require("lazy").setup({
  -- File Explorer (VS Code-like sidebar)
  { "nvim-neo-tree/neo-tree.nvim", 
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },

  -- Fuzzy Finding
  { "nvim-telescope/telescope.nvim", 
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require('telescope').setup({
        defaults = {
          layout_config = { height = 0.8, width = 0.9 }
        }
      })
    end
  },
  { "nvim-telescope/telescope-file-browser.nvim" },

  -- Status Line & UI
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },
  { "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },
  
  -- VS Code Theme
  { "Mofiqul/vscode.nvim" },
  { "folke/tokyonight.nvim" },

  -- Syntax Highlighting
  { "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
      require('nvim-treesitter.configs').setup({
        ensure_installed = { "html", "css", "scss", "javascript", "typescript", "php", "python", "dockerfile", "sql", "lua" },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  },

  -- LSP Configuration
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/cmp-cmdline" },
  
  -- Snippets
  { "L3MON4D3/LuaSnip", version = "v2.*" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },

  -- Emmet
  { "mattn/emmet-vim" },
  { "windwp/nvim-ts-autotag" },

  -- Auto pairs and formatting
  { "windwp/nvim-autopairs" },
  { "jose-elias-alvarez/null-ls.nvim" },
  { "MunifTanjim/prettier.nvim" },

  -- Git Integration
  { "tpope/vim-fugitive" },
  { "lewis6991/gitsigns.nvim" },

  -- Terminal
  { "akinsho/toggleterm.nvim", version = "*" },

  -- Indent guides
  { "lukas-reineke/indent-blankline.nvim", main = "ibl" },

  -- Comments
  { "numToStr/Comment.nvim" },

  -- Which key
  { "folke/which-key.nvim" },

  -- Web development specific
  { "norcalli/nvim-colorizer.lua" }, -- Color preview
  { "preservim/vim-markdown", ft = "markdown" },
  
  -- WordPress specific
  { "dsawardekar/wordpress.vim", ft = "php" },
  
  -- Database
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },
  { "kristijanhusak/vim-dadbod-completion" },

  -- Docker
  { "ekalinin/Dockerfile.vim", ft = "dockerfile" },

  -- Start screen
  { "goolord/alpha-nvim" },

  -- Minimap alternative - Satellite (better for Neovim)
  { "lewis6991/satellite.nvim" },
})
