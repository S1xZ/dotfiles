-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  group = vim.api.nvim_create_augroup("Color", {}),
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "LspReferenceRead", { fg = "#FF0000" })
    vim.api.nvim_set_hl(0, "LspReferenceWrite", { fg = "#FF0000" })
    vim.api.nvim_set_hl(0, "LspReferenceText", { fg = "#FF0000" })
  end,
})
