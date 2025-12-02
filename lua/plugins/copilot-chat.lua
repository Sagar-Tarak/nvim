return {
  "CopilotC-Nvim/CopilotChat.nvim",
  branch = "canary", -- important for Copilot Pro features
  dependencies = {
    "zbirenbaum/copilot.lua",  -- NOT github/copilot.vim
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("CopilotChat").setup({
      -- optional but recommended settings
      model = "gpt-4o",  -- Copilot Pro model
      use_file_types = true,
    })
  end,
}
