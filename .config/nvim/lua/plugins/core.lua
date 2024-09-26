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
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {},
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  },
}
