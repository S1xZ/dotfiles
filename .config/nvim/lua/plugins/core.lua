return {
  "stevearc/oil.nvim",
  cmd = "Oil",
  --dependencies = { { "echasnovski/mini.icons", opts = {} } },
  opts = { default_file_explorer = true, view_options = {
    show_hidden = true,
  } },
  keys = {
    { "-", mode = { "n" }, "<CMD>Oil<CR>", { desc = "Open parent directory" } },
  },
}
