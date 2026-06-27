# Keybindings Reference

Leader key = `<Space>`

---

## Neovim

### General
| Key | Action |
|-----|--------|
| `<C-s>` | Save file |
| `<C-q>` | Quit file |
| `<Space>` | Leader prefix |
| `x` | Delete char (no yank) |
| `<C-d>` / `<C-u>` | Scroll down/up, center cursor |
| `n` / `N` | Next/prev search result, center |
| `<leader>lw` | Toggle line wrap |

### Window Management
| Key | Action |
|-----|--------|
| `<leader>v` | Split vertically |
| `<leader>h` | Split horizontally |
| `<leader>se` | Equalize split sizes |
| `<leader>xs` | Close current split |
| `<C-k/j/h/l>` | Navigate splits |

### Resize Splits
| Key | Action |
|-----|--------|
| `<Up>` | Resize height -2 |
| `<Down>` | Resize height +2 |
| `<Left>` | Resize width -2 |
| `<Right>` | Resize width +2 |

### Buffers
| Key | Action |
|-----|--------|
| `<Tab>` | Next buffer |
| `<S-Tab>` | Previous buffer |
| `<leader>x` | Close buffer |
| `<leader>b` | New buffer |

### Tabs
| Key | Action |
|-----|--------|
| `<leader>to` | New tab |
| `<leader>tx` | Close tab |
| `<leader>tn` | Next tab |
| `<leader>tp` | Previous tab |

### Diagnostics (LSP)
| Key | Action |
|-----|--------|
| `]d` | Next diagnostic |
| `[d` | Previous diagnostic |
| `<leader>d` | Open floating diagnostic |
| `<leader>q` | Open diagnostic list |

### Telescope (Fuzzy Finder)
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
| `<leader>/` | Fuzzy search in current buffer |
| `<leader>s/` | Live grep in open files |

Inside Telescope:
| Key | Action |
|-----|--------|
| `<C-k>` | Move selection up |
| `<C-j>` | Move selection down |
| `<C-l>` | Open selected |

### Neo-tree (File Explorer)
| Key | Action |
|-----|--------|
| `\` | Reveal current file in tree |
| `<leader>e` | Toggle file explorer (left) |
| `<leader>ngs` | Git status (float) |

Inside Neo-tree:
| Key | Action |
|-----|--------|
| `<CR>` / `l` | Open file |
| `s` | Open in vertical split |
| `S` | Open in horizontal split |
| `t` | Open in new tab |
| `a` | Add file |
| `A` | Add directory |
| `d` | Delete |
| `r` | Rename |
| `c` | Copy |
| `m` | Move |
| `y` | Copy to clipboard |
| `x` | Cut to clipboard |
| `p` | Paste |
| `q` | Close Neo-tree |
| `R` | Refresh |
| `H` | Toggle hidden files |
| `/` | Fuzzy finder |
| `.` | Set as root |
| `?` | Show help |
| `<` / `>` | Previous/next source |

### Visual Mode
| Key | Action |
|-----|--------|
| `<` / `>` | Indent, keep selection |
| `p` | Paste without overwriting yank |

---

## Tmux

Prefix = `C-Space`

### General
| Key | Action |
|-----|--------|
| `C-Space` | Prefix |
| `r` | Reload tmux config |
| `P` | Paste buffer |

### Panes
| Key | Action |
|-----|--------|
| `Prefix + \` | Split horizontally (horizontal, same CWD) |
| `Prefix + -` | Split vertically (same CWD) |
| `Prefix + h/j/k/l` | Resize pane by 5 |
| `Prefix + C-h/j/k/l` | Navigate panes (vim-tmux-navigator) |

### Windows
| Key | Action |
|-----|--------|
| `Prefix + c` | New window (same CWD) |
| `Prefix + n/p` | Next/previous window |
| `Prefix + <number>` | Switch to window by number |

### Copy Mode (Vi)
| Key | Action |
|-----|--------|
| `Prefix + [` | Enter copy mode |
| `v` | Begin selection |
| `y` | Yank selection to clipboard |
| `Prefix + P` | Paste yanked buffer |

### Tmux Plugins
- **tmux-resurrect** — `Prefix + C-s` save, `Prefix + C-r` restore
- **tmux-continuum** — auto-saves every 15 minutes, auto-restores on launch
- **vim-tmux-navigator** — seamless pane navigation between tmux and nvim

---

## Shell (Zsh)

| Key | Action |
|-----|--------|
| `z <fragment>` | Jump to directory (zoxide) |
| `z -l` | List zoxide database |
| `zi` | Interactive zoxide picker |
| `Ctrl+R` | Search shell history (atuin) |
| `ls` | `lsd` with icons |
| `l` | `ls -l` |
| `la` | `ls -a` |
| `lla` | `ls -la` |
| `lt` | `ls --tree` |
| Up/Down | History autosuggestions |
| Tab | Autocomplete (zsh-autocomplete) |
