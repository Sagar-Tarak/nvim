-- ~/.config/nvim/lua/plugins/mason.lua
return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "lua-language-server",
      "stylua",
      "prettier",
      "eslint_d",
      "tsserver",
      "tailwindcss-language-server",
      "html-lsp",
    },
  },
}
