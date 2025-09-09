return {
  {
    "stevearc/oil.nvim",
    cmd = "Oil",
    lazy = false,
    opts = {
      default_file_explorer = true,
      view_options = {
        show_hidden = true,
      },
    },
    keys = {
      { "-", mode = { "n" }, "<CMD>Oil<CR>", { desc = "Open parent directory" } },
    },
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
  },
}
