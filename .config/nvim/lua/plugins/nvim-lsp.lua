return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      ensure_installed = {
        "ansible-language-server",
        "gitlab-ci-ls",
      },
      inlay_hints = { enabled = false },
      servers = {
        -- YAML
        yamlls = {
          settings = {
            yaml = {
              customTags = { "!reference sequence" },
            },
          },
          flags = {
            debounce_text_changes = 150,
          },
        },
      },
      setup = {
        -- example to setup with typescript.nvim
        -- tsserver = function(_, opts)
        --   require("typescript").setup({ server = opts })
        --   return true
        -- end,
        -- Specify * to use this function as a fallback for any server
        -- ["*"] = function(server, opts) end,
      },
    },
  },
}
