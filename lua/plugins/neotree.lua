return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },

    config = function()
      require("neo-tree").setup({
        close_if_last_window = true,
        popup_border_style = "rounded",

        enable_git_status = true,
        enable_diagnostics = true,

        filesystem = {
          filtered_items = {
            visible = true, -- show hidden files
            hide_dotfiles = false,
            hide_gitignored = false,
          },

          follow_current_file = {
            enabled = true,
          },

          use_libuv_file_watcher = true,
        },

        window = {
          width = 32,
          mappings = {
            ["<space>"] = "toggle_node",
            ["<cr>"] = "open",
            ["l"] = "open",
            ["h"] = "close_node",
            ["a"] = "add",
            ["d"] = "delete",
            ["r"] = "rename",
            ["c"] = "copy",
            ["m"] = "move",
          },
        },
      })

      -- 💡 KEYMAP: Toggle Neo-tree (Left Sidebar)
      vim.keymap.set("n", "<leader>e", ":Neotree toggle left<CR>", { desc = "Toggle File Explorer" })
    end,
  },
}
