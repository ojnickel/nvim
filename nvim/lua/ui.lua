-- ui.lua

-- VS Code theme
vim.cmd("colorscheme vscode")
vim.g.vscode_style = "dark"
vim.g.vscode_transparent = 1
vim.g.vscode_italic_comment = 1

-- Neo-tree (VS Code-like file explorer)
require("neo-tree").setup({
  close_if_last_window = false,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  window = {
    position = "left",
    width = 30,
    mapping_options = {
      noremap = true,
      nowait = true,
    },
  },
  filesystem = {
    visible = true,
    hide_dotfiles = false,
    hide_gitignored = false,
    hide_hidden = false,
    follow_current_file = {
      enabled = true,
    },
    use_libuv_file_watcher = true,
  },
  buffers = {
    follow_current_file = {
      enabled = true,
    },
  },
  git_status = {
    symbols = {
      added     = "✚",
      modified  = "",
      deleted   = "✖",
      renamed   = "",
      untracked = "",
      ignored   = "",
      unstaged  = "",
      staged    = "",
      conflict  = "",
    }
  },
})

-- Lualine (status line)
require("lualine").setup({
  options = {
    theme = 'vscode',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    icons_enabled = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
})

-- Bufferline (VS Code-like tabs)
require("bufferline").setup({
  options = {
    mode = "buffers",
    separator_style = "thin",
    always_show_bufferline = true,
    show_buffer_close_icons = true,
    show_close_icon = true,
    color_icons = true,
    diagnostics = "nvim_lsp",
    diagnostics_update_in_insert = false,
    offsets = {
      {
        filetype = "neo-tree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
  }
})

-- Terminal integration
require("toggleterm").setup({
  size = 20,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_terminals = true,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = "horizontal",
  close_on_exit = true,
  shell = vim.o.shell,
})

-- Autopairs
require("nvim-autopairs").setup({
  check_ts = true,
  ts_config = {
    lua = {'string'},
    javascript = {'template_string'},
  }
})

-- Auto-tag for HTML/JSX
require("nvim-ts-autotag").setup({
  filetypes = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact", "php" },
})

-- Git signs
require("gitsigns").setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
})

-- Indent guides
require("ibl").setup({
  indent = {
    char = "│",
    tab_char = "│",
  },
  scope = { enabled = false },
  exclude = {
    filetypes = {
      "help",
      "alpha",
      "dashboard",
      "neo-tree",
      "Trouble",
      "trouble",
      "lazy",
      "mason",
      "notify",
      "toggleterm",
      "lazyterm",
    },
  },
})

-- Comments
require("Comment").setup()

-- Color highlighter
require("colorizer").setup()

-- Which-key
require("which-key").setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
  },
})

-- Alpha (start screen)
local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  "                                                     ",
  "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
  "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
  "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
  "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
  "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
  "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
  "                                                     ",
  "    🚀 Ready for WordPress & Web Development! 🚀    ",
}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", ":Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Configuration", ":e ~/.config/nvim/init.lua <CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

alpha.setup(dashboard.opts)

-- Satellite (minimap alternative)
require("satellite").setup({
  current_only = false,
  winblend = 50,
  zindex = 40,
  excluded_filetypes = {
    "prompt",
    "TelescopePrompt",
    "noice",
    "notify",
    "neo-tree",
  },
  width = 2,
  handlers = {
    cursor = {
      symbols = { '⎺', '⎻', '⎼', '⎽' }
    },
    search = {
      enable = true,
    },
    diagnostic = {
      enable = true,
      signs = {'-', '=', '≡'},
    },
    gitsigns = {
      enable = true,
      signs = {
        add = "│",
        change = "│",
        delete = "-",
      },
    },
    marks = {
      enable = true,
      show_builtins = false,
    },
  },
})
