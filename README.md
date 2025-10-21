# 🚀 Modern Neovim Configuration for WordPress & Web Development

A powerful, fully-featured Neovim configuration optimized for WordPress and modern web development. This setup transforms Neovim into a VS Code-like IDE while maintaining the efficiency and speed of Vim, with support for HTML, CSS/SCSS, JavaScript/TypeScript, PHP, Python, Docker, SQL, and Fish shell.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white)

**Neovim 0.11+** compatible with modern `vim.lsp.config` API

---

## 📑 Table of Contents

- [Features](#-features)
- [Plugin Ecosystem](#-plugin-ecosystem)
- [Installation](#-installation)
- [LSP Servers](#-lsp-servers)
- [Complete Keybindings Reference](#-complete-keybindings-reference)
- [WordPress Development](#-wordpress-development-features)
- [Configuration Structure](#-configuration-structure)
- [Customization Guide](#-customization-guide)
- [Auto-Sync Configuration](#-auto-sync-configuration)
- [Troubleshooting](#-troubleshooting)
- [Learning Resources](#-learning-resources)

---

## ✨ Features

### 🎨 Modern IDE Experience
- **Catppuccin Mocha Theme** - Beautiful, modern color scheme with excellent syntax highlighting
- **Neo-tree File Explorer** - VS Code-like sidebar with Git integration and file icons
- **Bufferline Tabs** - Visual buffer tabs with close buttons and file type icons
- **Lualine Status Line** - Informative status line with Git status, LSP diagnostics, and file info
- **Alpha Start Screen** - Customizable dashboard with quick actions and recent files
- **Smooth Scrolling** - Animated scrolling with neoscroll.nvim for better visual feedback
- **Beautiful Notifications** - Non-intrusive notification popups with nvim-notify
- **Enhanced UI Components** - Better input and select dialogs with dressing.nvim

### ⚡ Developer Productivity
- **Harpoon Navigation** - Lightning-fast file bookmarking and switching (game-changer!)
- **Telescope Fuzzy Finder** - Find files, text, buffers, and help tags instantly
- **Trouble Diagnostics** - Beautiful list for diagnostics, references, and quickfix
- **Undotree** - Visual undo history tree for safe experimentation
- **nvim-spectre** - Project-wide search and replace with live preview
- **Git Integration** - Fugitive and Gitsigns for comprehensive Git workflow
- **Database UI** - Built-in database management for WordPress development
- **REST Client** - Test APIs directly from Neovim with rest.nvim
- **Integrated Terminal** - ToggleTerm for seamless terminal access

### 🔧 Language & Framework Support
- **12 LSP Servers** - Automatic installation and configuration via Mason
- **Treesitter** - Advanced syntax highlighting and code understanding
- **Auto-completion** - Intelligent suggestions from LSP, snippets, buffer, and path
- **Emmet Support** - Fast HTML/CSS expansion
- **WordPress Stubs** - Full WordPress function definitions and hook suggestions
- **Tailwind CSS Tools** - IntelliSense and utilities for Tailwind development
- **Fish Shell Support** - Syntax highlighting for Fish shell scripts
- **Auto-pairs & Auto-tags** - Automatic bracket and HTML tag closing

### 🎯 UX & Navigation
- **Nvim-surround** - Easily add/change/delete surrounding characters
- **Comment.nvim** - Smart commenting with treesitter integration
- **Which-key** - Interactive keybinding hints
- **Indent Guides** - Visual indent lines for better code structure
- **Colorizer** - Live CSS color preview
- **Scrollbar** - Visual scrollbar with diagnostics and Git change indicators

---

## 📦 Plugin Ecosystem

### Core Functionality
| Plugin | Purpose |
|--------|---------|
| `lazy.nvim` | Fast and modern plugin manager with lazy loading |
| `plenary.nvim` | Lua utility functions (dependency for many plugins) |
| `nvim-web-devicons` | File type icons throughout the UI |
| `nui.nvim` | UI component library |

### Theme & UI
| Plugin | Purpose |
|--------|---------|
| `catppuccin/nvim` | Catppuccin Mocha color scheme (active theme) |
| `folke/tokyonight.nvim` | Alternative Tokyo Night theme |
| `Mofiqul/vscode.nvim` | Alternative VS Code theme |
| `nvim-lualine/lualine.nvim` | Customizable status line |
| `akinsho/bufferline.nvim` | Buffer tabs in the top bar |
| `goolord/alpha-nvim` | Customizable start screen |
| `dstein64/nvim-scrollview` | Scrollbar with diagnostics |
| `rcarriga/nvim-notify` | Beautiful notification manager |
| `stevearc/dressing.nvim` | Better vim.ui interfaces |
| `karb94/neoscroll.nvim` | Smooth scrolling animations |

### Navigation & File Management
| Plugin | Purpose |
|--------|---------|
| `nvim-neo-tree/neo-tree.nvim` | Modern file explorer sidebar |
| `nvim-telescope/telescope.nvim` | Fuzzy finder for everything |
| `nvim-telescope/telescope-file-browser.nvim` | File browser extension for Telescope |
| `ThePrimeagen/harpoon` | Quick file bookmarking and navigation |
| `mbbill/undotree` | Visual undo history tree |

### LSP & Completion
| Plugin | Purpose |
|--------|---------|
| `neovim/nvim-lspconfig` | LSP configuration framework |
| `williamboman/mason.nvim` | LSP/DAP/linter installer |
| `williamboman/mason-lspconfig.nvim` | Mason integration with lspconfig |
| `hrsh7th/nvim-cmp` | Completion engine |
| `hrsh7th/cmp-nvim-lsp` | LSP completion source |
| `hrsh7th/cmp-buffer` | Buffer completion source |
| `hrsh7th/cmp-path` | File path completion source |
| `hrsh7th/cmp-cmdline` | Command line completion |

### Snippets
| Plugin | Purpose |
|--------|---------|
| `L3MON4D3/LuaSnip` | Snippet engine |
| `saadparwaiz1/cmp_luasnip` | LuaSnip completion source |
| `rafamadriz/friendly-snippets` | Collection of common snippets |
| Custom WordPress snippets | Located in `lua/snippets/wordpress.lua` |

### Syntax & Formatting
| Plugin | Purpose |
|--------|---------|
| `nvim-treesitter/nvim-treesitter` | Advanced syntax highlighting and parsing |
| `windwp/nvim-autopairs` | Auto-close brackets and quotes |
| `windwp/nvim-ts-autotag` | Auto-close HTML tags |
| `jose-elias-alvarez/null-ls.nvim` | Formatting and diagnostics |
| `MunifTanjim/prettier.nvim` | Prettier integration for formatting |
| `lukas-reineke/indent-blankline.nvim` | Indent guides |
| `norcalli/nvim-colorizer.lua` | CSS color preview |

### Git Integration
| Plugin | Purpose |
|--------|---------|
| `tpope/vim-fugitive` | Comprehensive Git commands |
| `lewis6991/gitsigns.nvim` | Git signs in the gutter |

### Web Development
| Plugin | Purpose |
|--------|---------|
| `mattn/emmet-vim` | Emmet abbreviation expansion |
| `luckasRanarison/tailwind-tools.nvim` | Tailwind CSS IntelliSense and tools |
| `nvim-pack/nvim-spectre` | Project-wide search and replace |
| `rest-nvim/rest.nvim` | HTTP REST client for API testing |

### Utilities
| Plugin | Purpose |
|--------|---------|
| `numToStr/Comment.nvim` | Smart commenting |
| `kylechui/nvim-surround` | Add/change/delete surrounding characters |
| `folke/which-key.nvim` | Keybinding hints |
| `akinsho/toggleterm.nvim` | Better terminal integration |
| `folke/trouble.nvim` | Beautiful diagnostics list |

### WordPress & Database
| Plugin | Purpose |
|--------|---------|
| `dsawardekar/wordpress.vim` | WordPress-specific features |
| `tpope/vim-dadbod` | Database interface |
| `kristijanhusak/vim-dadbod-ui` | Database UI |
| `kristijanhusak/vim-dadbod-completion` | Database completion |

### Markdown
| Plugin | Purpose |
|--------|---------|
| `preservim/vim-markdown` | Markdown syntax |
| `iamcco/markdown-preview.nvim` | Live markdown preview in browser |

### Shell Support
| Plugin | Purpose |
|--------|---------|
| `dag/vim-fish` | Fish shell syntax highlighting |
| `ekalinin/Dockerfile.vim` | Dockerfile syntax |

---

## 🛠 LSP Servers

All LSP servers are automatically installed via Mason on first launch:

| Language | Server | Features |
|----------|--------|----------|
| **HTML** | `html` | Formatting, validation, auto-completion |
| **CSS** | `cssls` | Linting, color preview, completion |
| **Sass/SCSS** | `somesass_ls` | SCSS support and validation |
| **JavaScript/TypeScript** | `ts_ls` | Full IntelliSense, refactoring, inlay hints |
| **Linting** | `eslint` | JavaScript/TypeScript linting |
| **JSON** | `jsonls` | Schema validation and completion |
| **Bash** | `bashls` | Shell script support (also works for Fish) |
| **PHP** | `intelephense` | WordPress stubs, full PHP IntelliSense |
| **Python** | `pyright` | Type checking, auto-imports, completion |
| **Docker** | `dockerls` | Dockerfile validation and completion |
| **SQL** | `sqlls` | SQL syntax and completion |
| **Emmet** | `emmet_ls` | HTML/CSS expansion in multiple file types |

### LSP Features
- **Go to Definition** (`gd`) - Jump to symbol definition
- **Go to Declaration** (`gD`) - Jump to symbol declaration
- **Find References** (`gr`) - Show all references
- **Hover Documentation** (`K`) - Show symbol information
- **Code Actions** (`<leader>ca`) - Quick fixes and refactorings
- **Rename Symbol** (`<leader>rn`) - Rename across files
- **Format Document** (`<leader>f`) - Auto-format code
- **Diagnostics** (`[d`, `]d`) - Navigate errors and warnings

### Modern LSP Configuration
This configuration uses the **modern Neovim 0.11+ `vim.lsp.config` API** instead of the deprecated `lspconfig[server].setup()` pattern. See `lua/lsp.lua:133-146` for implementation details.

---

## ⌨️ Complete Keybindings Reference

**Leader Key:** `-` (dash)

### File Operations
| Key | Mode | Action |
|-----|------|--------|
| `<leader>w` | Normal | Save file |
| `<leader>q` | Normal | Quit without saving |
| `<leader>x` | Normal | Save and quit |
| `<leader>c` | Normal | Toggle cursor line/column |
| `F2` | Normal | Toggle Neo-tree file explorer |
| `F3` | Normal | Toggle paste mode |

### Buffer Navigation
| Key | Mode | Action |
|-----|------|--------|
| `t` | Normal | New buffer |
| `<leader>l` | Normal | Next buffer |
| `<leader>h` | Normal | Previous buffer |
| `<leader>d` | Normal | Delete buffer |
| `<leader>bq` | Normal | Close buffer and move to previous |
| `<leader>bl` | Normal | List all buffers |

### Harpoon (Quick File Navigation)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Add current file to harpoon |
| `Ctrl-e` | Normal | Toggle harpoon quick menu |
| `Ctrl-h` | Normal | Jump to harpoon file 1 |
| `Ctrl-t` | Normal | Jump to harpoon file 2 |
| `Ctrl-n` | Normal | Jump to harpoon file 3 |
| `Ctrl-s` | Normal | Jump to harpoon file 4 |

### Telescope (Fuzzy Finder)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Live grep (search in files) |
| `<leader>fb` | Normal | Find buffers |
| `<leader>fh` | Normal | Search help tags |

### LSP Navigation
| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Show references |
| `K` | Normal | Show hover information |
| `Ctrl-k` | Normal | Show signature help |
| `<leader>D` | Normal | Go to type definition |

### LSP Actions
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ca` | Normal | Code actions |
| `<leader>rn` | Normal | Rename symbol |
| `<leader>f` | Normal | Format document |
| `<leader>wa` | Normal | Add workspace folder |
| `<leader>wr` | Normal | Remove workspace folder |

### Diagnostics
| Key | Mode | Action |
|-----|------|--------|
| `[d` | Normal | Previous diagnostic |
| `]d` | Normal | Next diagnostic |
| `<leader>e` | Normal | Show diagnostic float |
| `<leader>xx` | Normal | Toggle Trouble |
| `<leader>xw` | Normal | Workspace diagnostics (Trouble) |
| `<leader>xd` | Normal | Document diagnostics (Trouble) |
| `<leader>xq` | Normal | Quickfix list (Trouble) |
| `<leader>xl` | Normal | Location list (Trouble) |

### Search & Replace
| Key | Mode | Action |
|-----|------|--------|
| `<leader>S` | Normal | Toggle Spectre (search/replace) |
| `<leader>sw` | Normal | Search current word |
| `<leader>sw` | Visual | Search selected text |
| `<leader>sp` | Normal | Search in current file |

### Git Operations
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gs` | Normal | Git status |
| `<leader>gc` | Normal | Git commit |
| `<leader>ga` | Normal | Git add current file |
| `<leader>gt` | Normal | Git commit current file |
| `<leader>gd` | Normal | Git diff |
| `<leader>ge` | Normal | Git edit |
| `<leader>gr` | Normal | Git read |
| `<leader>gw` | Normal | Git write |
| `<leader>gl` | Normal | Git log |
| `<leader>gpr` | Normal | Git grep |
| `<leader>gm` | Normal | Git move |
| `<leader>gb` | Normal | Git branch |
| `<leader>go` | Normal | Git checkout |
| `<leader>gp` | Normal | Git push |
| `<leader>gps` | Normal | Git push |
| `<leader>gpl` | Normal | Git pull |

### Clipboard Operations
| Key | Mode | Action |
|-----|------|--------|
| `Ctrl-c` | Visual | Copy to system clipboard |
| `Ctrl-x` | Visual | Cut to system clipboard |
| `Ctrl-v` | Command | Paste from system clipboard |
| `<leader>y` | Visual | Copy to Windows clipboard (WSL) |

### Development Tools
| Key | Mode | Action |
|-----|------|--------|
| `<leader>t` | Normal/Terminal | Toggle terminal |
| `<leader>m` | Normal | Open Mason (LSP manager) |
| `<leader>db` | Normal | Toggle database UI |
| `F4` | Normal | Toggle undotree |
| `F5` | Normal | Toggle scrollview |

### WordPress Shortcuts
| Key | Mode | Action |
|-----|------|--------|
| `<leader>wp` | Normal | Edit wp-config.php |
| `<leader>wf` | Normal | Edit functions.php |

### Markdown
| Key | Mode | Action |
|-----|------|--------|
| `<leader>mp` | Normal | Markdown preview |
| `<leader>ms` | Normal | Stop markdown preview |

### REST Client
| Key | Mode | Action |
|-----|------|--------|
| `<leader>rr` | Normal | Run HTTP request |
| `<leader>rl` | Normal | Run last request |
| `<leader>rp` | Normal | Preview request |

---

## 🎯 WordPress Development Features

### WordPress-Specific LSP Configuration
The Intelephense LSP server is configured with comprehensive WordPress stubs (see `lua/lsp.lua:166-181`):
- Full WordPress function definitions
- Hook and filter suggestions
- WordPress coding standards
- Global variables and constants
- Custom post types and taxonomies support

### WordPress Snippets
Quick access to common WordPress patterns via LuaSnip (defined in `lua/snippets/wordpress.lua`):

| Trigger | Expands To |
|---------|-----------|
| `wpq` | WP_Query with meta query template |
| `wpl` | Standard WordPress loop |
| `wpcpt` | Custom post type registration |
| `wpenq` | wp_enqueue_scripts function |
| `wpmeta` | Meta box creation |
| `wptheme` | WordPress theme template |
| `wphook` | add_action hook |
| `wpfilter` | add_filter hook |
| `wpajax` | AJAX handler template |
| `wpshortcode` | Shortcode registration |
| `wpwidget` | Widget class template |
| `wprest` | REST API endpoint |
| `wpcron` | WP Cron job |
| `wpsettings` | Settings page template |

### Database Integration
- **vim-dadbod** - Direct database queries
- **vim-dadbod-ui** - Visual database browser
- **Database completion** - Table and column suggestions
- Toggle with `<leader>db`

---

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point - loads all modules
├── lua/
│   ├── settings.lua         # Core Vim options (tabs, encoding, UI)
│   ├── keymaps.lua          # All keybindings (leader: -)
│   ├── plugins.lua          # Plugin definitions (lazy.nvim)
│   ├── lsp.lua              # LSP configuration (vim.lsp.config API)
│   ├── ui.lua               # UI components (lualine, bufferline, etc.)
│   └── snippets/
│       └── wordpress.lua    # WordPress & web dev snippets
└── README.md                # This file
```

### Module Loading Order (init.lua)
1. `settings.lua` - Core Vim options
2. `keymaps.lua` - Keybindings (before plugins for leader key)
3. `plugins.lua` - Plugin manager and plugin definitions
4. `lsp.lua` - LSP servers and completion
5. `ui.lua` - UI components (statusline, bufferline, etc.)
6. `snippets/wordpress.lua` - Custom snippets

**Important:** Module order matters! Settings and keymaps load before plugins to ensure proper initialization.

---

## 📦 Installation

### Prerequisites
- **Neovim 0.11+** (uses modern `vim.lsp.config` API)
- **Git** - For plugin management
- **Node.js & npm** - For LSP servers (ts_ls, eslint, etc.)
- **Ripgrep (rg)** - For Telescope live grep
- **A Nerd Font** - For icons (recommended: [FiraCode Nerd Font](https://www.nerdfonts.com/))
- **curl** or **wget** - For downloading plugins
- **Python 3** - For Python LSP support (optional)
- **PHP** - For PHP/WordPress development (optional)
- **inotify-tools** - For real-time config sync (optional)

### Ubuntu/Debian Installation
```bash
# Install prerequisites
sudo apt update
sudo apt install git nodejs npm ripgrep curl python3 python3-pip php

# Install a Nerd Font (example: FiraCode)
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts
curl -fLo "Fira Code Regular Nerd Font Complete.ttf" \
  https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/FiraCode/Regular/FiraCodeNerdFont-Regular.ttf
fc-cache -fv
```

### Install Neovim Configuration

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```

   On first launch, the configuration will automatically:
   - Install lazy.nvim plugin manager
   - Download and install all plugins
   - Install LSP servers via Mason
   - Compile treesitter parsers

4. **Wait for installations to complete** (1-3 minutes)
   - Watch the bottom of the screen for progress
   - Lazy.nvim will show plugin installation status
   - Mason will install LSP servers in the background

5. **Restart Neovim** after initial setup:
   ```bash
   nvim
   ```

6. **Verify installation**:
   ```vim
   :checkhealth
   :Mason  " Check LSP server status
   :Lazy   " Check plugin status
   ```

### Post-Installation

**Check LSP servers:**
```vim
:Mason
```
All servers should show a ✓ (installed). If not, select a server and press `i` to install.

**Update plugins:**
```vim
:Lazy sync
```

**Update LSP servers:**
```vim
:Mason
```
Then press `U` to update all.

---

## 🎨 Customization Guide

### Changing the Theme

Edit `lua/plugins.lua` around line 72:
```lua
vim.cmd.colorscheme("catppuccin")  -- Change to "tokyonight", "vscode", etc.
```

Available themes:
- `catppuccin` (default - Mocha variant)
- `tokyonight`
- `vscode`

Update Lualine theme in `lua/ui.lua` line 52:
```lua
theme = 'catppuccin',  -- Match your colorscheme
```

### Adding New Plugins

Add to `lua/plugins.lua` (after line 202):
```lua
{
  "author/plugin-name",
  dependencies = { "required/plugin" },  -- Optional
  ft = { "filetype" },                    -- Lazy load on filetype (optional)
  config = function()
    require("plugin-name").setup({
      -- Configuration options
    })
  end
},
```

Then restart Neovim or run `:Lazy sync`.

### Adding LSP Servers

1. Add server name to `lua/lsp.lua` line 19:
```lua
local servers = {
  "html",
  "your_new_server",  -- Add here
  -- ... rest of servers
}
```

2. (Optional) Add custom configuration in the loop at line 149:
```lua
elseif server == "your_new_server" then
  setup_lsp_server("your_new_server", {
    settings = {
      -- Server-specific settings
    }
  })
```

3. Restart Neovim. Mason will auto-install the server.

### Adding Treesitter Parsers

Edit `lua/plugins.lua` line 114:
```lua
ensure_installed = {
  "html", "css", "javascript", "typescript",
  "your_language",  -- Add here
  -- ... rest
},
```

### Custom Keybindings

Add to `lua/keymaps.lua`:
```lua
map("n", "<leader>key", ":Command<CR>", { desc = "Description" })
```

Pattern:
- `"n"` = normal mode (`"i"` insert, `"v"` visual, `"t"` terminal)
- `"<leader>key"` = keybinding (leader is `-`)
- `":Command<CR>"` = vim command or Lua function
- `{ desc = "..." }` = description (shown in which-key)

### Creating Custom Snippets

Create a new file in `lua/snippets/`:
```lua
-- lua/snippets/my_snippets.lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("filetype", {
  s("trigger", {
    t("text "),
    i(1, "placeholder"),
    t(" more text"),
  }),
})
```

Load in `init.lua`:
```lua
require("snippets.my_snippets")
```

### Customizing UI Components

**File explorer width** - `lua/ui.lua:13`:
```lua
window = {
  width = 30,  -- Change width
}
```

**Status line sections** - `lua/ui.lua:67-141`
**Buffer tabs style** - `lua/ui.lua:164-228`
**Terminal size** - `lua/ui.lua:232`
**Start screen buttons** - `lua/ui.lua:315-335`

---

## 🔄 Auto-Sync Configuration

This repository includes scripts to automatically sync changes from your active Neovim config (`~/.config/nvim`) to this git repository (`~/git/nvim`).

### Setup Auto-Sync

The sync scripts are located in the repository root:
- `sync-config.sh` - Manual sync script
- `watch-and-sync.sh` - Real-time file watcher
- `nvim-sync.service` - Systemd service definition
- `nvim-sync.timer` - Systemd timer for scheduled sync

### Option 1: Manual Sync
Run whenever you want to commit changes:
```bash
cd ~/git/nvim
./sync-config.sh
```

### Option 2: Scheduled Sync (Systemd Timer)
Automatically sync every 30 minutes:

```bash
# Copy systemd files to user config
mkdir -p ~/.config/systemd/user
cp ~/git/nvim/nvim-sync.service ~/.config/systemd/user/
cp ~/git/nvim/nvim-sync.timer ~/.config/systemd/user/

# Enable and start the timer
systemctl --user enable nvim-sync.timer
systemctl --user start nvim-sync.timer

# Check timer status
systemctl --user status nvim-sync.timer
systemctl --user list-timers

# View sync logs
journalctl --user -u nvim-sync.service -f

# Disable auto-sync
systemctl --user stop nvim-sync.timer
systemctl --user disable nvim-sync.timer
```

### Option 3: Real-time Sync (File Watcher)
Watch for changes and sync immediately:

```bash
# Install inotify-tools (if not already installed)
sudo apt install inotify-tools

# Run the watcher (keeps running in terminal)
cd ~/git/nvim
./watch-and-sync.sh

# Or run in background
nohup ~/git/nvim/watch-and-sync.sh > /tmp/nvim-sync.log 2>&1 &
```

### Customize Sync Timing

Edit timer file for different schedules:
```bash
vim ~/.config/systemd/user/nvim-sync.timer
```

Common timer options:
```ini
# Every 30 minutes (default)
OnUnitActiveSec=30min

# Daily at 10 PM
OnCalendar=*-*-* 22:00:00

# On every boot (5 minutes after)
OnBootSec=5min

# Hourly
OnUnitActiveSec=1h
```

After editing, reload systemd:
```bash
systemctl --user daemon-reload
systemctl --user restart nvim-sync.timer
```

---

## 🔧 Troubleshooting

### Plugin Installation Issues

**Symptom:** Plugins not loading or errors on startup

**Solution:**
```bash
# Remove plugin cache
rm -rf ~/.local/share/nvim/lazy

# Restart Neovim - plugins will reinstall
nvim

# Or manually sync plugins
nvim
:Lazy sync
```

### LSP Server Not Working

**Symptom:** No auto-completion or "LSP not attached"

**Solution:**
```vim
" Check LSP status
:LspInfo

" Open Mason and check server status
:Mason

" Reinstall server (select server, press 'X' to uninstall, then 'i' to install)

" Check server logs
:lua vim.lsp.set_log_level("debug")
:edit ~/.local/state/nvim/lsp.log
```

**Common issues:**
- **Node.js not installed:** Many LSP servers require Node.js
- **Server not in PATH:** Mason installs to `~/.local/share/nvim/mason/bin`
- **PHP LSP:** Requires PHP binary in PATH

### Treesitter Errors

**Symptom:** Syntax highlighting broken or parser errors

**Solution:**
```vim
" Update treesitter parsers
:TSUpdate

" Reinstall all parsers
:TSInstall all

" Check parser status
:TSInstallInfo
```

### Clipboard Not Working (WSL)

**Symptom:** Copy/paste between Neovim and Windows doesn't work

**Solution:**
Ensure `clip.exe` is in PATH:
```bash
which clip.exe
# Should return: /mnt/c/Windows/System32/clip.exe
```

If not found, add to `~/.bashrc` or `~/.zshrc`:
```bash
export PATH="$PATH:/mnt/c/Windows/System32"
```

### Slow Startup

**Symptom:** Neovim takes several seconds to start

**Solution:**
```vim
" Profile startup time
:Lazy profile

" Check for slow plugins
" Consider lazy-loading heavy plugins with 'ft' or 'cmd' options
```

Optimize in `lua/plugins.lua`:
```lua
{
  "heavy/plugin",
  ft = { "filetype" },     -- Load only for specific filetypes
  cmd = { "Command" },     -- Load only when command is used
  event = "VeryLazy",      -- Load after startup
}
```

### Database UI Not Connecting

**Symptom:** vim-dadbod can't connect to database

**Solution:**
1. Configure database connection in `~/.local/share/db_ui/`:
```sql
-- Create connection file
-- Example: mysql.txt
mysql://user:password@localhost/database_name
```

2. Or use `:DBUI` and add connection interactively

### Icons Not Showing

**Symptom:** Squares or broken characters instead of icons

**Solution:**
1. Install a Nerd Font (see [Prerequisites](#prerequisites))
2. Set terminal font to the Nerd Font
3. Restart terminal

### Rest.nvim Not Working

**Symptom:** HTTP requests fail or timeout

**Solution:**
Create a `.http` file with proper format:
```http
### Test Request
GET https://api.example.com/endpoint
Content-Type: application/json

###
```

Run with `<leader>rr`

---

## 📚 Learning Resources

### Neovim
- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide for Neovim](https://github.com/nanotee/nvim-lua-guide)
- [Vim Cheat Sheet](https://vim.rtorr.com/)
- [Learn Vim Progressively](http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/)

### Plugin Documentation
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [LSP Config](https://github.com/neovim/nvim-lspconfig)
- [Telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip)

### WordPress
- [WordPress Codex](https://codex.wordpress.org/)
- [WordPress Developer Resources](https://developer.wordpress.org/)
- [Intelephense](https://intelephense.com/)

### Web Development
- [MDN Web Docs](https://developer.mozilla.org/)
- [Tailwind CSS](https://tailwindcss.com/)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)

---

## 🤝 Contributing

Contributions are welcome! Please follow these guidelines:

1. **Fork the repository**
2. **Create a feature branch:**
   ```bash
   git checkout -b feature/amazing-feature
   ```
3. **Make your changes**
4. **Test thoroughly:**
   ```bash
   nvim
   :checkhealth
   ```
5. **Commit with descriptive message:**
   ```bash
   git commit -m "feat: add amazing feature"
   ```
6. **Push to your fork:**
   ```bash
   git push origin feature/amazing-feature
   ```
7. **Open a Pull Request**

### Commit Message Convention
- `feat:` - New feature
- `fix:` - Bug fix
- `docs:` - Documentation changes
- `refactor:` - Code refactoring
- `chore:` - Maintenance tasks

---

## 📝 License

This configuration is open source and available under the [MIT License](LICENSE).

---

## 🙏 Acknowledgments

### Projects
- [Neovim](https://neovim.io/) - The hyperextensible Vim-based text editor
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - Modern plugin manager
- [Mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [Catppuccin](https://github.com/catppuccin/nvim) - Beautiful color scheme
- [LazyVim](https://github.com/LazyVim/LazyVim) - Configuration inspiration

### Community
- VS Code - UI/UX inspiration
- WordPress Community - For the amazing development ecosystem
- Neovim Community - For the incredible plugin ecosystem
- ThePrimeagen - For Harpoon and workflow inspiration

---

## 📊 Quick Stats

- **50+ Plugins** - Carefully curated for web development
- **12 LSP Servers** - Full language support
- **10+ Treesitter Parsers** - Advanced syntax highlighting
- **100+ Keybindings** - Organized and documented
- **15+ WordPress Snippets** - Speed up development
- **Neovim 0.11+** - Modern API compatibility

---

**Made with ❤️ for WordPress developers who love Vim**

*Transform your development workflow with the power of Neovim and the familiarity of your existing keybindings.*

**Leader Key: `-` (dash)** | **Questions?** Open an issue on GitHub
