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
        -- Clang
        -- Ensure mason installs the server
        clangd = {
          keys = {
            { "<leader>ch", "<cmd>ClangdSwitchSourceHeader<cr>", desc = "Switch Source/Header (C/C++)" },
          },
          root_dir = function(fname)
            return require("lspconfig.util").root_pattern(
              "Makefile",
              "configure.ac",
              "configure.in",
              "config.h.in",
              "meson.build",
              "meson_options.txt",
              "build.ninja"
            )(fname) or require("lspconfig.util").root_pattern("compile_commands.json", "compile_flags.txt")(
              fname
            ) or vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1])
          end,
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed",
            "--function-arg-placeholders",
            "--fallback-style=llvm",
          },
          init_options = {
            usePlaceholders = true,
            completeUnimported = true,
            clangdFileStatus = true,
          },
        },

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
    },

    setup = {
      -- LazyVim Magic for Clang
      clangd = function(_, opts)
        local clangd_ext_opts = LazyVim.opts("clangd_extensions.nvim")
        require("clangd_extensions").setup(vim.tbl_deep_extend("force", clangd_ext_opts or {}, { server = opts }))
        return false
      end,
    },
  },
}
