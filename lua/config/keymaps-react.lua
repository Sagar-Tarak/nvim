local map = vim.keymap.set

-- ================================
-- 📦 1. LSP (code intelligence)
-- ================================

-- Hover documentation (like VS Code "Peek")
map("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })

-- Go to definition
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition" })

-- References
map("n", "gr", vim.lsp.buf.references, { desc = "References" })

-- Rename symbol
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol" })

-- Code actions (fixes, refactors)
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action" })


-- ================================
-- 🧠 2. Navigation & Files
-- ================================

-- Open file explorer
map("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle File Explorer" })

-- Search files (like VS Code Ctrl+P)
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })

-- Search text in project
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })


-- ================================
-- ⚛️ 3. Emmet for JSX
-- ================================
-- Trigger Emmet expand (same as VS Code)
map("i", "<C-y>", "<Plug>(emmet-expand-abbrev)", { desc = "Emmet Expand" })


-- ================================
-- 🎨 4. Tailwind Class Sorting (optional)
-- ================================
-- run Prettier/Tailwind sort
map("n", "<leader>tw", "<cmd>!npx tailwindcss -i input.css -o output.css<cr>", { desc = "Tailwind Sort Classes" })


-- ================================
-- 🔀 5. ts-node-action (refactoring)
-- ================================
map("n", "<leader>na", "<cmd>NodeAction<cr>", { desc = "TS Node Action" })


-- ================================
-- 🧹 6. Format Code (Prettier)
-- ================================
map("n", "<leader>fm", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format with LSP/Prettier" })
