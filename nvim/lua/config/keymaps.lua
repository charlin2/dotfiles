-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Cycle through buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = "Next buffer" })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = "Previous buffer" })

-- Open terminal on right vertical split, nvim root dir
vim.keymap.set("n", "<leader>ft", function()
  Snacks.terminal(nil, {
    cwd = LazyVim.root(),
    win = {
      position = "right",
      split = "right",
    },
    auto_insert = true,
  })
end, { desc = "Terminal right" })
