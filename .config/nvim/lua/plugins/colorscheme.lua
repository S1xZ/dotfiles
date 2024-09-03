return {

  { "catppuccin/nvim", lazy = true, opts = { flavour = "mocha" } },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      document_highlight = {
        enabled = false,
      },
    },
  },
}
