return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
      --------------------------------------------------------------------
      -- 🧠 LSP Name Display
      --------------------------------------------------------------------
      local function lsp_clients()
        local clients = vim.lsp.get_active_clients({ bufnr = 0 })
        if #clients == 0 then
          return "  No LSP"
        end
        local names = {}
        for _, client in pairs(clients) do
          table.insert(names, client.name)
        end
        return "  " .. table.concat(names, ", ")
      end

      --------------------------------------------------------------------
      -- 🤖 Copilot Status
      --------------------------------------------------------------------
      local function copilot_status()
        local clients = vim.lsp.get_active_clients()
        for _, client in ipairs(clients) do
          if client.name == "copilot" then
            return "  ON"
          end
        end
        return "  OFF"
      end

      --------------------------------------------------------------------
      -- 🟦 Prettier / ESLint indicator
      --------------------------------------------------------------------
      local function formatter_status()
        local buf = vim.api.nvim_get_current_buf()
        local ft = vim.bo[buf].filetype

        local prettier_filetypes = {
          "javascript", "javascriptreact",
          "typescript", "typescriptreact",
          "json", "css", "html", "markdown",
        }

        for _, t in ipairs(prettier_filetypes) do
          if t == ft then return " Prettier" end
        end

        return ""
      end

      --------------------------------------------------------------------
      -- 🧭 Breadcrumbs for file path (VS Code style)
      --------------------------------------------------------------------
      local function breadcrumb()
        local path = vim.fn.expand("%:~:.:h")
        local file = vim.fn.expand("%:t")

        if path == "." then return "󰝰 " .. file end

        return "󰝰 " .. path .. "/" .. file
      end

      --------------------------------------------------------------------
      -- 🎨 Final Lualine Setup
      --------------------------------------------------------------------
      require("lualine").setup({
        options = {
          theme = "auto",
          globalstatus = true,
          section_separators = { "", "" },
          component_separators = { "", "" },
          icons_enabled = true,
        },

        sections = {

          ----------------------------------------------------
          --  LEFT SIDE (MODE + GIT)
          ----------------------------------------------------
          lualine_a = {
            { "mode", icon = "", upper = true },
          },

          lualine_b = {
            { "branch", icon = "" },
            {
              "diff",
              symbols = {
                added = " ",
                modified = " ",
                removed = " ",
              },
            },
          },

          ----------------------------------------------------
          --  CENTER (FILE + LSP + ERRORS)
          ----------------------------------------------------
          lualine_c = {
            { breadcrumb },
            { lsp_clients },
          },

          ----------------------------------------------------
          --  RIGHT SIDE (DIAGNOSTICS + AI + FILETYPE)
          ----------------------------------------------------
          lualine_x = {
            { "diagnostics" },
            { copilot_status },
            { formatter_status },
            { "filetype", icon_only = false },
          },

          lualine_y = {
            { "filesize" },
            { "encoding" },
            { "fileformat" },
          },

          lualine_z = {
            { "location" }, -- ln/col
          },
        },
      })
    end,
  },
}
