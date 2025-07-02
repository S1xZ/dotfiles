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
              validate = true,
              schemaStore = {
                enable = false,
                url = "",
              },
              schemas = {
                ["https://raw.githubusercontent.com/ansible/ansible-lint/refs/heads/main/src/ansiblelint/schemas/ansible.json"] = "ansible/*.yml",
              },
              customTags = { "!reference sequence", "!vault scalar" },
              format = {
                bracketSpacing = true,
              },
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
