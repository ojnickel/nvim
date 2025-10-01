# 🚀 Modern Neovim Configuration for WordPress & Web Development

A powerful, VS Code-inspired Neovim configuration optimized for WordPress and modern web development. This setup combines the efficiency of Vim with the features of a modern IDE, supporting HTML, CSS, SCSS, JavaScript, TypeScript, PHP, Python, Docker, and SQL development.

![Neovim](https://img.shields.io/badge/NeoVim-%2357A143.svg?&style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white)

## ✨ Features

### 🎨 VS Code-Inspired Interface
- **Modern UI** with VS Code dark theme and transparent background
- **Neo-tree file explorer** with Git integration
- **Bufferline tabs** for easy buffer navigation
- **Enhanced status line** with Git status and diagnostics
- **Satellite minimap** showing cursor, diagnostics, and Git changes
- **Custom start screen** with quick actions

### 🔧 Language Support
- **HTML/CSS/SCSS** with Emmet expansion
- **JavaScript/TypeScript** with full IntelliSense
- **PHP** with WordPress-specific stubs and features
- **Python** with LSP support
- **Docker** syntax highlighting
- **SQL** with database integration
- **Markdown** support

### ⚡ Development Tools
- **Mason LSP Manager** - Automatic language server installation
- **Telescope** - Fuzzy finder for files, text, and more
- **Git integration** - Visual Git status, blame, and operations
- **Terminal integration** - Built-in terminal with toggle
- **Database UI** - Database management for WordPress development
- **Color preview** - Live CSS color highlighting
- **Auto-completion** - Intelligent code completion with snippets

### 🔑 Familiar Keybindings
All keybindings match the original `.vimrc` configuration:
- Leader key: `-` (dash)
- `F2` - Toggle file explorer
- `F5` - Toggle satellite minimap
- `<leader>w` - Save file
- `<leader>q` - Quit
- `t` - New buffer
- `<leader>l/h` - Navigate buffers
- And many more familiar shortcuts!

## 📦 Installation

### Prerequisites
- **Neovim 0.9+** (recommended: latest stable)
- **Git** for plugin management
- **Node.js** and **npm** for LSP servers
- **Ripgrep** for telescope search functionality
- **A Nerd Font** for icons (recommended: FiraCode Nerd Font)

### Quick Install

1. **Backup existing configuration** (if any):
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
   ```

3. **Start Neovim**:
   ```bash
   nvim
   ```
   
   The configuration will automatically:
   - Install Lazy.nvim plugin manager
   - Download and install all plugins
   - Install LSP servers via Mason

4. **Restart Neovim** after initial plugin installation

## 📁 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── settings.lua         # Vim options and settings
│   ├── keymaps.lua         # Key mappings
│   ├── plugins.lua         # Plugin definitions
│   ├── lsp.lua             # LSP configuration
│   ├── ui.lua              # UI and theme setup
│   └── snippets/
│       └── wordpress.lua   # WordPress & web dev snippets
└── README.md
```

## 🎯 WordPress Development Features

### Comprehensive Snippets
- `wpq` - WP_Query with meta queries
- `wpl` - WordPress loop
- `wpcpt` - Custom post type registration
- `wpenq` - Enqueue scripts and styles
- `wpmeta` - Meta box creation
- `wptheme` - WordPress theme template
- And many more!

### WordPress-Specific LSP
- **Intelephense** with WordPress stubs
- **WordPress function completion**
- **Hook and filter suggestions**
- **WordPress coding standards**

### Database Integration
- **Database UI** for managing WordPress databases
- **SQL syntax highlighting**
- **Query execution and results**

## ⌨️ Key Mappings

### File Operations
| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit without saving |
| `<leader>x` | Save and quit |
| `F2` | Toggle file explorer |
| `F3` | Paste mode toggle |

### Buffer Navigation
| Key | Action |
|-----|--------|
| `t` | New buffer |
| `<leader>l` | Next buffer |
| `<leader>h` | Previous buffer |
| `<leader>d` | Delete buffer |
| `<leader>bl` | List all buffers |

### Git Operations
| Key | Action |
|-----|--------|
| `<leader>gs` | Git status |
| `<leader>gc` | Git commit |
| `<leader>ga` | Git add current file |
| `<leader>gp` | Git push |
| `<leader>gd` | Git diff |

### Development Tools
| Key | Action |
|-----|--------|
| `<leader>ff` | Find files |
| `<leader>fg` | Live grep |
| `<leader>t` | Toggle terminal |
| `<leader>m` | Open Mason |
| `F5` | Toggle satellite |

## 🎨 Customization

### Changing Theme
Edit `lua/ui.lua` and modify the colorscheme:
```lua
vim.cmd("colorscheme your-theme")
```

### Adding Plugins
Add plugins to `lua/plugins.lua`:
```lua
{ "author/plugin-name", config = function() end }
```

### Custom Snippets
Add snippets to `lua/snippets/` directory following the LuaSnip format.

### LSP Servers
Add language servers to `lua/lsp.lua`:
```lua
local servers = {
  "your-language-server",
  -- ... existing servers
}
```

## 🔧 Troubleshooting

### Plugin Installation Issues
```bash
# Remove plugin cache and reinstall
rm -rf ~/.local/share/nvim
nvim
```

### LSP Server Issues
```bash
# Open Mason and reinstall servers
:Mason
```

### Clipboard Issues (WSL)
Make sure `clip.exe` is accessible for WSL clipboard integration.

## 📚 Learning Resources

- [Neovim Documentation](https://neovim.io/doc/)
- [Lua Guide for Neovim](https://github.com/nanotee/nvim-lua-guide)
- [WordPress Codex](https://codex.wordpress.org/)
- [LSP Configuration](https://github.com/neovim/nvim-lspconfig)

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch: `git checkout -b feature-name`
3. Make your changes
4. Commit: `git commit -m "Add feature"`
5. Push: `git push origin feature-name`
6. Open a pull request

## 📝 License

This configuration is open source and available under the [MIT License](LICENSE).

## 🙏 Acknowledgments

- [Neovim](https://neovim.io/) - The hyperextensible Vim-based text editor
- [LazyVim](https://github.com/LazyVim/LazyVim) - Inspiration for modern Neovim configuration
- [VS Code](https://code.visualstudio.com/) - UI/UX inspiration
- WordPress Community - For the amazing development ecosystem

---

**Made with ❤️ for WordPress developers who love Vim**

*Transform your development workflow with the power of Neovim and the familiarity of your existing key bindings.*