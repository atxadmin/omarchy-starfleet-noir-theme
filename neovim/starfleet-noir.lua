-- Starfleet Noir for Neovim (LazyVim). Based on tokyonight-night, recoloured.
local c = {
  void = "#0a0b10", slate = "#12141a", panel = "#1a1d27", sel = "#292e42",
  line = "#444a73", dim = "#565f89", fg = "#a0a8cd", bright = "#c0caf5",
  magenta = "#bb9af7", cyan = "#7dcfff", orange = "#ff9e64", lavender = "#9d7cd8",
  red = "#f7768e", green = "#9ece6a",
}
return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      on_colors = function(col)
        col.bg = c.slate; col.bg_dark = c.void; col.bg_float = c.void
        col.bg_sidebar = c.void; col.bg_statusline = c.void
        col.fg = c.fg; col.border = c.line
      end,
      on_highlights = function(hl, _)
        hl.CursorLineNr = { fg = c.orange, bold = true }       -- LCARS amber readout
        hl.LineNr = { fg = c.dim }
        hl.WinSeparator = { fg = c.line }
        hl.FloatBorder = { fg = c.magenta }
        hl.Visual = { bg = c.sel }
        hl.Search = { bg = c.orange, fg = c.void }
        hl.IncSearch = { bg = c.cyan, fg = c.void }
        hl.Function = { fg = c.cyan }
        hl.Keyword = { fg = c.magenta, italic = true }
        hl.String = { fg = c.green }
        hl.Constant = { fg = c.orange }
        hl.Type = { fg = c.lavender }
        hl.DiagnosticWarn = { fg = c.orange }
        hl.DiagnosticInfo = { fg = c.cyan }
      end,
    },
  },
  { "LazyVim/LazyVim", opts = { colorscheme = "tokyonight-night" } },
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, o)
      local t = {}
      for _, m in ipairs({ "normal", "insert", "visual", "replace", "command", "inactive" }) do
        local a = ({ normal = c.magenta, insert = c.cyan, visual = c.orange, replace = c.red, command = c.lavender, inactive = c.line })[m]
        t[m] = {
          a = { bg = a, fg = c.void, gui = "bold" },
          b = { bg = c.sel, fg = c.fg },
          c = { bg = c.void, fg = c.fg },
        }
      end
      o.options = o.options or {}
      o.options.theme = t
      o.options.section_separators = { left = "", right = "" }
      o.options.component_separators = ""
    end,
  },
}
