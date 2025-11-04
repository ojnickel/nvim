# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a comprehensive Neovim configuration optimized for WordPress and web development. It provides a VS Code-like IDE experience while maintaining Vim's efficiency. The configuration is fully modular, written in Lua, and uses Lazy.nvim for plugin management with Mason for automatic LSP server installation.

**Target Use Case**: WordPress development, HTML/CSS/JavaScript, PHP, Python, with integrated Git workflow and database management.

**Leader Key**: `-` (dash/hyphen)

---

## Complete Keybindings Reference

### Completion Menu (nvim-cmp)
When typing, an auto-completion menu appears with suggestions from LSP, snippets, file paths, and buffer words.

| Key | Action |
|-----|--------|
| `↓` (Down Arrow) | Select next completion item |
| `↑` (Up Arrow) | Select previous completion item |
| `Enter` | Accept selected completion |
| `Ctrl-e` | Close completion menu |
| `Ctrl-Space` | Manually trigger completion |
| `Ctrl-f` | Scroll documentation window down |
| `Ctrl-b` | Scroll documentation window up |
| `Tab` | Expand snippet or jump to next snippet position (if in snippet) |
| `Shift-Tab` | Jump to previous snippet position (if in snippet) |

**Note**: The completion menu is provided by **nvim-cmp**, not Mason. Mason is the LSP server installer (`:Mason`).

### File Operations
| Key | Mode | Action |
|-----|------|--------|
| `<leader>w` | Normal | Save file (`:w`) |
| `<leader>q` | Normal | Quit without saving (`:q!`) |
| `<leader>x` | Normal | Save and quit (`:x`) |
| `<leader>c` | Normal | Toggle cursor line/column highlight |
| `F2` | Normal | Toggle Neo-tree file explorer |
| `F3` | Normal | Toggle paste mode |
| `F5` | Normal | Toggle relative line numbers |

### Buffer Navigation
| Key | Mode | Action |
|-----|------|--------|
| `t` | Normal | Create new empty buffer |
| `<leader>l` | Normal | Next buffer (`:bnext`) |
| `<leader>h` | Normal | Previous buffer (`:bprevious`) |
| `<leader>d` | Normal | Delete current buffer |
| `<leader>bq` | Normal | Close buffer and move to previous |
| `<leader>bl` | Normal | List all open buffers |

### Telescope Fuzzy Finder
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files in current directory |
| `<leader>fg` | Normal | Live grep (search text in all files) |
| `<leader>fb` | Normal | Find and switch between open buffers |
| `<leader>fh` | Normal | Search help tags |

### LSP Navigation
| Key | Mode | Action |
|-----|------|--------|
| `gd` | Normal | Go to definition |
| `gD` | Normal | Go to declaration |
| `gi` | Normal | Go to implementation |
| `gr` | Normal | Show all references |
| `K` | Normal | Show hover documentation |
| `Ctrl-k` | Normal | Show signature help (function parameters) |
| `<leader>D` | Normal | Go to type definition |

### LSP Code Actions
| Key | Mode | Action |
|-----|------|--------|
| `<leader>ca` | Normal | Open code actions menu |
| `<leader>rn` | Normal | Rename symbol under cursor |
| `<leader>f` | Normal | Format document with LSP |
| `<leader>wa` | Normal | Add workspace folder |
| `<leader>wr` | Normal | Remove workspace folder |

### Diagnostics (Errors/Warnings)
| Key | Mode | Action |
|-----|------|--------|
| `[d` | Normal | Go to previous diagnostic |
| `]d` | Normal | Go to next diagnostic |
| `<leader>e` | Normal | Show diagnostic in floating window |

### Git Operations (vim-fugitive)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>gs` | Normal | Git status (`:Git status`) |
| `<leader>gc` | Normal | Git commit (`:Git commit`) |
| `<leader>ga` | Normal | Git add current file |
| `<leader>gt` | Normal | Git commit current file |
| `<leader>gd` | Normal | Git diff |
| `<leader>ge` | Normal | Git edit |
| `<leader>gr` | Normal | Git read (checkout file) |
| `<leader>gw` | Normal | Git write (stage file) |
| `<leader>gl` | Normal | Git log |
| `<leader>gpr` | Normal | Git grep (search in repo) |
| `<leader>gm` | Normal | Git move (rename file) |
| `<leader>gb` | Normal | Git branch |
| `<leader>go` | Normal | Git checkout |
| `<leader>gp` | Normal | Git push |
| `<leader>gps` | Normal | Git push |
| `<leader>gpl` | Normal | Git pull |

### Clipboard Operations (WSL)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>y` | Visual | Copy selection to Windows clipboard |
| `Ctrl-x` | Visual | Cut to system clipboard |
| `Ctrl-c` | Visual | Copy to system clipboard |
| `Ctrl-v` | Command | Paste from system clipboard |

### Development Tools
| Key | Mode | Action |
|-----|------|--------|
| `<leader>o` | Normal | Toggle code outline (functions/classes) |
| `<leader>t` | Normal/Terminal | Toggle integrated terminal |
| `<leader>m` | Normal | Open Mason (LSP manager) |
| `<leader>db` | Normal | Toggle database UI |

### WordPress Shortcuts
| Key | Mode | Action |
|-----|------|--------|
| `<leader>wp` | Normal | Edit wp-config.php |
| `<leader>wf` | Normal | Edit functions.php |

---

## Complete Plugin Documentation

### Core Plugins

#### lazy.nvim (Plugin Manager)
- **What**: Modern plugin manager with lazy loading and automatic updates
- **How it works**: Auto-loads all plugins from `lua/plugins/` directory, manages dependencies, provides UI for updates
- **Commands**:
  - `:Lazy` - Open plugin manager UI
  - `:Lazy sync` - Update all plugins
  - `:Lazy clean` - Remove unused plugins
  - `:Lazy profile` - Profile startup time
- **Config**: Bootstrap code in `init.lua` (lines 3-15), setup at lines 22-40

#### plenary.nvim
- **What**: Lua utility library required by many plugins
- **How it works**: Provides async functions, path utilities, and other helpers used by Telescope, Neo-tree, etc.
- **No direct user interaction**

#### nvim-web-devicons
- **What**: Provides file type icons
- **How it works**: Maps file extensions to Nerd Font icons displayed in file explorer, status line, bufferline
- **Requires**: Nerd Font installed in terminal

#### nui.nvim
- **What**: UI component library
- **How it works**: Provides popup windows, menus, and input components used by Neo-tree and other plugins

---

### Theme & UI Plugins

#### catppuccin/nvim (Active Theme)
- **What**: Catppuccin Mocha color scheme (pastel colors with dark background)
- **How it works**: Sets colors for syntax highlighting, UI elements, and integrates with lualine, treesitter, LSP
- **Config**: `lua/plugins/colorscheme.lua` lines 4-61
- **Customization**:
  - Change flavor: `flavour = "mocha"` (options: latte, frappe, macchiato, mocha)
  - Toggle transparency: `transparent_background = true`
- **Integration**: Configured for cmp, gitsigns, telescope, treesitter, LSP, which-key

#### folke/tokyonight.nvim (Alternative Theme)
- **What**: Tokyo Night color scheme (dark with vibrant colors)
- **How it works**: Alternative theme, not loaded by default
- **Activate**: Change line 59 in `lua/plugins/colorscheme.lua` to `vim.cmd.colorscheme("tokyonight")`

#### Mofiqul/vscode.nvim (Alternative Theme)
- **What**: VS Code color scheme
- **How it works**: Alternative theme, lazy-loaded (not active)
- **Activate**: Change line 59 in `lua/plugins/colorscheme.lua` to `vim.cmd.colorscheme("vscode")`

#### nvim-lualine/lualine.nvim (Status Line)
- **What**: Customizable status line at bottom of screen
- **How it works**: Shows mode, git branch, diagnostics, file info, encoding, position
- **Config**: `lua/plugins/ui.lua` lines 59-176
- **Components**:
  - Section A: Mode (N/I/V/C shown as single letter)
  - Section B: Git branch, diff stats (+/-/~), LSP diagnostics (errors/warnings/info/hints)
  - Section C: Filename with path, modified indicator (●)
  - Section X: Encoding (UTF-8), file format (LF/CRLF/CR)
  - Section Y: Filetype
  - Section Z: Line number, total lines (☰ icon)
- **Theme**: Set to 'catppuccin' (line 65), change to match your colorscheme
- **Customization**: Edit sections in lines 80-154

#### akinsho/bufferline.nvim (Buffer Tabs)
- **What**: Visual buffer tabs at top of screen (like browser tabs)
- **How it works**: Shows all open buffers with file icons, close buttons, diagnostic indicators
- **Config**: `lua/plugins/ui.lua` lines 179-250
- **Features**:
  - Click to switch buffers
  - Click ✕ to close
  - Shows LSP errors/warnings count
  - Groups by Neo-tree offset
- **Customization**:
  - Tab size: `tab_size = 21` (line 206)
  - Separator style: `separator_style = "thin"` (line 220) - options: slant, thick, thin, padded_slant
  - Close buttons: `show_buffer_close_icons = true` (line 215)

#### goolord/alpha-nvim (Start Screen)
- **What**: Dashboard shown when opening Neovim without a file
- **How it works**: Displays ASCII art header, quick action buttons
- **Config**: `lua/plugins/ui.lua` lines 283-313
- **Buttons**:
  - `f` - Find file (Telescope)
  - `e` - New file
  - `p` - Find project (Telescope)
  - `r` - Recently used files
  - `t` - Find text (live grep)
  - `c` - Open config (init.lua)
  - `q` - Quit Neovim
- **Customization**: Edit header (lines 289-298) and buttons (lines 301-309)

#### lukas-reineke/indent-blankline.nvim
- **What**: Vertical lines showing indentation levels
- **How it works**: Renders subtle `│` characters at each indent level for better code structure visibility
- **Config**: `lua/plugins/ui.lua` lines 253-280
- **Character**: `│` (line 259)
- **Excluded filetypes**: help, alpha, dashboard, neo-tree, lazy, mason, etc. (lines 264-276)

---

### Navigation & File Management

#### nvim-neo-tree/neo-tree.nvim (File Explorer)
- **What**: VS Code-like file tree sidebar
- **How it works**: Shows directory structure with git status, file icons, and file operations
- **Toggle**: `F2` or `:Neotree toggle`
- **Config**: `lua/plugins/ui.lua` lines 4-56
- **Features**:
  - Git status indicators (✚ added, ✖ deleted,  modified, etc.)
  - Live file system watching (auto-updates)
  - Follows current file (highlights in tree)
  - Right-click context menu
- **Navigation in Neo-tree**:
  - `Enter` - Open file/folder
  - `a` - Add file/directory
  - `d` - Delete
  - `r` - Rename
  - `c` - Copy
  - `x` - Cut
  - `p` - Paste
  - `y` - Copy filename
  - `?` - Show help
- **Customization**:
  - Width: `width = 30` (line 20)
  - Position: `position = "left"` (line 19) - options: left, right, float
  - Show hidden files: `hide_dotfiles = false` (line 29)

#### nvim-telescope/telescope.nvim (Fuzzy Finder)
- **What**: Fast fuzzy finder for files, text, buffers, and more
- **How it works**: Opens floating window with real-time search results
- **Config**: `lua/plugins/editor.lua` lines 4-14
- **Keybindings**:
  - `<leader>ff` - Find files
  - `<leader>fg` - Live grep (search in files)
  - `<leader>fb` - Find buffers
  - `<leader>fh` - Help tags
- **Navigation in Telescope**:
  - `Ctrl-n` / `Down` - Next item
  - `Ctrl-p` / `Up` - Previous item
  - `Enter` - Select item
  - `Ctrl-x` - Open in horizontal split
  - `Ctrl-v` - Open in vertical split
  - `Ctrl-t` - Open in new tab
  - `Ctrl-u` - Scroll preview up
  - `Ctrl-d` - Scroll preview down
  - `Esc` / `Ctrl-c` - Close
- **Layout**: Height 80%, width 90% of screen (line 10)

#### nvim-telescope/telescope-file-browser.nvim
- **What**: File browser extension for Telescope
- **How it works**: Adds file browsing capability to Telescope
- **Usage**: `:Telescope file_browser`

#### hedyhli/outline.nvim (Code Outline)
- **What**: Sidebar showing document structure (functions, classes, variables, etc.)
- **How it works**: Uses LSP to extract symbols and displays them in a tree view
- **Toggle**: `<leader>o` or `:Outline`
- **Config**: `lua/plugins/editor.lua` lines 65-107
- **Features**:
  - Shows document symbols hierarchy
  - Click or press Enter to jump to symbol
  - Updates automatically as you edit
  - Supports all LSP-enabled languages
- **Position**: Right side, 25% width (lines 70-71)
- **Icons**: Custom icons for each symbol type (File, Module, Class, Function, etc.) - lines 76-103

---

### LSP & Completion

#### williamboman/mason.nvim (LSP Installer)
- **What**: Package manager for LSP servers, DAP servers, linters, formatters
- **How it works**: Provides UI to install/update/remove language servers
- **Open**: `<leader>m` or `:Mason`
- **Config**: `lua/lsp.lua` lines 7-15
- **In Mason UI**:
  - `i` - Install server under cursor
  - `u` - Update server under cursor
  - `U` - Update all servers
  - `X` - Uninstall server under cursor
  - `/` - Search servers
  - `g?` - Show help
- **Icons**: ✓ installed, ➜ pending, ✗ not installed

#### LSP Servers Auto-Installed
All servers defined in `lua/lsp.lua` lines 18-31 are automatically installed on first run:

| Server | Language | Features |
|--------|----------|----------|
| `html` | HTML | Tag completion, validation, formatting |
| `cssls` | CSS | Property completion, color preview, validation |
| `somesass_ls` | Sass/SCSS | SCSS syntax, completion, validation |
| `ts_ls` | JavaScript/TypeScript | IntelliSense, refactoring, type checking, inlay hints |
| `eslint` | JavaScript/TypeScript | Linting, auto-fix on save |
| `jsonls` | JSON | Schema validation, completion |
| `bashls` | Bash | Shell script completion, validation |
| `intelephense` | PHP | Full PHP IntelliSense with WordPress stubs (functions, hooks, globals) |
| `pyright` | Python | Type checking, auto-imports, refactoring |
| `dockerls` | Dockerfile | Dockerfile syntax, validation |
| `sqlls` | SQL | SQL completion, syntax checking |
| `emmet_ls` | HTML/CSS | Emmet abbreviation expansion in HTML, CSS, SCSS, JS, TS, PHP |

**WordPress Support**: Intelephense is configured with WordPress stubs (see `lua/lsp.lua` lines 185-200) providing:
- All WordPress core functions (wp_*, get_*, the_*, add_*, etc.)
- Hooks and filters
- Global variables ($wpdb, $post, etc.)
- Constants (WP_DEBUG, ABSPATH, etc.)

#### hrsh7th/nvim-cmp (Completion Engine)
- **What**: Auto-completion engine that shows suggestions as you type
- **How it works**: Collects suggestions from multiple sources (LSP, snippets, buffer, paths) and displays them in a popup menu
- **Config**: `lua/lsp.lua` lines 45-114
- **Keybindings**: See "Completion Menu" section above
- **Features**:
  - Ghost text (shows completion inline)
  - Bordered windows for completion and documentation
  - Icons showing source type [LSP], [Snippet], [Buffer], [Path]
  - Automatic documentation popup
- **Sources** (in priority order):
  1. LSP (1000) - Language server completions
  2. LuaSnip (750) - Snippet completions
  3. Path (500) - File path completions (relative to current file)
  4. Buffer (250) - Words from current and open buffers
  5. Database (100) - Table/column names (when vim-dadbod is active)

#### cmp sources
- **cmp-nvim-lsp**: LSP completions
- **cmp-buffer**: Words from open buffers
- **cmp-path**: File and directory path completion (shows trailing slashes, uses current file's directory)
- **cmp-cmdline**: Command-line completion for `:` and `/` commands
- **cmp_luasnip**: Snippet completions from LuaSnip
- **vim-dadbod-completion**: Database table/column completions

#### L3MON4D3/LuaSnip (Snippet Engine)
- **What**: Snippet expansion engine
- **How it works**: Expands short triggers into longer code templates with tab stops
- **Config**: `lua/lsp.lua` line 39-40 (loads friendly-snippets)
- **Usage**:
  1. Type snippet trigger (e.g., `wpq` for WP_Query)
  2. Completion menu shows snippet
  3. Select and press Enter
  4. Press Tab to jump between placeholders
  5. Press Shift-Tab to jump back
- **Custom snippets**: `lua/snippets/wordpress.lua` (see WordPress section below)

#### rafamadriz/friendly-snippets
- **What**: Collection of common snippets for many languages
- **How it works**: Provides pre-made snippets automatically loaded by LuaSnip
- **Languages**: JavaScript, TypeScript, Python, HTML, CSS, PHP, and more

---

### Syntax & Formatting

#### nvim-treesitter/nvim-treesitter (Syntax Parser)
- **What**: Advanced syntax highlighting using tree-sitter parsers
- **How it works**: Parses code into AST (Abstract Syntax Tree) for accurate highlighting and indentation
- **Config**: `lua/plugins/treesitter.lua`
- **Parsers auto-installed**: HTML, CSS, SCSS, JavaScript, TypeScript, PHP, Python, Dockerfile, SQL, Lua
- **Commands**:
  - `:TSUpdate` - Update all parsers
  - `:TSInstall <lang>` - Install specific parser
  - `:TSInstallInfo` - Show parser status
- **Features**:
  - Better syntax highlighting than regex-based
  - Smart indentation
  - Used by autopairs, autotag, comments for context-aware behavior

#### windwp/nvim-autopairs
- **What**: Automatically closes brackets, quotes, and parentheses
- **How it works**: When you type `(`, it inserts `)` and places cursor between them
- **Config**: `lua/plugins/editor.lua` lines 43-54
- **Features**:
  - Treesitter integration (context-aware, doesn't close in comments/strings)
  - Works with: `()`, `[]`, `{}`, `''`, `""`, ` `` `
  - Special handling for JavaScript template strings and Lua strings
- **Behavior**: Type `(` → auto-inserts `()` with cursor at `(|)`

#### windwp/nvim-ts-autotag
- **What**: Automatically closes and renames HTML/XML tags
- **How it works**: When you type `<div>`, it auto-closes with `</div>`. When you rename opening tag, closing tag updates automatically
- **Config**: `lua/plugins/formatting.lua` lines 6-12
- **Filetypes**: HTML, XML, JavaScript, TypeScript, React (JSX/TSX), PHP
- **Example**: Type `<button>` → becomes `<button></button>` with cursor at `<button>|</button>`

#### jose-elias-alvarez/null-ls.nvim
- **What**: Bridge for using non-LSP formatters and linters
- **How it works**: Wraps tools like Prettier, ESLint into LSP protocol
- **Config**: `lua/plugins/formatting.lua` line 15
- **Note**: Plugin declared but not configured. Can be used for Prettier, ESLint, Stylelint, etc.

#### MunifTanjim/prettier.nvim
- **What**: Prettier formatter integration
- **How it works**: Formats code using Prettier when you run `<leader>f`
- **Config**: `lua/plugins/formatting.lua` line 16
- **Requires**: Prettier installed (`npm install -g prettier`)
- **Supported**: JavaScript, TypeScript, CSS, HTML, JSON, Markdown

#### norcalli/nvim-colorizer.lua
- **What**: Shows color preview for CSS color codes
- **How it works**: Highlights hex codes, rgb(), hsl() with their actual color
- **Config**: `lua/plugins/editor.lua` lines 57-62
- **Example**: `#ff0000` appears with red background, `rgb(0, 255, 0)` with green background
- **Filetypes**: CSS, HTML, JavaScript, Lua, and more

---

### Git Integration

#### tpope/vim-fugitive (Git Commands)
- **What**: Comprehensive Git integration for Vim
- **How it works**: Provides Git commands as Vim commands (`:Git status`, `:Git commit`, etc.)
- **Config**: `lua/plugins/git.lua` line 3
- **Keybindings**: All `<leader>g*` bindings (see Git Operations section above)
- **Common commands**:
  - `:Git` or `:Git status` - Git status window
  - `:Git add %` - Stage current file
  - `:Git commit` - Commit with message
  - `:Git push` - Push to remote
  - `:Git pull` - Pull from remote
  - `:Git blame` - Show git blame
  - `:Gdiff` - Diff current file
  - `:Gwrite` - Stage current file
  - `:Gread` - Revert current file
- **In Git status window**:
  - `-` - Stage/unstage file
  - `cc` - Commit
  - `ca` - Amend commit
  - `Enter` - Open file
  - `dv` - Diff file
  - `=` - Inline diff

#### lewis6991/gitsigns.nvim (Git Gutter)
- **What**: Shows git diff in sign column (gutter)
- **How it works**: Displays symbols next to line numbers indicating added/modified/deleted lines
- **Config**: `lua/plugins/git.lua` lines 4-18
- **Symbols**:
  - `+` - Added line
  - `~` - Modified line
  - `_` - Deleted line
  - `‾` - Deleted line at top
  - `~` - Changed and deleted
- **Features**:
  - Inline blame (shows commit message)
  - Hunk navigation
  - Stage hunks
  - Preview changes
- **Commands**:
  - `:Gitsigns preview_hunk` - Show diff for current hunk
  - `:Gitsigns stage_hunk` - Stage current hunk
  - `:Gitsigns reset_hunk` - Discard changes in hunk
  - `:Gitsigns blame_line` - Show blame for line

---

### Utilities

#### numToStr/Comment.nvim
- **What**: Smart commenting with treesitter integration
- **How it works**: Comments/uncomments lines or blocks respecting language syntax
- **Config**: `lua/plugins/editor.lua` lines 35-40
- **Keybindings**:
  - `gcc` - Toggle comment on current line
  - `gc` + motion - Toggle comment (e.g., `gc3j` comments 3 lines down)
  - `gbc` - Toggle block comment on current line
  - `gb` + motion - Toggle block comment
  - Visual mode: `gc` - Comment selection
  - Visual mode: `gb` - Block comment selection
- **Languages**: Automatically detects comment style (// for JS, # for Python, <!-- --> for HTML, etc.)

#### folke/which-key.nvim
- **What**: Shows popup with available keybindings after you press leader or other keys
- **How it works**: After pressing `<leader>`, shows all available continuations with descriptions
- **Config**: `lua/plugins/editor.lua` lines 18-32
- **Example**: Press `-` (leader) → popup shows all `<leader>*` bindings with descriptions
- **Features**:
  - Shows marks, registers
  - Spelling suggestions (20 suggestions)
  - Helps discover keybindings
- **Delay**: Shows after ~500ms of inactivity

#### akinsho/toggleterm.nvim (Terminal)
- **What**: Integrated terminal inside Neovim
- **How it works**: Opens terminal in a split window, toggle with `<leader>t`
- **Config**: `lua/plugins/terminal.lua` lines 3-21
- **Toggle**: `<leader>t` in normal or terminal mode
- **Size**: 20 lines horizontal split (line 8)
- **Direction**: Horizontal (bottom) - can be changed to vertical, float, or tab
- **Features**:
  - Persistent terminal session
  - Auto-insert mode when opening
  - Runs actual shell (bash, zsh, etc.)
  - Multiple terminals supported (`:ToggleTerm 2`)
- **Terminal mode keybindings**:
  - `<leader>t` - Hide terminal (returns to normal mode)
  - `Ctrl-\` - Also toggles terminal
- **Customization**:
  - Size: `size = 20` (line 8)
  - Direction: `direction = "horizontal"` (line 15) - options: horizontal, vertical, float, tab

---

### Language-Specific Plugins

#### dsawardekar/wordpress.vim
- **What**: WordPress-specific features for PHP development
- **How it works**: Provides WordPress function definitions and utilities
- **Config**: `lua/plugins/lang.lua` line 4
- **Lazy-loaded**: Only loads for PHP files (`ft = "php"`)

#### iamcco/markdown-preview.nvim (Markdown)
- **What**: Live markdown preview in browser
- **How it works**: Opens browser with rendered markdown that updates as you type
- **Config**: `lua/plugins/lang.lua` lines 31-41
- **Commands**:
  - `:MarkdownPreview` - Open preview in browser
  - `:MarkdownPreviewStop` - Close preview
  - `:MarkdownPreviewToggle` - Toggle preview
- **Features**:
  - Live sync as you type
  - Renders GitHub-flavored markdown
  - Syntax highlighting in code blocks
  - Auto-closes when leaving markdown file
- **Requires**: Node.js and npm (runs `npm install` on first use)

#### tpope/vim-dadbod (Database)
- **What**: Database interface for querying databases
- **How it works**: Execute SQL queries directly from Neovim
- **Config**: `lua/plugins/lang.lua` line 31
- **Usage**:
  - `:DB` - Execute query
  - Connect: `let g:db = 'mysql://user:pass@localhost/dbname'`
- **Supported**: MySQL, PostgreSQL, SQLite, SQL Server, Oracle, etc.

#### kristijanhusak/vim-dadbod-ui
- **What**: UI for vim-dadbod database management
- **How it works**: Provides tree view of databases, tables, and columns
- **Toggle**: `<leader>db` or `:DBUIToggle`
- **Config**: `lua/plugins/lang.lua` line 32
- **Features**:
  - Browse databases and tables
  - Execute queries in buffer
  - Save queries
  - View query results in table format
- **In DBUI window**:
  - `o` - Open/expand
  - `S` - Select database
  - `R` - Rename query
  - `d` - Delete query
  - `<CR>` - Execute query

#### kristijanhusak/vim-dadbod-completion
- **What**: Database completion for vim-dadbod
- **How it works**: Provides table names and column names in nvim-cmp completion menu
- **Config**: `lua/plugins/lang.lua` line 33
- **Triggers**: When editing SQL files or in database UI query buffer

#### ekalinin/Dockerfile.vim
- **What**: Dockerfile syntax highlighting
- **How it works**: Provides syntax highlighting for Dockerfile
- **Config**: `lua/plugins/lang.lua` line 36
- **Lazy-loaded**: Only for Dockerfile files (`ft = "dockerfile"`)

#### mattn/emmet-vim (Web Development)
- **What**: Emmet abbreviation expansion for HTML/CSS
- **How it works**: Type abbreviation, press trigger key, expands to full HTML/CSS
- **Config**: `lua/plugins/formatting.lua` line 4
- **Trigger**: `Ctrl-y,` (Ctrl-y followed by comma)
- **Examples**:
  - `div.container>ul>li*3` → `<div class="container"><ul><li></li><li></li><li></li></ul></div>`
  - `a[href=#]` → `<a href="#"></a>`
  - `m10` (in CSS) → `margin: 10px;`
- **Languages**: HTML, CSS, SCSS, JSX, TSX, PHP (configured in `lua/lsp.lua` line 171)

---

## WordPress Development

### WordPress Snippets
All snippets are in `lua/snippets/wordpress.lua`. Type trigger in insert mode, select from completion menu, press Enter.

#### PHP WordPress Snippets
| Trigger | Expands To | Description |
|---------|------------|-------------|
| `wpt` | `<?php the_title(); ?>` | Display post title |
| `wpc` | `<?php the_content(); ?>` | Display post content |
| `wpe` | `<?php the_excerpt(); ?>` | Display post excerpt |
| `wpa` | `<?php the_author(); ?>` | Display post author |
| `wpd` | `<?php the_date(); ?>` | Display post date |
| `wpp` | `<?php the_permalink(); ?>` | Display permalink |
| `wpf` | `<?php the_post_thumbnail(); ?>` | Display featured image |
| `wpq` | WP_Query with meta query | Complete WP_Query template with post_type, posts_per_page, meta_query |
| `wpl` | WordPress loop | Standard `if (have_posts()) : while (have_posts())...` loop |
| `wpcpt` | Custom post type registration | Complete `register_post_type()` function with add_action hook |
| `wpenq` | Enqueue scripts/styles | Complete `wp_enqueue_scripts` function with style and script enqueuing |
| `wphook` | `add_action('init', 'function_name');` | WordPress action hook template |
| `wpfilter` | `add_filter('the_content', 'function_name');` | WordPress filter hook template |
| `wpmeta` | Meta box registration | Complete `add_meta_box()` function with add_action hook |

#### HTML Snippets
| Trigger | Expands To | Description |
|---------|------------|-------------|
| `html5` | HTML5 boilerplate | Complete HTML5 document structure with head and body |
| `wptheme` | WordPress theme template | HTML5 with `<?php wp_head(); ?>`, `<?php wp_footer(); ?>`, language attributes, body class |

#### CSS/SCSS Snippets
| Trigger | Expands To | Description |
|---------|------------|-------------|
| `flex` | Flexbox layout | `display: flex; justify-content: center; align-items: center;` |
| `grid` | CSS Grid layout | `display: grid; grid-template-columns: 1fr 1fr; gap: 1rem;` |
| `media` | Media query | `@media (max-width: 768px) { }` with choice of max-width/min-width |

#### JavaScript Snippets
| Trigger | Expands To | Description |
|---------|------------|-------------|
| `jqready` | jQuery document ready | `jQuery(document).ready(function($) { });` |
| `ajax` | WordPress AJAX request | Complete `$.ajax()` call with wp-admin/admin-ajax.php, action, nonce, success handler |

#### TypeScript Snippets
| Trigger | Expands To | Description |
|---------|------------|-------------|
| `interface` | TypeScript interface | `interface InterfaceName { }` |
| `type` | Type alias | `type TypeName = string;` |

### WordPress LSP Configuration
Intelephense (`lua/lsp.lua` lines 185-200) is configured with stubs for:
- **Core PHP**: bcmath, bz2, calendar, Core, curl, date, dba, dom, fileinfo, filter, ftp, gd, hash, iconv, json, mbstring, mysqli, pcre, PDO, pdo_mysql, session, SimpleXML, soap, SPL, standard, tokenizer, xml, zip, zlib
- **WordPress**: Complete WordPress core stubs including all functions, hooks, filters, globals, constants

**What this gives you**:
- Auto-completion for all WordPress functions
- Hover documentation for WordPress functions
- Go to definition for WordPress core functions
- Function signature help (parameter hints)
- WordPress hook and filter suggestions

---

## Architecture Deep Dive

### Module Loading Sequence (Critical)

`init.lua` loads in this exact order:

1. **Lines 3-15**: Lazy.nvim bootstrap
   - Checks if lazy.nvim is installed at `~/.local/share/nvim/lazy/lazy.nvim`
   - If not, clones from GitHub
   - Adds lazy.nvim to runtime path

2. **Line 18**: `require("settings")` - Core Vim options
   - Mouse, tabs, indentation, line numbers, encoding, clipboard
   - Must load before plugins to set baseline configuration

3. **Line 19**: `require("keymaps")` - All keybindings
   - Sets leader key to `-` (line 2 of keymaps.lua)
   - Must load before plugins so leader key is defined when plugins load

4. **Lines 22-40**: `require("lazy").setup("plugins", {...})`
   - Automatically loads ALL `.lua` files from `lua/plugins/` directory
   - Each file returns a table of plugin specifications
   - Lazy.nvim merges all tables and installs/configures plugins
   - Plugins can use leader key because keymaps.lua already ran

5. **Line 43**: `require("lsp")` - LSP configuration
   - Must load AFTER plugins because it requires mason.nvim, nvim-lspconfig, nvim-cmp
   - Configures all LSP servers, completion engine, keybindings

6. **Line 44**: `require("snippets.wordpress")` - Custom snippets
   - Must load AFTER lsp.lua because it requires LuaSnip which is configured in lsp.lua

**CRITICAL**: Do not change this order. Settings → Keymaps → Plugins → LSP → Snippets.

### Plugin Architecture

The `lua/plugins/` directory contains modular plugin definition files. Each file returns a Lua table:

```lua
-- lua/plugins/example.lua
return {
  {
    "author/plugin-name",
    dependencies = { "required/plugin" },  -- Optional: plugins this depends on
    ft = { "filetype" },                   -- Optional: lazy-load for filetypes
    cmd = { "Command" },                   -- Optional: lazy-load for commands
    keys = { "<leader>x" },                -- Optional: lazy-load for keybinding
    config = function()
      require("plugin-name").setup({
        option = value,
      })
    end,
  },
  -- Can have multiple plugins in same file
  {
    "author/another-plugin",
    config = function()
      require("another-plugin").setup()
    end,
  },
}
```

**Lazy.nvim** automatically:
- Loads all `.lua` files in `lua/plugins/`
- Merges all returned tables
- Resolves dependencies
- Lazy-loads plugins based on `ft`, `cmd`, `keys`, `event`
- Executes `config` functions after plugin loads

**File organization** (by category):
- `colorscheme.lua` - Themes
- `ui.lua` - Visual UI components
- `editor.lua` - Editing enhancements
- `lsp.lua` - LSP plugin declarations (config is in `lua/lsp.lua`)
- `treesitter.lua` - Treesitter parser
- `git.lua` - Git plugins
- `terminal.lua` - Terminal integration
- `lang.lua` - Language-specific plugins
- `formatting.lua` - Formatters and code generation

### LSP Configuration Flow

1. **Mason setup** (`lua/lsp.lua` lines 7-15): Initializes Mason plugin manager
2. **Server list** (lines 18-31): Defines which LSP servers to install
3. **Mason-lspconfig** (lines 33-36): Tells Mason to auto-install those servers
4. **Completion setup** (lines 39-131):
   - Loads LuaSnip and friendly-snippets
   - Configures nvim-cmp with sources, keybindings, formatting
   - Sets up command-line completion
5. **LSP server configuration** (lines 133-232):
   - Defines `on_attach` function with LSP keybindings
   - Defines `setup_lsp_server` helper using `vim.lsp.config()` API
   - Loops through all servers and configures each one
   - Special configurations for emmet_ls (filetypes), pyright (settings), intelephense (WordPress stubs), ts_ls (inlay hints)

### Settings Architecture

`lua/settings.lua` sets core Vim options using `vim.opt`:

- **Mouse**: `mouse = "a"` - Enable mouse in all modes
- **Tabs**: 4 spaces, expand tabs to spaces
- **UI**: Cursor line/column highlighting, line numbers, split behavior (right/below)
- **Search**: Case-insensitive unless uppercase present
- **Encoding**: UTF-8
- **Clipboard**: System clipboard integration (unnamedplus for Linux, unnamed for others)
- **Timeout**: Disabled for key sequences
- **Colors**: True color support (`termguicolors = true`)

### Keybinding Architecture

`lua/keymaps.lua` uses `vim.keymap.set(mode, key, action, opts)`:

```lua
vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
```

- **mode**: `"n"` (normal), `"i"` (insert), `"v"` (visual), `"t"` (terminal)
- **key**: The key combination
- **action**: Vim command string or Lua function
- **opts**: Options including `desc` (shown in which-key)

Organized by category:
- Lines 6-7: UI toggles
- Lines 9-12: File operations
- Lines 14-15: File explorer
- Lines 20-29: Special keys (F2, F3, F5)
- Lines 31-32: WSL clipboard
- Lines 34-40: Buffer navigation
- Lines 42-58: Git operations
- Lines 60-63: Clipboard operations
- Lines 65-81: LSP navigation and actions
- Lines 83-87: Telescope
- Lines 89-91: Terminal
- Lines 93-94: Database UI
- Lines 96-97: Mason
- Lines 99-104: WordPress shortcuts

All use leader key `-` set on line 2: `vim.g.mapleader = "-"`

---

## Common Commands Reference

### Plugin Management
```vim
:Lazy                  " Open plugin manager UI
:Lazy sync             " Update all plugins to latest versions
:Lazy update           " Same as sync
:Lazy clean            " Remove plugins not in config
:Lazy install          " Install missing plugins
:Lazy profile          " Show startup time profiling
:Lazy log              " Show recent activity log
:Lazy help             " Show help
```

### LSP Management
```vim
:Mason                 " Open LSP server manager
:MasonUpdate           " Update all servers
:MasonInstall <server> " Install specific server
:MasonUninstall <srv>  " Uninstall server
:LspInfo               " Show attached LSP clients for current buffer
:LspStart              " Start LSP client
:LspStop               " Stop LSP client
:LspRestart            " Restart LSP client
```

### Diagnostics
```vim
:lua vim.diagnostic.open_float()  " Show diagnostic in floating window
:lua vim.diagnostic.setloclist()  " Send diagnostics to location list
```

### Treesitter
```vim
:TSUpdate              " Update all parsers
:TSUpdateSync          " Update all parsers synchronously
:TSInstall <lang>      " Install parser for language
:TSUninstall <lang>    " Uninstall parser
:TSInstallInfo         " Show parser installation status
:TSBufToggle highlight " Toggle highlighting for current buffer
```

### Telescope
```vim
:Telescope find_files  " Find files
:Telescope live_grep   " Search text in files
:Telescope buffers     " List open buffers
:Telescope help_tags   " Search help documentation
:Telescope oldfiles    " Recently opened files
:Telescope commands    " List available commands
:Telescope keymaps     " List all keybindings
:Telescope colorscheme " Preview and select colorscheme
:Telescope git_files   " Find files in git repo
:Telescope git_status  " Git status
:Telescope git_commits " Git commits
```

### Neo-tree
```vim
:Neotree              " Open Neo-tree
:Neotree toggle       " Toggle Neo-tree
:Neotree close        " Close Neo-tree
:Neotree reveal       " Reveal current file in tree
:Neotree focus        " Focus Neo-tree window
```

### Git (vim-fugitive)
```vim
:Git status           " Git status window
:Git add %            " Stage current file
:Git add .            " Stage all files
:Git commit           " Commit with editor
:Git commit -m "msg"  " Commit with message
:Git push             " Push to remote
:Git pull             " Pull from remote
:Git diff             " Diff working tree
:Git blame            " Show git blame
:Git log              " Show commit log
:Gdiff                " Diff current file in split
:Gwrite               " Stage current file
:Gread                " Revert current file to last commit
```

### Database (vim-dadbod)
```vim
:DBUIToggle           " Toggle database UI
:DBUI                 " Open database UI
:DBUIAddConnection    " Add database connection
:DB                   " Execute SQL query
```

### Terminal
```vim
:ToggleTerm           " Toggle terminal
:ToggleTerm 2         " Open terminal #2
:ToggleTermToggleAll  " Toggle all terminals
```

### Markdown Preview
```vim
:MarkdownPreview      " Open preview in browser
:MarkdownPreviewStop  " Close preview
:MarkdownPreviewToggle " Toggle preview
```

### General
```vim
:checkhealth          " Check Neovim health (highly recommended!)
:checkhealth vim.lsp  " Check LSP health specifically
:messages             " Show message history
:set                  " Show all options
:verbose map <key>    " Show what <key> is mapped to
```

---

## Customization Guide

### Adding a New Plugin

1. Choose or create appropriate file in `lua/plugins/` (by category)
2. Add plugin specification:
```lua
-- lua/plugins/editor.lua (add to returned table)
{
  "author/plugin-name",
  dependencies = { "dependency/plugin" },  -- If needed
  config = function()
    require("plugin-name").setup({
      -- Plugin options here
    })
  end,
},
```
3. Restart Neovim or run `:Lazy sync`

### Adding a New LSP Server

1. Edit `lua/lsp.lua`
2. Add server name to `servers` table (line 18-31):
```lua
local servers = {
  "html",
  "cssls",
  -- ... existing servers ...
  "your_new_server",  -- Add here
}
```
3. (Optional) Add custom configuration in the server setup loop (lines 168-231)
4. Restart Neovim - Mason will auto-install

### Adding a New Keybinding

Edit `lua/keymaps.lua`:
```lua
map("n", "<leader>n", ":YourCommand<CR>", { desc = "Description" })
```

- Mode: `"n"` normal, `"i"` insert, `"v"` visual, `"t"` terminal
- Key: Use `<leader>` for leader key (currently `-`)
- Action: Vim command or `function() ... end`
- Desc: Shows in which-key popup

### Changing Theme

1. Edit `lua/plugins/colorscheme.lua` line 59:
```lua
vim.cmd.colorscheme("tokyonight")  -- Change from "catppuccin"
```

2. Update Lualine theme in `lua/plugins/ui.lua` line 65:
```lua
theme = 'tokyonight',  -- Match your colorscheme
```

3. Restart Neovim

### Creating Custom Snippets

1. Edit `lua/snippets/wordpress.lua` or create new file
2. Add snippets:
```lua
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("php", {
  s("mytrigger", {
    t("function "), i(1, "name"), t("() {"), t({"", "\t"}),
    i(2, "// code"), t({"", ""}),
    t("}"),
  }),
})
```

3. If new file, load in `init.lua`:
```lua
require("snippets.your_file")
```

### Modifying UI

- **File explorer width**: `lua/plugins/ui.lua` line 20 → `width = 30`
- **Terminal size**: `lua/plugins/terminal.lua` line 8 → `size = 20`
- **Code outline width**: `lua/plugins/editor.lua` line 71 → `width = 25`
- **Bufferline tab size**: `lua/plugins/ui.lua` line 206 → `tab_size = 21`
- **Status line sections**: `lua/plugins/ui.lua` lines 80-154

### Changing Leader Key

Edit `lua/keymaps.lua` line 2:
```lua
vim.g.mapleader = ","  -- Change from "-" to comma or any key
```

Must be done before plugins load, so keep it at line 2.

---

## Troubleshooting

### Completion menu not working
**Symptom**: No suggestions when typing

**Solution**:
1. Check LSP attached: `:LspInfo`
2. Check Mason servers: `:Mason` (should show ✓ for installed servers)
3. Check completion sources: `:lua =vim.tbl_keys(require('cmp').get_config().sources[1])`
4. Restart LSP: `:LspRestart`

### Arrow keys not working in completion
**Already fixed** in `lua/lsp.lua` lines 68-82. If still not working:
1. Restart Neovim
2. Check keybindings: `:verbose imap <Down>`

### LSP server not installing
**Symptom**: Server shows ✗ in Mason

**Solution**:
1. Open Mason: `:Mason`
2. Navigate to server, press `i` to install manually
3. Check log: `:MasonLog`
4. Ensure Node.js/npm installed for most servers: `node --version`

### Plugin errors on startup
**Symptom**: Errors when opening Neovim

**Solution**:
1. Check health: `:checkhealth`
2. Update plugins: `:Lazy sync`
3. Clean and reinstall: `:Lazy clean` then `:Lazy sync`
4. Check for conflicts in `lua/plugins/` (no `init.lua` should exist there)

### Treesitter errors
**Symptom**: "parser not found" or highlighting broken

**Solution**:
1. Update parsers: `:TSUpdate`
2. Install specific parser: `:TSInstall <language>`
3. Check status: `:TSInstallInfo`

### Icons showing as squares
**Symptom**: Squares or broken characters instead of icons

**Solution**:
1. Install a Nerd Font: https://www.nerdfonts.com/
2. Set terminal to use Nerd Font
3. Restart terminal

### WSL clipboard not working
**Symptom**: Can't copy from Neovim to Windows

**Solution**:
1. Check `clip.exe` exists: `which clip.exe`
2. Should return: `/mnt/c/Windows/System32/clip.exe`
3. If not found, add to PATH in `~/.bashrc`:
```bash
export PATH="$PATH:/mnt/c/Windows/System32"
```

### Slow startup
**Symptom**: Neovim takes several seconds to open

**Solution**:
1. Profile startup: `:Lazy profile`
2. Check for slow plugins
3. Add lazy-loading to heavy plugins in `lua/plugins/`:
```lua
{
  "heavy/plugin",
  ft = { "filetype" },  -- Load only for specific filetype
  cmd = { "Command" },  -- Load only when command used
  event = "VeryLazy",   -- Load after UI rendered
}
```

---

## Testing Configuration

After making changes:

```bash
# Test config loads without errors
nvim --headless -c 'lua print("Config OK")' -c 'quitall' 2>&1

# Check health
nvim +checkhealth +qall

# Profile startup time
nvim --startuptime startup.log +qall
cat startup.log
```

---

## File Reference

### Configuration Files
- `init.lua` - Main entry point, loads all modules
- `lua/settings.lua` - Core Vim options
- `lua/keymaps.lua` - All keybindings
- `lua/lsp.lua` - LSP + Mason + completion config
- `lua/wordpress.lua` - WordPress utilities (currently unused)

### Plugin Definition Files
- `lua/plugins/colorscheme.lua` - Theme configurations
- `lua/plugins/ui.lua` - Neo-tree, Lualine, Bufferline, Alpha, indent-blankline
- `lua/plugins/editor.lua` - Telescope, Outline, autopairs, comments, colorizer, which-key
- `lua/plugins/lsp.lua` - LSP plugin declarations
- `lua/plugins/treesitter.lua` - Treesitter configuration
- `lua/plugins/git.lua` - Fugitive, Gitsigns
- `lua/plugins/terminal.lua` - ToggleTerm
- `lua/plugins/lang.lua` - WordPress, Markdown, Database, Docker plugins
- `lua/plugins/formatting.lua` - Emmet, Prettier, autotag

### Snippet Files
- `lua/snippets/wordpress.lua` - WordPress/PHP/HTML/CSS/JS/TS snippets

### Generated Files
- `lazy-lock.json` - Plugin version lock (managed by Lazy.nvim)

---

## Important Notes for Claude

1. **Never change module loading order** in `init.lua` - it's critical
2. **Don't create `lua/plugins/init.lua`** - Lazy loads all `.lua` files automatically
3. **Completion menu is nvim-cmp**, not Mason (Mason installs LSP servers)
4. **Arrow keys now work** in completion menu (Up/Down to navigate, Enter to accept)
5. **Leader key is `-`** (dash) - set in `lua/keymaps.lua` line 2
6. **LSP configuration uses `vim.lsp.config()`** API (modern nvim-lspconfig v3.0+)
7. **WordPress support via Intelephense** with comprehensive stubs
8. **All keybindings documented** with descriptions for which-key
9. **Modular architecture** - plugins organized by category in separate files
10. **Lazy loading** - Many plugins load only when needed (by filetype, command, or key)
