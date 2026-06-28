# Fedora Dotfiles — uvindusl

Personal dotfiles for Fedora Linux 44 Workstation on an HP Laptop 15-dy2xxx.

<img width="1680" height="1050" alt="image" src="https://github.com/user-attachments/assets/27bad031-079e-4df1-87a0-50e5fbed21b7" />


## Machine Specs

| Component | Detail |
|-----------|--------|
| **OS** | Fedora 44 (Workstation Edition) |
| **Kernel** | 7.0.12-201.fc44.x86_64 |
| **CPU** | Intel Core i5-1135G7 (4C/8T) @ 2.40 GHz |
| **GPU** | Intel Iris Xe Graphics |
| **RAM** | 16 GiB |
| **Storage** | 1 TB NVMe (Kingston SNV3S1000G) |
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
| **GitHub Dash** | `gh-dash/config.yml` | PR/issues/notifications TUI |
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

## Installed Apps

### RPM (DNF)
Kitty, Neovim, Zsh, Tmux, Git, Docker (CE + Compose + Desktop), GitHub CLI (`gh`), Google Chrome, VLC, Firefox, OBS Studio, Discord, Steam, LibreOffice (Writer, Calc, Impress), PostgreSQL 18, Java 26, Python (pip + uv), lsd, fastfetch, fzf, fd-find, FFmpeg, GNOME Boxes

### Manual Install (tarball)
- **Android Studio** (2026.1.1) — `~/.local/share/jetbrains/android-studio`
- **IntelliJ IDEA Ultimate** (2026.1) — `~/.local/share/jetbrains/idea-ultimate`

### Flatpak
Zen Browser, Obsidian, VS Code, Postman, Spotify, Thunderbird, ONLYOFFICE, Beekeeper Studio, pgAdmin 4, Heroic Games Launcher, LocalSend, Transmission, Flatseal, Blanket, Extension Manager

## Keybindings

Leader key = `<Space>`

### Neovim — OpenCode (AI)
| Key | Mode | Action |
|-----|------|--------|
| `<leader>oa` | N/X | Ask OpenCode with `@this:` context |
| `<leader>os` | N/X | Select OpenCode action / prompt |
| `go` | N/X | Append range to OpenCode |
| `goo` | N | Append line to OpenCode |
| `<leader>ou` / `<leader>od` | N | Scroll OpenCode up/down |

### Neovim — General
| Key | Action |
|-----|--------|
| `<C-s>` | Save file |
| `<C-q>` | Quit file |
| `<Space>` | Leader prefix |
| `x` | Delete char (no yank) |
| `<C-d>` / `<C-u>` | Scroll down/up, center cursor |
| `n` / `N` | Next/prev search result, center |
| `<leader>lw` | Toggle line wrap |

### Neovim — Windows
| Key | Action |
|-----|--------|
| `<leader>v` | Split vertically |
| `<leader>h` | Split horizontally |
| `<leader>se` | Equalize split sizes |
| `<leader>xs` | Close current split |
| `<C-k/j/h/l>` | Navigate splits |
| `<Up>` / `<Down>` | Resize height ∓2 |
| `<Left>` / `<Right>` | Resize width ∓2 |

### Neovim — Buffers & Tabs
| Key | Action |
|-----|--------|
| `<Tab>` / `<S-Tab>` | Next/prev buffer |
| `<leader>x` | Close buffer |
| `<leader>b` | New buffer |
| `<leader>to` | New tab |
| `<leader>tx` | Close tab |
| `<leader>tn` / `<leader>tp` | Next/prev tab |

### Neovim — LSP Diagnostics
| Key | Action |
|-----|--------|
| `]d` / `[d` | Next/prev diagnostic |
| `<leader>d` | Open floating diagnostic |
| `<leader>q` | Open diagnostic list |

### Neovim — Telescope
| Key | Action |
|-----|--------|
| `<leader><leader>` | Find buffers |
| `<leader>sf` | Find files |
| `<leader>sg` | Live grep |
| `<leader>sw` | Search current word |
| `<leader>sh` | Search help |
| `<leader>sk` | Search keymaps |
| `<leader>ss` | Select Telescope picker |
| `<leader>sd` | Search diagnostics |
| `<leader>sr` | Resume last search |
| `<leader>s.` | Recent files |
| `<leader>/` | Fuzzy search in buffer |

Inside Telescope: `<C-k/j>` move, `<C-l>` open.

### Neovim — Neo-tree
| Key | Action |
|-----|--------|
| `\` | Reveal current file |
| `<leader>e` | Toggle file explorer |
| `<leader>ngs` | Git status (float) |
| `<CR>` / `l` | Open file |
| `s` / `S` | Open vertical/horizontal split |
| `a` / `A` | Add file / directory |
| `d` / `r` | Delete / rename |
| `c` / `m` | Copy / move |
| `y` / `x` / `p` | Copy / cut / paste clipboard |
| `q` / `R` | Close / refresh |
| `H` / `/` | Toggle hidden / fuzzy find |

### Neovim — Visual
| Key | Action |
|-----|--------|
| `<` / `>` | Indent, keep selection |
| `p` | Paste without losing yank |

### Tmux (Prefix = `C-Space`)
| Key | Action |
|-----|--------|
| `Prefix + \` | Split horizontal (same CWD) |
| `Prefix + -` | Split vertical (same CWD) |
| `Prefix + h/j/k/l` | Resize pane by 5 |
| `Prefix + C-h/j/k/l` | Navigate panes (tmux-nvim seamless) |
| `Prefix + c` | New window (same CWD) |
| `Prefix + [` | Enter copy mode (vi: `v` select, `y` yank) |
| `Prefix + P` | Paste buffer |

### Zsh
| Key | Action |
|-----|--------|
| `z <fragment>` | Jump to directory (zoxide) |
| `zi` | Interactive picker (zoxide) |
| `Ctrl+R` | Search history (atuin) |
| `fv` | fzf → open file in nvim |
| `f` | fzf → copy file path to clipboard |
| `fcd` | fzf → cd into directory |
| `ls` / `l` / `la` / `lt` | `lsd` with icons & tree |

### GNOME Desktop
| Key | Action |
|-----|--------|
| `Super + t` | Launch Kitty terminal |
| `Super + 1`–`9` | Switch to workspace |
| `Super + q` | Close window |
| `Super + h` | Minimize window |
| `Super + a` | Application view |
| `Super + s` | Quick settings |
| `Super + space` | Switch input source |
| `Print` | Screenshot UI |

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
- **OpenCode** — AI assistant inside Neovim
- **Discord Presence** — shows nvim status on Discord

## Setup

These dotfiles use **direct symlinks** from `$HOME` into this repo. Changes to configs are changes to the repo.

```bash
# Clone to Documents
git clone -b fedora-setup git@github.com:uvindusl/dotfiles.git ~/Documents/dotfiles

# Restore symlinks (run from repo root)
./bootstrap.sh
```
