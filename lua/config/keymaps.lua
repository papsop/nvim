-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>pe", function()
  vim.fn.system({ "p4", "edit", vim.fn.expand("%:p") })
  vim.cmd("edit!")
end, { desc = "P4 checkout file" })

vim.keymap.set("n", "<leader>pa", function()
  vim.fn.system({ "p4", "add", vim.fn.expand("%:p") })
end, { desc = "P4 add file" })

vim.keymap.set("n", "<leader>pr", function()
  vim.fn.system({ "p4", "revert", vim.fn.expand("%:p") })
  vim.cmd("edit!")
end, { desc = "P4 revert file" })
