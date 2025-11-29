return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,

    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          mason = true,
          neotree = true,
          treesitter = true,
          cmp = true,
          gitsigns = true,
          telescope = true,
          which_key = true,
          lsp_trouble = true,
          mini = true,
        },
      })

      -- Apply theme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
