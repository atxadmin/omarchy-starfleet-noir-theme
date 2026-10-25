# Starfleet Noir

A dark-only Omarchy theme: LCARS meets early Cylon, tuned for late-night focus. Tokyo Night adapted for sci-fi.

| Role | Color |
|---|---|
| Void | `#0a0b10` |
| Slate (windows) | `#12141a` |
| Text | `#a0a8cd` |
| Magenta (primary) | `#bb9af7` |
| Cyan (active) | `#7dcfff` |
| Amber (warning) | `#ff9e64` |
| Lavender (inert) | `#9d7cd8` |
| Inactive border | `#444a73` |

## Install

```
omarchy theme install https://github.com/atxadmin/omarchy-starfleet-noir-theme
omarchy theme set starfleet-noir
```

Note: Omarchy ignores `hyprland.lua`, `ghostty.conf` and `neovim.lua` for themes installed from a git repo (security). To get the full look (gradient border, 5px gaps, 90% Ghostty opacity, Neovim), copy the folder instead:

```
git clone https://github.com/atxadmin/omarchy-starfleet-noir-theme ~/.config/omarchy/themes/starfleet-noir
rm -rf ~/.config/omarchy/themes/starfleet-noir/.git
omarchy theme set starfleet-noir
```

## Contents

- `colors.toml`: palette, drives Btop, the shell bar and other generated configs
- `hyprland.lua`: 2px magenta to cyan border, 5px gaps
- `ghostty.conf`: JetBrainsMono Nerd Font, 90% opacity, 16-color palette
- `neovim.lua`: tokyonight-night recolor plus Lualine theme
- `waybar/style.css`: optional, for Waybar setups (Omarchy 4 uses its own shell)
- `backgrounds/`: four wallpapers

Hyprland has a single border size, so the inactive border is 2px, dimmed to slate.
