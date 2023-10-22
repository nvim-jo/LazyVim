---@class lazyvim.util.which

local Keys = require('which-key.keys')

---@class LazyKeys
local M = {}

local loaded = false
local scheduled = false

local function schedule_load()
    if scheduled then
        return
    end
    scheduled = true
    if vim.v.vim_did_enter == 0 then
        vim.cmd([[au VimEnter * ++once lua require("which-key").load()]])
    else
        pcall(M.load) -- Add error handling with pcall
    end
end

local queue = {}

function M.register(mappings, opts)
    schedule_load()
    if loaded then
        pcall(Keys.register, mappings, opts) -- Add error handling with pcall
        pcall(Keys.update)                 -- Add error handling with pcall
    else
        table.insert(queue, { mappings, opts })
    end
end

function M.load()
    if loaded then
        return
    end
    require("which-key.plugins").setup()
    require("which-key.colors").setup()
    Keys.register({}, { prefix = "<leader>", mode = "n" })
    Keys.register({}, { prefix = "<leader>", mode = "v" })
    Keys.setup()

    for _, reg in pairs(queue) do
        local opts = reg[2] or {}
        opts.update = false
        pcall(Keys.register, reg[1], opts) -- Add error handling with pcall
    end

    pcall(Keys.update) -- Add error handling with pcall
    queue = {}
    loaded = true
end

return M