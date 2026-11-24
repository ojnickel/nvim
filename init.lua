-- init.lua

-- Hide the vim.tbl_flatten deprecation notice (comes from third-party plugins,
-- not this config). Every other deprecation warning still shows.
do
  local deprecate = vim.deprecate
  vim.deprecate = function(name, ...)
    if name == "vim.tbl_flatten" then return end
    return deprecate(name, ...)
  end
end

-- Bootstrap lazy.nvim
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

-- Load configuration
require("settings")
require("keymaps")

-- Setup lazy.nvim with plugins from lua/plugins/ directory
require("lazy").setup("plugins", {
  defaults = {
    lazy = false,
    version = false,
  },
  install = { colorscheme = { "catppuccin" } },
  checker = { enabled = true },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

-- Load LSP and snippets after plugins
require("lsp")
require("snippets.wordpress")
