return {
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "nvim-treesitter/nvim-treesitter",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("go").setup()
    end,
    ft = { "go", "gomod" },
  },
}
