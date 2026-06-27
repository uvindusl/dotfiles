# Fedora Dotfiles — uvindusl

Personal dotfiles for Fedora Linux 44 Workstation on an HP Laptop 15-dy2xxx.

## Machine Specs

| Component | Detail |
|-----------|--------|
| **OS** | Fedora 44 (Workstation Edition) |
| **Kernel** | 7.0.12-201.fc44.x86_64 |
| **CPU** | Intel Core i5-1135G7 (4C/8T) @ 2.40 GHz |
| **GPU** | Intel Iris Xe Graphics |
| **RAM** | 15 GiB |
| **Storage** | 500 GB HDD + 1 TB NVMe (Kingston SNV3S1000G) |
| **Shell** | Zsh 5.9 (oh-my-zsh + powerlevel10k) |

## What's Tracked

| Config | Location | Description |
|--------|----------|-------------|
| **Zsh** | `zsh/.zshrc` | Shell config — aliases, plugins, nvm, atuin, zoxide |
| **Zsh Prompt** | `zsh/.p10k.zsh` | Powerlevel10k prompt theme |
| **Neovim** | `nvim/` | Full Neovim config — Lazy.nvim plugin manager |
| **Kitty** | `kitty/kitty.conf` | Terminal emulator config |
| **Tmux** | `tmux/tmux.conf` | Terminal multiplexer + TPM plugins |
| **Atuin** | `atuin/config.toml` | Shell history search |
| **Opencode** | `opencode/opencode.jsonc` | AI coding assistant MCP config |
| **Scripts** | `scripts/` | Personal utility scripts |

## Software Stack

### CLI Tools
- **Editor:** Neovim (Lazy.nvim, Mason LSP)
- **Shell:** Zsh + oh-my-zsh + powerlevel10k
- **Multiplexer:** Tmux + TPM (resurrect, continuum, cpu-mem)
- **Fuzzy Finder:** zoxide (`z` command)
- **History:** Atuin (fuzzy Ctrl+R)
- **File Lister:** lsd (icons + tree view)
- **Info:** fastfetch

### GNOME Extensions (Enabled)
- **Dash to Dock** — transformed dock
- **Tiling Assistant** — window tiling & snapping
- **Transparent Top Bar** — translucent top panel
- **Vitals** — system monitor in top bar
- **GSConnect** — phone integration (KDE Connect)
- **AppIndicator Support** — tray icons
- **Power Off Options** — shutdown menu
- **Background Logo** — Fedora logo on desktop

### Flatpak Apps
Zen Browser, Obsidian, VS Code, Postman, Spotify, Thunderbird, ONLYOFFICE, Beekeeper Studio, pgAdmin 4, Heroic Games Launcher, LocalSend, Transmission, Flatseal

### Neovim Plugins
- **Telescope** — fuzzy finder (files, grep, buffers, help, diagnostics)
- **Neo-tree** — file explorer (filesystem, buffers, git status)
- **Treesitter** — syntax highlighting & parsing
- **Mason** — LSP/dap/linter installer
- **LSP** — lua_ls, pyright, ts_ls, rust_analyzer, etc.
- **Alpha** — dashboard / start screen
- **Bufferline** — tab/buffer bar
- **Lualine** — statusline
- **Gitsigns** — git decorations in gutter
- **Indent-blankline** — indentation guides
- **Discord Presence** — shows nvim status on Discord

## Setup

These dotfiles use **direct symlinks** from `$HOME` into this repo. Changes to configs are changes to the repo.

```bash
# Clone to Documents
git clone -b fedora-setup git@github.com:uvindusl/dotfiles.git ~/Documents/dotfiles

# Restore symlinks (run from repo root)
./bootstrap.sh
```
