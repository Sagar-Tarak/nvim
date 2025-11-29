return {
  "github/copilot.vim",
  config = function()
    vim.g.copilot_assume_mapped = true
    vim.g.copilot_no_tab_map = true

    -- Keymaps
    vim.keymap.set("i", "<C-l>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
    vim.keymap.set("i", "<C-j>", "<Plug>(copilot-next)")
    vim.keymap.set("i", "<C-k>", "<Plug>(copilot-previous)")
    vim.keymap.set("i", "<C-h>", "<Plug>(copilot-dismiss)")
  end,
}
