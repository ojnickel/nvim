# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a comprehensive Neovim configuration written in Lua, optimized for web development with a focus on WordPress development. It uses the Lazy.nvim plugin manager and provides a VS Code-like development experience.

## Package Management

- **Plugin Manager**: Lazy.nvim (automatically bootstrapped in `lua/plugins.lua`)
- **LSP Manager**: Mason.nvim for automatic LSP server installation
- **Lock File**: `lazy-lock.json` tracks exact plugin versions

## Common Commands

### Plugin Management
```bash
# Update plugins (run inside Neovim)
:Lazy update

# Install missing plugins
:Lazy install

# Check plugin status
:Lazy

# Update LSP servers
:Mason
```

### File Operations
- `<leader>w` - Save file
- `<leader>q` - Quit without saving  
- `<leader>x` - Save and quit
- `<F2>` - Toggle Neo-tree file explorer

### Development Tools
- `<leader>ff` - Find files (Telescope)
- `<leader>fg` - Live grep search
- `<leader>fb` - Buffer list
- `<leader>t` - Toggle terminal
- `<leader>db` - Toggle database UI
- `<F5>` - Toggle scrollview (scrollbar)

### LSP Operations
- `gd` - Go to definition
- `gr` - Show references
- `K` - Show hover information
- `<leader>ca` - Code actions
- `<leader>rn` - Rename symbol
- `<leader>f` - Format document

### Git Integration
- `<leader>gs` - Git status
- `<leader>gc` - Git commit
- `<leader>ga` - Git add current file
- `<leader>gp` - Git push

## Code Architecture

### Configuration Structure
- `init.lua` - Main entry point that requires all modules
- `lua/settings.lua` - Vim options and general settings
- `lua/keymaps.lua` - Key mappings and leader key configuration
- `lua/plugins.lua` - Plugin definitions and configurations using Lazy.nvim
- `lua/lsp.lua` - LSP server setup, Mason configuration, and autocompletion
- `lua/ui.lua` - UI components (lualine, bufferline, neo-tree, etc.)
- `lua/snippets/wordpress.lua` - WordPress-specific code snippets

### Plugin Architecture
The configuration uses a modular approach where:
- Plugins are defined in `plugins.lua` with their configurations
- UI components are configured in `ui.lua`
- LSP servers and completion are handled in `lsp.lua`
- Custom snippets are organized by language/framework

### Key Features
- **Theme**: Catppuccin (mocha flavor) with TokyoNight as alternative
- **File Explorer**: Neo-tree (VS Code-like sidebar)
- **Search**: Telescope with file browser extension
- **Terminal**: ToggleTerm for integrated terminal
- **Git**: Fugitive + Gitsigns for comprehensive Git integration
- **Database**: vim-dadbod suite for database management
- **WordPress**: Dedicated snippets and WordPress.vim plugin

### Language Support
Configured LSP servers for:
- HTML, CSS, Sass/SCSS
- JavaScript, TypeScript  
- PHP (with WordPress stubs via Intelephense)
- Python, Bash, Docker, SQL
- Emmet for rapid HTML/CSS development

### Development Workflow
1. Use `<F2>` to open file explorer
2. Navigate and open files using Neo-tree or Telescope (`<leader>ff`)
3. LSP provides real-time diagnostics and code intelligence
4. Terminal integration with `<leader>t` for running commands
5. Git operations directly from editor
6. WordPress snippets available for rapid PHP development

## Configuration Notes

- Leader key is set to `-` (dash)
- WSL clipboard integration configured for Windows users
- Custom WordPress snippets include post types, hooks, meta boxes, and common functions
- Mason automatically installs and manages LSP servers
- Scrollview provides scrollbar functionality for better code navigation