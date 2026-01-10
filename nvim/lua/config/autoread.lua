-- Automatically refresh buffer when edited by external sources
vim.opt.autoread = true
vim.opt.updatetime = 250

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter", "CursorHold", "CursorHoldI" }, {
  command = "checktime",
})
