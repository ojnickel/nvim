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

### Code Snippets

Snippets use LuaSnip and appear in autocomplete. Type the trigger word and press `Tab` to insert. Use `Tab` to jump to the next placeholder, `Shift+Tab` to go back.

#### PHP/WordPress Snippets

**Template Tags** (Static - no placeholders):
- `wpt` - `<?php the_title(); ?>`
- `wpc` - `<?php the_content(); ?>`
- `wpe` - `<?php the_excerpt(); ?>`
- `wpa` - `<?php the_author(); ?>`
- `wpd` - `<?php the_date(); ?>`
- `wpp` - `<?php the_permalink(); ?>`
- `wpf` - `<?php the_post_thumbnail(); ?>`

**WordPress Functions** (Interactive - has tab stops):
- `wpq` - WP_Query with meta queries (customizable post type, meta key/value)
- `wpl` - WordPress loop (if/while/endwhile structure)
- `wpcpt` - Custom post type registration (full function with add_action)
- `wpenq` - Enqueue scripts and styles (full function with add_action)
- `wpmeta` - Meta box creation (full function with add_meta_boxes action)
- `wphook` - add_action hook (customizable hook name and callback)
- `wpfilter` - add_filter hook (customizable filter name and callback)

#### HTML Snippets

- `html5` - Complete HTML5 boilerplate with customizable language, title, and body
- `wptheme` - WordPress theme template with wp_head(), wp_footer(), and body_class()

#### CSS/SCSS Snippets

- `flex` - Flexbox layout (customizable justify-content and align-items)
- `grid` - CSS Grid layout (customizable columns and gap)
- `media` - Media query (choose max-width/min-width, customizable breakpoint)

#### JavaScript Snippets

- `jqready` - jQuery document.ready wrapper
- `ajax` - WordPress AJAX call with customizable action, data, and success callback

#### TypeScript Snippets

- `interface` - TypeScript interface declaration
- `type` - TypeScript type alias

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

## 🔄 Auto-Sync Configuration

This repository includes scripts to automatically sync changes from your active Neovim config (`~/.config/nvim`) to this git repository.

### Option 1: Manual Sync
Run the sync script whenever you want to commit changes:
```bash
~/git/nvim/sync-config.sh
```

### Option 2: Scheduled Sync (Systemd Timer)
Automatically sync every 30 minutes:
```bash
# Enable and start the timer
systemctl --user enable nvim-sync.timer
systemctl --user start nvim-sync.timer

# Check timer status
systemctl --user status nvim-sync.timer

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
~/git/nvim/watch-and-sync.sh

# Or run in background
nohup ~/git/nvim/watch-and-sync.sh > /tmp/nvim-sync.log 2>&1 &
```

### Customize Sync Timing
Edit `~/.config/systemd/user/nvim-sync.timer` to change the schedule:
- Every 30 minutes: `OnUnitActiveSec=30min`
- Daily at 10 PM: `OnCalendar=*-*-* 22:00:00`
- On every boot: `OnBootSec=5min`

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