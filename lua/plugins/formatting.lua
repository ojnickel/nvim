-- Formatting and code generation plugins
return {
  -- Emmet
  { "mattn/emmet-vim" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "php" },
      })
    end,
  },

  -- Formatting
  { "jose-elias-alvarez/null-ls.nvim" },
  { "MunifTanjim/prettier.nvim" },
}
