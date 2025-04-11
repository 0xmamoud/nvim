require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Function to show hover documentation
local function show_hover()
  vim.lsp.buf.hover()
end

-- Function to show diagnostics
local function show_diagnostics()
  vim.diagnostic.open_float(nil, { focusable = false })
end

-- Mappings for showing hover and diagnostics
map("n", "<leader>sd", show_hover, { desc = "Show hover documentation" }) -- Hover documentation
map("n", "<leader>se", show_diagnostics, { desc = "Show diagnostics" }) -- Show diagnostics

-- Function to move lines up and down
map("n", "_", "ddkP")
map("n", "-", "ddp")
