-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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
