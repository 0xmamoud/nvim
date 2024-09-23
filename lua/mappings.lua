require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Copilot mappings
map("i", "<C-l>", function()
  vim.fn.feedkeys(vim.fn["copilot#Accept"] "<CR>", "")
end, { desc = "Copilot accept" })

-- Function to toggle Copilot on and off
local copilot_enabled = true

local function toggle_copilot()
  if copilot_enabled then
    vim.cmd "Copilot disable"
    copilot_enabled = false
    print "Copilot disabled"
  else
    vim.cmd "Copilot enable"
    copilot_enabled = true
    print "Copilot enabled"
  end
end

-- Mapping to toggle Copilot
map("n", "<leader>tc", toggle_copilot, { desc = "Toggle Copilot" })
-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
