return {
  {
    "folke/which-key.nvim",
    opts = {
      preset = "modern", -- better grouping
      icons = {
        breadcrumb = "»", -- menu navigation
        separator = "➜",
        group = "+", -- group keymap label prefix
      },
      win = {
        border = "rounded",
      },
    },
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      -- CUSTOM MENUS HERE
      wk.add({
        -- React/JS Keymaps
        { "<leader>r", group = "React / JS" },
        { "<leader>rc", desc = "Create Component" },
        { "<leader>rh", desc = "Create Hook" },
        { "<leader>ru", desc = "Use Snippet" },

        -- Copilot / AI Menu
        { "<leader>c", group = "Copilot / AI" },
        { "<leader>ca", desc = "Ask Copilot" },
        { "<leader>cc", desc = "Open Copilot Chat" },
        { "<leader>ce", desc = "Explain code" },
        { "<leader>cf", desc = "Fix code" },
        { "<leader>cr", desc = "Refactor code" },

        -- File actions
        { "<leader>f", group = "Files" },
        { "<leader>ff", desc = "Find File" },
        { "<leader>fs", desc = "Save File" },

        -- Git menu
        { "<leader>g", group = "Git" },
        { "<leader>gg", desc = "Open LazyGit" },
        { "<leader>gd", desc = "Diff View" },
      })
    end,
  },
}
