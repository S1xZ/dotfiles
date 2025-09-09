return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  opts = {
    menu = {
      width = vim.api.nvim_win_get_width(0) - 4,
    },
    settings = {
      save_on_toggle = true,
    },
  },
  keys = function()
    local keys = {
      {
        "<leader>H",
        function()
          require("harpoon"):list():add()
        end,
        desc = "Harpoon File",
      },
      {
        "<leader>h",
        function()
          local harpoon = require("harpoon")
          local fzf = require("fzf-lua")
          local list = harpoon:list()
          local items = {}
          for i = 1, list:length() do
            local item = list:get(i)
            if item and item.value and item.value ~= "" then
              table.insert(items, string.format("%d: %s", i, item.value)) -- skip empty lines if deletion didn't functional properly
            end
          end
          fzf.fzf_exec(items, {
            prompt = "Harpoon Files> ",
            winopts = {
              width = 0.4,
              height = 0.4,
            },

            fzf_opts = {
              ["--preview"] = "bat --style=numbers --color=always $(echo {} | sed 's/^\\([0-9]\\+\\): //')",
            },
            actions = {
              ["default"] = function(selected)
                local idx = tonumber(selected[1]:match("^(%d+):"))
                if idx then
                  list:select(idx)
                end
              end,
              ["ctrl-d"] = function(selected)
                local idx = tonumber(selected[1]:match("^(%d+):"))
                if idx then
                  local item = list:get(idx)
                  list:remove(item)
                end
              end,
            },
          })
        end,
        desc = "Harpoon FZF Menu",
      },
    }

    for i = 1, 5 do
      table.insert(keys, {
        "<leader>" .. i,
        function()
          require("harpoon"):list():select(i)
        end,
        desc = "Harpoon to File " .. i,
      })
    end
    return keys
  end,
}
