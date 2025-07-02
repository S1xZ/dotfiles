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
}
