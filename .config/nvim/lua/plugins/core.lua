return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = {},
  keys = {
    { "-", mode = { "n" }, "<CMD>Oil<CR>", { desc = "Open parent directory" } },
  },
}
