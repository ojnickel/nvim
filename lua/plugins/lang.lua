-- Language-specific plugins
return {
  -- WordPress specific
  { "dsawardekar/wordpress.vim", ft = "php" },

  -- Markdown renderer
  -- Note: Temporarily disabled due to incompatibility with Neovim 0.12.0-dev
  -- Uncomment when plugin is updated or when using stable Neovim
  -- {
  --   "MeanderingProgrammer/render-markdown.nvim",
  --   ft = "markdown",
  --   dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" },
  --   opts = {
  --     heading = {
  --       enabled = true,
  --       icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
  --     },
  --     code = {
  --       enabled = true,
  --       style = "full",
  --     },
  --     checkbox = {
  --       enabled = true,
  --       unchecked = { icon = "󰄱 " },
  --       checked = { icon = "󰱒 " },
  --     },
  --   },
  -- },

  -- Alternative: markdown-preview.nvim for live preview in browser
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    build = "cd app && npm install",
    config = function()
      vim.g.mkdp_auto_start = 0
      vim.g.mkdp_auto_close = 1
      vim.g.mkdp_refresh_slow = 0
      vim.g.mkdp_browser = ''
    end,
  },

  -- Database
  { "tpope/vim-dadbod" },
  { "kristijanhusak/vim-dadbod-ui" },
  { "kristijanhusak/vim-dadbod-completion" },

  -- Docker
  { "ekalinin/Dockerfile.vim", ft = "dockerfile" },
}
