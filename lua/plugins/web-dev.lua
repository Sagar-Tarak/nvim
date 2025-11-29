return {

  -- ======================================================
  -- 🌐 Web Dev Essentials (React, Next.js, Node.js)
  -- ======================================================

  -- import-cost (bundle size)
  {
    "yardnsm/vim-import-cost",
    build = "npm install --production",
  },   -- ← FIXED (added comma)

  -- Tailwind colors in autocomplete
  {
    "roobert/tailwindcss-colorizer-cmp.nvim",
    config = function()
      require("tailwindcss-colorizer-cmp").setup()
    end,
  },

  -- TS / JS / JSX refactoring
  {
    "ckolkey/ts-node-action",
    dependencies = { "nvim-treesitter" },
    config = function()
      require("ts-node-action").setup({})
    end,
  },


  -- ======================================================
  -- ⚛️ React / JSX / TSX Enhancements
  -- ======================================================

  -- JSX/TSX syntax improvements
  { "maxmellon/vim-jsx-pretty" },

  -- Auto-close JSX tags <div></div>
  {
    "windwp/nvim-ts-autotag",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
    config = true,
  },

  -- Better TypeScript/JavaScript comment handling
  { "folke/ts-comments.nvim", config = true },


  -- ======================================================
  -- 🎨 Tailwind & CSS Tools
  -- ======================================================

  -- Extra Tailwind helpers (sorting, colors, hover)
  {
    "luckasRanarison/tailwind-tools.nvim",
    config = true,
  },


  -- ======================================================
  -- 🧠 Productivity Tools
  -- ======================================================

  -- Auto pairs () {} "" etc.
  { "windwp/nvim-autopairs", config = true },

  -- Comment toggles (gcc, gc)
  { "numToStr/Comment.nvim", config = true },


  -- ======================================================
  -- 🔍 Navigation & Project Tools
  -- ======================================================

  -- Telescope file browser
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
  },

  -- Harpoon 2 (jump between files)
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
  },


  -- ======================================================
  -- 🧹 Linting & Formatting
  -- ======================================================

  -- (Commented out plugins if not needed)
  -- { "mfussenegger/nvim-lint" },


  -- ======================================================
  -- 🧪 Git Tools
  -- ======================================================

  -- { "lewis6991/gitsigns.nvim", config = true },
  -- { "sindrets/diffview.nvim" },
  -- {
  --   "kdheepak/lazygit.nvim",
  --   cmd = "LazyGit",
  -- },


  -- ======================================================
  -- 🐞 Debugging
  -- ======================================================

  { "mfussenegger/nvim-dap" },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },


  -- ======================================================
  -- 🌈 UI Enhancements
  -- ======================================================

  -- Icon support in completion menu
  { "onsails/lspkind.nvim" },

}
