local HOME = os.getenv("HOME")
return {
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  {
    "mfussenegger/nvim-lint",
    optional = true,
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.config/.markdownlint-cli2.yaml", "--" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        ["markdownlint-cli2"] = {
          args = { "--config", HOME .. "/.config/.markdownlint-cli2.yaml", "--" },
        },
      },
      formatters_by_ft = {
        ["markdown"] = { "markdownlint-cli2" },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
    },
  },
}
