-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
--
-- lua/config/autocmds.lua
local function p4_checkout(buf)
  local file = vim.api.nvim_buf_get_name(buf)
  local result = vim.fn.system({ "p4", "edit", file })

  if vim.v.shell_error ~= 0 then
    vim.notify("p4 edit FAILED: " .. result, vim.log.levels.ERROR)
    return
  end

  vim.bo[buf].readonly = false
  vim.bo[buf].modifiable = true
  vim.notify("p4 edit: " .. vim.fn.fnamemodify(file, ":t"), vim.log.levels.INFO)
end

vim.api.nvim_create_autocmd("FileChangedRO", {
  pattern = "*",
  callback = function(args)
    p4_checkout(args.buf)
  end,
})

-- safety net: if FileChangedRO somehow didn't fire (e.g. buffer was
-- already marked modified before readonly was noticed), catch it here too
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    if vim.bo[args.buf].readonly then
      p4_checkout(args.buf)
    end
  end,
})
