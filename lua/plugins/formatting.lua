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
  -- (null-ls.nvim removed: archived upstream since 2023, was declared here
  -- but never .setup() — dead weight, not wired into anything)
  { "MunifTanjim/prettier.nvim" },
}
