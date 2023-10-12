local Util = require("lazyvim.util")

---@class lazyvim.util.icon
local M = {}

function M.get_icon(kind, padding, no_fallback)
    if not vim.g.icons_enabled and no_fallback then return "" end
    local icon_pack = vim.g.icons_enabled and "icons" or "text_icons"
    if not M[icon_pack] then
        M.icons = require "lazyvim.icons.nerd_font"
        M.text_icons = require "lazyvim.icons.text"
    end
    local icon = M[icon_pack] and M[icon_pack][kind]
    return icon and icon .. string.rep(" ", padding or 0) or ""
end

return M
