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

vim.keymap.set("i", "jk", "<Esc>", { noremap = true })

--- Custom tab remapping - switch shift to ctrl
vim.keymap.set("n", "H", "<C-w>h")
vim.keymap.set("n", "L", "<C-w>l")

vim.keymap.set("n", "<C-h>", "[b")
vim.keymap.set("n", "<C-l>", "]b")

--- Custom delete remapping - don't store into register
vim.keymap.set({ "n", "v" }, "dd", '"_dd')
vim.keymap.set({ "n", "v" }, "D", '"_D')
vim.keymap.set({ "n", "v" }, "x", '"_x')

vim.keymap.set({ "n", "v" }, "<leader>d", "d")

--- ThePrimeAgen keymaps from video
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
