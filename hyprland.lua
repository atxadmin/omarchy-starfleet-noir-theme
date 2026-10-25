-- Starfleet Noir: 5px gaps, 2px magenta->cyan active border.
-- Hyprland has one border_size for all windows; the inactive 1px look is
-- approximated by the dim slate (#444a73) colour.
local active_border_color = { colors = { "rgba(bb9af7ff)", "rgba(7dcfffff)" }, angle = 45 }
local inactive_border_color = "rgba(444a73aa)"

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 5,
    border_size = 2,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },
  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
  },
})
