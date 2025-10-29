# Neovim Configuration

A comprehensive Neovim configuration written in Lua, optimized for modern web development with a focus on WordPress development. Features a VS Code-like experience with powerful LSP integration, Git tools, and modular plugin architecture.

## Features

- **Modern Plugin Management**: Lazy.nvim with automatic bootstrapping
- **LSP Integration**: Full language server support with Mason for automatic installation
- **Beautiful UI**: Catppuccin theme, Neo-tree file explorer, lualine status bar
- **Git Integration**: Fugitive and Gitsigns for comprehensive Git workflow
- **WordPress Development**: Dedicated snippets and WordPress.vim integration
- **Database Management**: vim-dadbod suite for database operations
- **Smart Completion**: nvim-cmp with multiple sources and LuaSnip snippets
- **Fuzzy Finding**: Telescope for files, buffers, and live grep
- **Syntax Highlighting**: Treesitter for accurate syntax highlighting
- **Integrated Terminal**: ToggleTerm for seamless terminal integration

## Requirements

- Neovim >= 0.9.0
- Git
- Node.js and npm (for LSP servers)
- ripgrep (for Telescope live grep)
- A Nerd Font (for icons)
- For WSL: clip.exe for clipboard integration

## Installation

### Quick Start

```bash
# Backup existing config if you have one
mv ~/.config/nvim ~/.config/nvim.backup

# Clone this repository
git clone https://github.com/yourusername/nvim.git ~/.config/nvim

# Start Neovim (plugins will auto-install)
nvim
```

### First Launch

On first launch, Lazy.nvim will automatically:
1. Bootstrap itself
2. Install all plugins defined in `lua/plugins/`
3. Set up the Catppuccin colorscheme

After plugins install, run:
```vim
:Mason
```
to install LSP servers interactively, or they will install automatically when you open supported files.

## Configuration Structure

```
~/.config/nvim/
├── init.lua                      # Main entry point
├── CLAUDE.md                     # AI assistant instructions
├── lazy-lock.json                # Plugin version lock file
└── lua/
    ├── settings.lua              # Vim options and general settings
    ├── keymaps.lua               # Key mappings and leader configuration
    ├── lsp.lua                   # LSP server setup and completion
    ├── ui.lua                    # UI component configurations
    ├── wordpress.lua             # WordPress-specific utilities
    ├── plugins.lua               # Lazy.nvim bootstrap
    ├── plugins/                  # Modular plugin definitions
    │   ├── colorscheme.lua       # Theme configurations
    │   ├── ui.lua                # UI plugins (neo-tree, lualine, etc.)
    │   ├── editor.lua            # Editor enhancements (telescope, etc.)
    │   ├── lsp.lua               # LSP and completion plugins
    │   ├── treesitter.lua        # Treesitter configuration
    │   ├── git.lua               # Git integration plugins
    │   ├── terminal.lua          # Terminal plugins
    │   ├── lang.lua              # Language-specific plugins
    │   └── formatting.lua        # Code formatting plugins
    └── snippets/
        └── wordpress.lua         # WordPress code snippets
```

## Key Mappings

### Leader Key
The leader key is set to `-` (dash)

### File Operations
- `<leader>w` - Save file
- `<leader>q` - Quit without saving
- `<leader>x` - Save and quit
- `<F2>` - Toggle Neo-tree file explorer
- `<F3>` - Toggle paste mode
- `<F5>` - Toggle scrollbar

### Navigation
- `<leader>l` - Next buffer
- `<leader>h` - Previous buffer
- `<leader>d` - Delete buffer
- `<leader>bq` - Close buffer and move to previous
- `<leader>bl` - List all buffers
- `t` - New buffer

### Search & Find (Telescope)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep search
- `<leader>fb` - Buffer list
- `<leader>fh` - Help tags

### LSP Operations
- `gd` - Go to definition
- `gr` - Show references
- `K` - Show hover information
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `<leader>f` - Format document
- `[d` - Previous diagnostic
- `]d` - Next diagnostic

### Git Integration
- `<leader>gs` - Git status
- `<leader>gc` - Git commit
- `<leader>ga` - Git add current file
- `<leader>gp` - Git push
- `<leader>gl` - Git pull
- `<leader>gd` - Git diff
- `<leader>gb` - Git blame

### Terminal
- `<leader>t` - Toggle terminal
- `<C-\><C-n>` - Exit terminal mode

### Database
- `<leader>db` - Toggle database UI

### Visual Mode
- `<leader>c` - Toggle cursor line/column
- `<leader>y` - Copy to Windows clipboard (WSL)

## Plugin List

### Colorschemes
- **catppuccin/nvim** - Primary theme (mocha flavor)
- **folke/tokyonight.nvim** - Alternative theme
- **Mofiqul/vscode.nvim** - VS Code theme

### UI Components
- **nvim-neo-tree/neo-tree.nvim** - File explorer
- **nvim-lualine/lualine.nvim** - Status line
- **akinsho/bufferline.nvim** - Buffer tabs
- **lukas-reineke/indent-blankline.nvim** - Indent guides
- **goolord/alpha-nvim** - Start screen
- **dstein64/nvim-scrollview** - Scrollbar

### Editor Enhancements
- **nvim-telescope/telescope.nvim** - Fuzzy finder
- **folke/which-key.nvim** - Key binding hints
- **numToStr/Comment.nvim** - Smart commenting
- **windwp/nvim-autopairs** - Auto close pairs
- **norcalli/nvim-colorizer.lua** - Color preview

### LSP & Completion
- **neovim/nvim-lspconfig** - LSP configurations
- **williamboman/mason.nvim** - LSP installer
- **williamboman/mason-lspconfig.nvim** - Mason bridge
- **hrsh7th/nvim-cmp** - Completion engine
- **hrsh7th/cmp-nvim-lsp** - LSP completion source
- **hrsh7th/cmp-buffer** - Buffer completion
- **hrsh7th/cmp-path** - Path completion
- **L3MON4D3/LuaSnip** - Snippet engine
- **rafamadriz/friendly-snippets** - Snippet collection

### Syntax & Parsing
- **nvim-treesitter/nvim-treesitter** - Syntax highlighting

### Git Integration
- **tpope/vim-fugitive** - Git commands
- **lewis6991/gitsigns.nvim** - Git decorations

### Language-Specific
- **dsawardekar/wordpress.vim** - WordPress development
- **preservim/vim-markdown** - Markdown support
- **iamcco/markdown-preview.nvim** - Live markdown preview
- **tpope/vim-dadbod** - Database interface
- **kristijanhusak/vim-dadbod-ui** - Database UI
- **ekalinin/Dockerfile.vim** - Docker syntax

### Formatting
- **mattn/emmet-vim** - Emmet abbreviations
- **windwp/nvim-ts-autotag** - Auto close HTML tags
- **jose-elias-alvarez/null-ls.nvim** - Code formatting
- **MunifTanjim/prettier.nvim** - Prettier integration

### Terminal
- **akinsho/toggleterm.nvim** - Terminal integration

## LSP Servers

Configured LSP servers (auto-installed via Mason):
- **HTML**: html-lsp
- **CSS/SCSS**: css-lsp
- **JavaScript/TypeScript**: tsserver
- **PHP**: intelephense (with WordPress stubs)
- **Python**: pyright
- **Bash**: bashls
- **Docker**: dockerls
- **SQL**: sqlls
- **Lua**: lua-ls
- **Emmet**: emmet_ls

## Treesitter Parsers

Auto-installed parsers for:
- HTML, CSS, SCSS
- JavaScript, TypeScript
- PHP, Python
- Dockerfile, SQL
- Lua

## Customization

### Changing the Theme

Edit `lua/plugins/colorscheme.lua` and modify line 59:
```lua
vim.cmd.colorscheme("catppuccin")  -- Change to "tokyonight" or "vscode"
```

### Adding New Plugins

Create or edit files in `lua/plugins/` directory. For example, to add a new plugin:

```lua
-- lua/plugins/your-category.lua
return {
  {
    "author/plugin-name",
    config = function()
      require("plugin-name").setup({
        -- your configuration
      })
    end,
  },
}
```

### Custom Key Mappings

Add mappings to `lua/keymaps.lua`:
```lua
map("n", "<leader>your_key", ":YourCommand<CR>", { desc = "Description" })
```

### LSP Server Configuration

Modify `lua/lsp.lua` to customize LSP settings or add new servers.

## WordPress Development

### WordPress Snippets

Custom WordPress snippets are available in `lua/snippets/wordpress.lua`:
- Post type registration
- Custom hooks
- Meta boxes
- Common WordPress functions

### Using WordPress Snippets

In a PHP file, type the snippet prefix and press `<Tab>` to expand:
- `wpptype` - Register post type
- `wphook` - Add action hook
- `wpmeta` - Register meta box

## Commands

### Plugin Management
```vim
:Lazy              " Open Lazy.nvim UI
:Lazy update       " Update all plugins
:Lazy install      " Install missing plugins
:Lazy clean        " Remove unused plugins
```

### LSP Management
```vim
:Mason             " Open Mason UI
:LspInfo           " Show LSP client info
:LspRestart        " Restart LSP server
```

### File Explorer
```vim
:Neotree toggle    " Toggle file tree
:Neotree focus     " Focus file tree
```

### Database
```vim
:DBUI              " Open database UI
```

### Git
```vim
:Git status        " Git status
:Git commit        " Git commit
:Git push          " Git push
```

## Troubleshooting

### Plugins Not Loading

```vim
:Lazy restore      " Restore plugins from lockfile
:Lazy clear        " Clear plugin cache
```

### LSP Not Working

```vim
:Mason             " Check LSP server installation
:LspInfo           " Check LSP client status
:checkhealth       " Run Neovim health check
```

### Clipboard Issues (WSL)

Ensure `clip.exe` is accessible:
```bash
which clip.exe
```

If not found, check your Windows PATH is available in WSL.

### Slow Startup

Check startup time:
```bash
nvim --startuptime startup.log
```

Consider disabling unused plugins by setting `lazy = true` in plugin config.

## Updates

### Update Plugins
```vim
:Lazy update
```

### Update LSP Servers
```vim
:Mason
# Press 'U' to update all
```

### Sync Configuration

To sync changes from `~/.config/nvim` to this repository:
```bash
rsync -av --exclude='.claude' --exclude='.git' ~/.config/nvim/ ~/git/nvim/
cd ~/git/nvim
git add .
git commit -m "Update configuration"
git push
```

## License

MIT License - Feel free to use and modify for your own setup.

## Credits

Built with contributions from the amazing Neovim community and plugin authors.

---

**Maintained by**: nickel
**Last Updated**: October 2024
