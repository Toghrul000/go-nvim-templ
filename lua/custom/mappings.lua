---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    -- format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    -- update with Ctrl + S
    ["<C-S>"] = { ":update<CR>", "save file if modified" },
  },
  i = {
    -- update with Ctrl + S in insert mode
    ["<C-S>"] = { "<Esc>:update<CR>gi", "save file if modified and return to insert mode" },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
